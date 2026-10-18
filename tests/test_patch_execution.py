"""Every STARK entry point must go through the same execution/validation seam."""
import ast
import contextlib
import io
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

from STARK import patch_common as common
from tests import test_smali_assembly
from tests.test_patch_toolchain import load_script

ROOT = Path(__file__).resolve().parents[1]


class PatchExecutionTests(unittest.TestCase):
    def test_all_mods_bind_the_same_runner(self):
        scripts = [
            'Camera_mod/patch_Camera_mod/patch_camera.py',
            'Chat_bubbles/patch_Chat_bubbles/patch_chat_bubbles.py',
            'Cts_Gemini/patch_Cts_Gemini/patch_cts_gemini.py',
            'Fix_noti/patch_athena/patch_athena.py',
            'Hasselblad_filter/patch_Hasselblad_filter/patch_hasselblad.py',
            'Settings_mod/patch_Settings_mod/patch_settings.py',
            'Launcher_mod/patch_Launcher_mod/launcher_mod/toolchain.py',
        ]
        for script in scripts:
            with self.subTest(script=script):
                self.assertIs(load_script('STARK/' + script).run_tool, common.run_tool)
        load_script('STARK/Launcher_mod/patch_Launcher_mod/patch_launcher.py')
        from launcher_mod import build, helpers, profiles, resources
        for module in (build, helpers, profiles, resources):
            self.assertIs(module.run_tool, common.run_tool)

    def test_no_mod_launches_a_private_subprocess_runner(self):
        violations = []
        for path in (ROOT / 'STARK').rglob('*.py'):
            tree = ast.parse(path.read_text(encoding='utf-8-sig'))
            for node in ast.walk(tree):
                if isinstance(node, ast.Import) and any(n.name == 'subprocess' for n in node.names):
                    violations.append(str(path.relative_to(ROOT)))
                if isinstance(node, ast.ImportFrom) and node.module == 'subprocess':
                    violations.append(str(path.relative_to(ROOT)))
        self.assertEqual(violations, [])

    def test_missing_and_corrupt_dex_never_replace_existing_output(self):
        for payload in (None, b'invalid dex'):
            with self.subTest(payload=payload), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                source = root / 'smali'
                source.mkdir()
                output = root / 'classes.dex'
                output.write_bytes(b'previous output')
                def fake(command):
                    if payload is not None:
                        Path(command[command.index('-o') + 1]).write_bytes(payload)
                    return subprocess.CompletedProcess(command, 0, '', '')
                with self.assertRaisesRegex(common.ToolchainError, 'invalid DEX'):
                    common.run_tool(common.java_command('smali', 'a', source, '-o', output), runner=fake)
                self.assertEqual(output.read_bytes(), b'previous output')
                self.assertEqual(list(root.glob('.patch-build-*')), [])

    def test_shared_api_floor_and_atomic_success(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'smali'
            source.mkdir()
            (root / 'apktool.yml').write_text('sdkInfo:\n  minSdkVersion: 35\n', encoding='utf-8')
            output = root / 'classes.dex'
            output.write_bytes(b'old')
            calls = []
            def fake(command):
                calls.append(command)
                self.assertEqual(output.read_bytes(), b'old')
                Path(command[command.index('-o') + 1]).write_bytes(test_smali_assembly.SmaliAssemblyTests.valid_header_fixture())
                return subprocess.CompletedProcess(command, 0, '', '')
            common.run_tool(common.java_command('smali', 'a', '-a', 28, source, '-o', output), runner=fake)
            self.assertEqual(calls[0][calls[0].index('--api') + 1], '35')
            self.assertNotIn('-a', calls[0])
            self.assertTrue(output.read_bytes().startswith(b'dex\n'))

    def test_runner_streams_both_channels_and_preserves_captured_diagnostics(self):
        log = io.StringIO()
        with contextlib.redirect_stdout(log):
            result = common.run_tool([sys.executable, '-c',
                'import sys; print("output"); print("diagnostic", file=sys.stderr)'],
                capture_output=True, text=True, check=True)
        self.assertIn('output', result.stdout)
        self.assertIn('diagnostic', result.stderr)
        self.assertIn('output', log.getvalue())
        self.assertIn('diagnostic', log.getvalue())
        self.assertIn('exit=0 duration=', log.getvalue())

    def test_nonzero_and_timeout_are_not_success(self):
        with contextlib.redirect_stdout(io.StringIO()):
            with self.assertRaises(subprocess.CalledProcessError):
                common.run_tool([sys.executable, '-c', 'raise SystemExit(7)'], check=True)
            with self.assertRaises(subprocess.TimeoutExpired):
                common.run_tool([sys.executable, '-c', 'import time; time.sleep(5)'], timeout=0.1)

    def test_apktool_invalid_dex_inside_valid_zip_is_rejected(self):
        import zipfile
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            output = root / 'app.apk'
            output.write_bytes(b'previous')
            def fake(command):
                with zipfile.ZipFile(command[command.index('-o') + 1], 'w') as archive:
                    archive.writestr('classes.dex', b'invalid')
                return subprocess.CompletedProcess(command, 0)
            with self.assertRaisesRegex(common.ToolchainError, 'invalid APK/JAR'):
                common.run_tool(common.java_command('apktool', 'b', root, '-o', output), runner=fake)
            self.assertEqual(output.read_bytes(), b'previous')

    def test_jvm_options_do_not_bypass_shared_validation(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            command = common.java_command('smali', 'a', root, '-o', root / 'classes.dex')
            command.insert(1, '-Xmx2G')
            with self.assertRaisesRegex(common.ToolchainError, 'invalid DEX'):
                common.run_tool(command, runner=lambda args: subprocess.CompletedProcess(args, 0))

    def test_real_hidden_api_assembly_and_failure_keep_output(self):
        from wukong.smali_io import validate_dex
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'smali'
            source.mkdir()
            code = source / 'Target.smali'
            code.write_text('.class public Lfixture/Target;\n.super Ljava/lang/Object;\n'
                            '.field public static final blacklist VALUE:I = 0x1\n', encoding='utf-8')
            output = root / 'classes.dex'
            with contextlib.redirect_stdout(io.StringIO()):
                common.run_tool(common.java_command('smali', 'a', source, '-o', output), check=True)
            validate_dex(output)
            original = output.read_bytes()
            code.write_text('deliberately invalid smali', encoding='utf-8')
            with contextlib.redirect_stdout(io.StringIO()), self.assertRaises(common.ToolchainError):
                common.run_tool(common.java_command('smali', 'a', source, '-o', output), check=True)
            self.assertEqual(output.read_bytes(), original)


if __name__ == '__main__':
    unittest.main()
