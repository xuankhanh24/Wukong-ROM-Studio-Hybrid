from __future__ import annotations

from contextlib import redirect_stdout
import io
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

from tools.capture_build_log import capture
from wukong.build_logging import LogRedactor


class BuildLoggingTests(unittest.TestCase):
    def test_capture_both_channels_redacts_artifact_and_preserves_exit_code(self):
        with tempfile.TemporaryDirectory() as directory:
            script = Path(directory, 'fail.py')
            script.write_text(
                "import os, sys\n"
                "print('stdout: ' + os.environ['WUKONG_TEST_TOKEN'], flush=True)\n"
                "print('stderr: OSError: Invalid cross-device link', file=sys.stderr, flush=True)\n"
                "print('https://user:password@example.test/rom.zip?token=signed-secret', flush=True)\n"
                "sys.exit(7)\n", encoding='utf-8')
            log = Path(directory, 'logs', 'build.log')
            output = io.StringIO()
            with patch.dict(os.environ, {'WUKONG_TEST_TOKEN': 'private-secret-token'}), redirect_stdout(output):
                code = capture([sys.executable, str(script)], log)
            self.assertEqual(code, 7)
            artifact = log.read_text(encoding='utf-8')
            self.assertEqual(artifact, output.getvalue())
            self.assertIn('stdout:', artifact)
            self.assertIn('Invalid cross-device link', artifact)
            self.assertNotIn('private-secret-token', artifact)
            self.assertNotIn('signed-secret', artifact)
            self.assertNotIn('user:password', artifact)

    def test_successful_capture_returns_zero(self):
        with tempfile.TemporaryDirectory() as directory, redirect_stdout(io.StringIO()):
            self.assertEqual(capture([sys.executable, '-c', "print('done')"], Path(directory, 'build.log')), 0)

    def test_cli_propagates_failure_and_writes_utf8_log(self):
        with tempfile.TemporaryDirectory() as directory:
            log = Path(directory, 'build.log')
            result = subprocess.run(
                [sys.executable, '-m', 'tools.capture_build_log', '--output', str(log), '--',
                 sys.executable, '-c', "import sys; print('Lỗi patch'); sys.exit(9)"],
                env=dict(os.environ, PYTHONIOENCODING='utf-8'),
                capture_output=True, encoding='utf-8', errors='replace')
            self.assertEqual(result.returncode, 9)
            self.assertIn('Lỗi patch', result.stdout)
            self.assertIn('Lỗi patch', log.read_text(encoding='utf-8'))

    def test_command_failure_keeps_bounded_tail_without_full_capture(self):
        from wukong.patch_tools import run_command
        with redirect_stdout(io.StringIO()), self.assertRaises(subprocess.CalledProcessError) as caught:
            run_command([sys.executable, '-c',
                         "import sys; [print('x'*3000) for _ in range(80)]; print('ROOT CAUSE'); sys.exit(1)"],
                        check=True)
        self.assertIsNone(caught.exception.output)
        self.assertIn('ROOT CAUSE', caught.exception.diagnostic_tail)
        self.assertLessEqual(len(caught.exception.diagnostic_tail), 64 * 2000)

    def test_authorization_and_signed_url_are_redacted(self):
        text = LogRedactor({})(
            'Authorization: Bearer unknown-secret\nhttps://host.test/a?X-Amz-Signature=secret#fragment')
        self.assertNotIn('unknown-secret', text)
        self.assertNotIn('Signature', text)
        self.assertNotIn('fragment', text)

    def test_zip_header_warnings_are_summarized_without_changing_capture(self):
        from wukong.patch_tools import run_command
        warning = '10-20 06:28:10.842  4388  4388 W zip     : WARNING: header mismatch'
        console = io.StringIO()
        with redirect_stdout(console):
            result = run_command([
                sys.executable, '-c',
                "import sys; print('aligning'); "
                f"[print({warning!r}, file=sys.stderr) for _ in range(11)]; "
                "print('Verification successful')",
            ], capture_output=True, text=True)
        displayed = console.getvalue().split('\n', 1)[1]
        self.assertNotIn(warning, displayed)
        self.assertEqual(displayed.count('ZIP header mismatch'), 1)
        self.assertIn('11 occurrences', displayed)
        self.assertIn('Verification successful', displayed)
        self.assertEqual(result.stderr.count(warning), 11)
        self.assertEqual(result.returncode, 0)

    def test_zip_summary_preserves_failure_and_unrelated_warnings(self):
        from wukong.patch_tools import run_command
        console = io.StringIO()
        with redirect_stdout(console), self.assertRaises(subprocess.CalledProcessError) as caught:
            run_command([
                sys.executable, '-c',
                "import sys; print('WARNING: other issue', file=sys.stderr); "
                "[print('WARNING: header mismatch', file=sys.stderr) for _ in range(3)]; "
                "print('ERROR: invalid archive', file=sys.stderr); sys.exit(7)",
            ], capture_output=True, text=True, check=True)
        displayed = console.getvalue().split('\n', 1)[1]
        self.assertIn('3 occurrences', displayed)
        self.assertIn('WARNING: other issue', displayed)
        self.assertIn('ERROR: invalid archive', displayed)
        self.assertEqual(caught.exception.returncode, 7)
        self.assertEqual(caught.exception.stderr.count('WARNING: header mismatch'), 3)
        self.assertIn('ERROR: invalid archive', caught.exception.diagnostic_tail)

    def test_both_runner_routes_share_durable_log_upload(self):
        root = Path(__file__).resolve().parents[1]
        action = (root / '.github/actions/run-hybrid/action.yml').read_text(encoding='utf-8')
        self.assertIn('python3 -m tools.capture_build_log', action)
        self.assertIn('name: wukong-build-log-${{ inputs.job_id }}', action)
        self.assertIn('retention-days: 14', action)
        self.assertIn('if: always()\n      uses: actions/upload-artifact', action)


if __name__ == '__main__':
    unittest.main()
