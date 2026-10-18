import hashlib
import importlib.util
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest
from unittest.mock import patch
import zipfile

from STARK import patch_common as common

ROOT = Path(__file__).resolve().parents[1]


def load_script(relative):
    spec = importlib.util.spec_from_file_location('tool_test_' + Path(relative).stem, ROOT / relative)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class SharedToolchainTests(unittest.TestCase):
    def test_nested_patches_never_launch_bare_java_from_path(self):
        import ast
        violations = []
        for path in (ROOT / 'STARK').rglob('*.py'):
            tree = ast.parse(path.read_text(encoding='utf-8-sig'), filename=str(path))
            for node in ast.walk(tree):
                if isinstance(node, (ast.List, ast.Tuple)) and node.elts:
                    first = node.elts[0]
                    if isinstance(first, ast.Constant) and first.value in ('java', 'javac', 'java.exe'):
                        violations.append(f'{path.relative_to(ROOT)}:{node.lineno}')
        self.assertEqual(violations, [], 'Use the shared tool resolver, including nested helper modules')

    def test_nested_launcher_decode_uses_bundled_java_without_path(self):
        load_script('STARK/Launcher_mod/patch_Launcher_mod/patch_launcher.py')
        from launcher_mod import profiles
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            java = root / 'Runtime/Java/bin' / ('java.exe' if os.name == 'nt' else 'java')
            java.parent.mkdir(parents=True)
            java.touch()
            apk = root / 'fixture.apk'
            with zipfile.ZipFile(apk, 'w') as archive:
                archive.writestr('classes.dex', b'dex fixture')
            profile = {'features': [{'classes': [{'owner': 'Lfixture/Target;', 'source': 'Target.java'}]}]}
            with patch.dict(os.environ, {'WUKONG_STUDIO_INSTALL_ROOT': str(root),
                                        'WUKONG_STUDIO_APP_ROOT': str(root / 'Runtime'),
                                        'PATH': '', 'JAVA_HOME': ''}), \
                 patch.object(profiles, 'ROOT', root), \
                 patch.object(profiles, 'dex_inventory', return_value={'Lfixture/Target;': 'Target.java'}), \
                 patch.object(profiles, 'run_tool') as run:
                profiles.decode_for_profile(apk, ROOT / 'bin/Java/baksmali.jar', profile)
            command = run.call_args.args[0]
            self.assertEqual(command[0], str(java.resolve()))
            self.assertEqual(command[1:3], ['-jar', str(ROOT / 'bin/Java/baksmali.jar')])

    @unittest.skipUnless(os.environ.get('WUKONG_TEST_RUNTIME_ROOT'), 'Optional packaged Java integration')
    def test_real_launcher_decode_with_packaged_java_and_empty_path(self):
        load_script('STARK/Launcher_mod/patch_Launcher_mod/patch_launcher.py')
        from launcher_mod import profiles
        runtime = Path(os.environ['WUKONG_TEST_RUNTIME_ROOT']).resolve()
        with tempfile.TemporaryDirectory() as directory, \
             patch.dict(os.environ, {'WUKONG_STUDIO_INSTALL_ROOT': str(runtime.parent),
                                    'WUKONG_STUDIO_APP_ROOT': str(runtime),
                                    'WUKONG_STUDIO_TOOLCHAIN_DIR': str(runtime / 'Bin/Java'),
                                    'PATH': '', 'JAVA_HOME': ''}):
            root = Path(directory)
            source = root / 'input'
            source.mkdir()
            (source / 'Target.smali').write_text(
                '.class public Lfixture/Target;\n.super Ljava/lang/Object;\n.source "Target.java"\n'
                '.method public static value()I\n    .registers 1\n'
                '    const/4 v0, 0x1\n    return v0\n.end method\n', encoding='utf-8')
            dex = root / 'classes.dex'
            subprocess.run(common.java_command('smali', 'a', source, '-o', dex),
                           check=True, capture_output=True, timeout=30)
            apk = root / 'fixture.apk'
            with zipfile.ZipFile(apk, 'w') as archive:
                archive.write(dex, 'classes.dex')
            profile = {'features': [{'classes': [{'owner': 'Lfixture/Target;', 'source': 'Target.java'}]}]}
            with patch.object(profiles, 'ROOT', root):
                work, roots, sources = profiles.decode_for_profile(apk, common.require_tool('baksmali'), profile)
            decoded = roots['classes.dex'] / 'fixture/Target.smali'
            self.assertIn('value()I', decoded.read_text(encoding='utf-8'))
            self.assertEqual(sources['Target.java'], ['Lfixture/Target;'])
            expected_java = runtime / 'Java/bin' / ('java.exe' if os.name == 'nt' else 'java')
            self.assertEqual(Path(common.require_tool('java')), expected_java)

    def test_every_patch_resolves_the_same_locked_jars(self):
        camera = load_script('STARK/Camera_mod/patch_Camera_mod/patch_camera.py')
        bubbles = load_script('STARK/Chat_bubbles/patch_Chat_bubbles/patch_chat_bubbles.py')
        cts = load_script('STARK/Cts_Gemini/patch_Cts_Gemini/patch_cts_gemini.py')
        settings = load_script('STARK/Settings_mod/patch_Settings_mod/patch_settings.py')
        athena = load_script('STARK/Fix_noti/patch_athena/patch_athena.py')
        hasselblad = load_script('STARK/Hasselblad_filter/patch_Hasselblad_filter/patch_hasselblad.py')
        launcher = load_script('STARK/Launcher_mod/patch_Launcher_mod/launcher_mod/toolchain.py')
        expected = {name: Path(common.require_tool(name)).resolve()
                    for name in ('apktool', 'smali', 'baksmali')}
        for method in (camera.find_tools, bubbles.get_tools):
            found = method()
            self.assertEqual(Path(found[0]).resolve(), expected['baksmali'])
            self.assertEqual(Path(found[1]).resolve(), expected['smali'])
        for name in expected:
            self.assertEqual(Path(cts.find_tool_jar(name)).resolve(), expected[name])
            self.assertEqual(Path(launcher.find_tool(name)).resolve(), expected[name])
            self.assertEqual(Path(hasselblad.shared_tool(name)).resolve(), expected[name])
        for method in (settings.find_apktool, athena.find_apktool):
            self.assertEqual(Path(method()).resolve(), expected['apktool'])

    def test_invalid_global_override_is_not_silently_replaced_with_another_jar(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            jar = root / 'smali.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.writestr('fixture.txt', b'valid zip, wrong hash')
            (root / 'toolchain.json').write_text(json.dumps({'schemaVersion': 1, 'tools': {
                'smali': {'file': 'smali.jar', 'version': 'fixture', 'sha256': '0' * 64}}}), encoding='utf-8')
            with patch.dict(os.environ, {'WUKONG_STUDIO_TOOLCHAIN_DIR': directory}):
                with self.assertRaisesRegex(common.ToolchainError, 'SHA-256 mismatch'):
                    common.find_tool('smali')

    def test_missing_manifest_fails_with_an_actionable_path(self):
        with tempfile.TemporaryDirectory() as directory, \
             patch.dict(os.environ, {'WUKONG_STUDIO_TOOLCHAIN_DIR': directory}):
            with self.assertRaisesRegex(common.ToolchainError, 'manifest unavailable'):
                common.require_tool('apktool')

    def test_platform_independent_jars_have_one_canonical_location(self):
        for name in ('apktool', 'smali', 'baksmali'):
            path = Path(common.require_tool(name))
            self.assertEqual(path.parent.resolve(), (ROOT / 'bin/Java').resolve())
            self.assertEqual(path.name, name + '.jar')

    def test_no_private_tool_jars_remain_under_patch_modules(self):
        duplicates = [str(path.relative_to(ROOT)) for path in (ROOT / 'STARK').rglob('*.jar')
                      if path.name.lower().startswith(('smali', 'baksmali', 'apktool'))]
        self.assertEqual(duplicates, [])
        native = [str(path.relative_to(ROOT)) for path in (ROOT / 'STARK').rglob('*')
                  if path.name.lower() in {'zipalign.exe', '7z.exe', '7z.dll'}]
        self.assertEqual(native, [])

    def test_launcher_cli_forwards_arguments_without_deployment(self):
        import sys
        launcher = load_script('STARK/Launcher_mod/patch_Launcher_mod/patch_launcher.py')
        with patch.object(sys, 'argv', ['patch_launcher.py', 'my stock.apk', '--features', 'ram']), \
             patch.object(launcher, 'run_build', return_value=0) as build:
            with self.assertRaises(SystemExit) as result:
                launcher.main()
        self.assertEqual(result.exception.code, 0)
        build.assert_called_once_with(['my stock.apk', '--features', 'ram', '--no-install'])

    def test_all_shared_launcher_help_commands_work_without_private_tools(self):
        runner = load_script('STARK/run_patch.py')
        import sys
        for name in runner.PATCHES:
            with self.subTest(patch=name):
                result = subprocess.run([sys.executable, str(ROOT / 'STARK/run_patch.py'), name, '--help'],
                                        capture_output=True, text=True, encoding='utf-8', errors='replace', timeout=30)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                self.assertIn('usage:', result.stdout.lower())

    def test_drag_drop_normalization_preserves_spaces_and_explicit_output(self):
        runner = load_script('STARK/run_patch.py')
        self.assertEqual(runner.normalize_arguments('camera', ['C:/my input/stock.apk']),
                         ['-i', 'C:/my input/stock.apk', '-o', str(Path('C:/my input/stock_mod.apk'))])
        self.assertEqual(runner.normalize_arguments('cts', ['stock.apk', 'my output.apk', '--no-interactive']),
                         ['-i', 'stock.apk', '-o', 'my output.apk', '--no-interactive'])
        self.assertEqual(runner.normalize_arguments('settings', ['stock.apk', '-o', 'out.apk']),
                         ['stock.apk', '-o', 'out.apk'])

    @unittest.skipUnless(os.name == 'nt', 'Windows batch launcher')
    def test_batch_launcher_forwards_help_and_failure_exit_status(self):
        launcher = str(ROOT / 'STARK/run_patch.bat')
        for arguments, expected in [('settings --help', 0), ('not-a-patch', 1)]:
            result = subprocess.run([os.environ.get('COMSPEC', 'cmd.exe'), '/d', '/c', launcher + ' ' + arguments],
                                    capture_output=True, timeout=30)
            self.assertEqual(result.returncode, expected, result.stdout + result.stderr)

    def test_upgrade_removes_legacy_tools_only_after_backup(self):
        installer = (ROOT / 'desktop/Packaging/installer.iss').read_text(encoding='utf-8-sig')
        import re
        deletes = re.findall(r'Type: files; Name: "\{app\}\\([^"\r\n]+)"', installer)
        for path in deletes:
            if path.endswith(('.jar', 'zipalign.exe', '7z.exe', '7z.dll')):
                self.assertIn(":= '" + path + "';", installer)
        self.assertIn('Result := BackupLegacyPatchTools();', installer)
        self.assertIn("if Result <> '' then Exit;", installer)

    @unittest.skipUnless(shutil.which('java'), 'Java unavailable')
    def test_real_tools_assemble_disassemble_and_preserve_jar_resources(self):
        from framework_tool import FrameworkTool
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            smali = root / 'input-smali'
            smali.mkdir()
            (smali / 'Central.smali').write_text(
                '.class public Lfixture/Central;\n.super Ljava/lang/Object;\n'
                '.method public static value()I\n    .registers 1\n'
                '    const/4 v0, 0x1\n    return v0\n.end method\n', encoding='utf-8')
            dex = root / 'classes.dex'
            subprocess.run(common.java_command('smali', 'a', smali, '-o', dex), check=True, capture_output=True)
            jar = root / 'fixture.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.write(dex, 'classes.dex')
                archive.writestr('resource.bin', b'OEM resources', compress_type=zipfile.ZIP_DEFLATED)
            tool = FrameworkTool(jar, base_out=str(root / 'cooker'))
            self.assertTrue(tool.unpack())
            target = tool.unpack_dir / 'smali_classes/fixture/Central.smali'
            target.write_text(target.read_text(encoding='utf-8').replace('const/4 v0, 0x1', 'const/4 v0, 0x2'), encoding='utf-8')
            before = dex.read_bytes()
            self.assertTrue(tool.repack())
            with zipfile.ZipFile(jar) as archive:
                self.assertIsNone(archive.testzip())
                self.assertNotEqual(archive.read('classes.dex'), before)
                self.assertEqual(archive.getinfo('classes.dex').compress_type, zipfile.ZIP_STORED)
                self.assertEqual(archive.read('resource.bin'), b'OEM resources')


if __name__ == '__main__':
    unittest.main()
