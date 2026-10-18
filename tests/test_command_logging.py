import contextlib
import io
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

import studio_core


class CommandLoggingTests(unittest.TestCase):
    def test_server_publishes_a_single_tool_line_without_waiting_for_another_line(self):
        import studio_server
        handle = unittest.mock.Mock()
        writer = studio_server._ProcessLogWriter(handle)
        writer.write('I: Baksmaling classes2.dex...\n')
        handle.write.assert_called_once_with('I: Baksmaling classes2.dex...\n')
        handle.flush.assert_called_once()

    def test_real_worker_pipe_reaches_log_file_while_tool_is_still_running(self):
        import studio_server
        with tempfile.TemporaryDirectory() as directory:
            log_path = Path(directory) / 'build.log'
            tool = (
                "import pathlib,time,sys; log=pathlib.Path(sys.argv[1]); "
                "print('LIVE_TOOL_OUTPUT',flush=True); deadline=time.monotonic()+3\n"
                "while 'LIVE_TOOL_OUTPUT' not in log.read_text(encoding='utf-8').splitlines() "
                "and time.monotonic()<deadline: time.sleep(0.01)\n"
                "sys.exit(0 if 'LIVE_TOOL_OUTPUT' in log.read_text(encoding='utf-8').splitlines() else 9)"
            )
            command = [sys.executable, '-u', '-c', tool, str(log_path)]
            worker = 'import studio_core; studio_core._run_command(' + repr(command) + ')'
            with log_path.open('w', encoding='utf-8') as log, subprocess.Popen(
                [sys.executable, '-u', '-c', worker], cwd=studio_core.ROOT_DIR,
                stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                text=True, encoding='utf-8', errors='replace',
            ) as process:
                writer = studio_server._ProcessLogWriter(log)
                for line in process.stdout:
                    writer.write(line)
                writer.flush()
                self.assertEqual(process.wait(timeout=10), 0)
            self.assertIn('LIVE_TOOL_OUTPUT', log_path.read_text(encoding='utf-8').splitlines())

    def run_captured(self, program, **kwargs):
        output = io.StringIO()
        with contextlib.redirect_stdout(output):
            studio_core._run_command([sys.executable, '-X', 'utf8', '-u', '-c', program], **kwargs)
        return output.getvalue()

    def test_success_output_and_stderr_are_written_even_with_legacy_quiet_setting(self):
        with patch.dict(os.environ, {'WUKONG_VERBOSE_BUILD': '0'}):
            output = self.run_captured("import sys; print('decoded successfully'); print('tool warning', file=sys.stderr)")
        self.assertIn('decoded successfully', output)
        self.assertIn('tool warning', output)
        self.assertIn('exit=0', output)

    def test_explicit_verbose_false_does_not_discard_tool_output(self):
        output = self.run_captured("print('keep this output')", verbose=False)
        self.assertIn('keep this output', output)

    def test_output_arrives_before_the_child_exits(self):
        with tempfile.TemporaryDirectory() as directory:
            gate = Path(directory) / 'log-observed'

            class LiveSink(io.StringIO):
                def write(self, text):
                    if 'CHILD_READY' in text and not text.startswith('[*] CMD:'):
                        gate.touch()
                    return super().write(text)

            output = LiveSink()
            program = (
                "import pathlib,time,sys; gate=pathlib.Path(sys.argv[1]); "
                "print('CHILD_READY',flush=True); deadline=time.monotonic()+3\n"
                "while not gate.exists() and time.monotonic()<deadline: time.sleep(0.01)\n"
                "print('CHILD_FINISHED' if gate.exists() else 'LOG_NOT_STREAMED'); "
                "sys.exit(0 if gate.exists() else 9)"
            )
            with contextlib.redirect_stdout(output):
                studio_core._run_command([sys.executable, '-u', '-c', program, str(gate)])
            self.assertTrue(gate.exists())
            self.assertIn('CHILD_FINISHED', output.getvalue())

    def test_failure_keeps_output_and_exit_status(self):
        output = io.StringIO()
        with contextlib.redirect_stdout(output), self.assertRaisesRegex(studio_core.StudioError, 'exit code 7'):
            studio_core._run_command([sys.executable, '-u', '-c', "print('specific tool failure'); raise SystemExit(7)"])
        self.assertIn('specific tool failure', output.getvalue())
        self.assertIn('exit=7', output.getvalue())

    def test_utf8_progress_and_unterminated_last_line_are_retained(self):
        output = self.run_captured("import sys; sys.stdout.write('Đang vá\\r50%\\rHoàn tất'); sys.stdout.flush()")
        self.assertIn('Đang vá', output)
        self.assertIn('50%', output)
        self.assertIn('Hoàn tất', output)

    def test_very_long_tool_output_is_not_truncated(self):
        output = self.run_captured("print('X' * 100000)")
        self.assertIn('X' * 100000, output)


if __name__ == '__main__':
    unittest.main()
