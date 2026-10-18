import struct
import os
import shutil
import tempfile
import unittest
import zipfile
from pathlib import Path
from unittest.mock import patch

from STARK.patch_common import align_apk, find_tool, merge_rebuilt_archive, rewrite_archive


def local_payload(path, name):
    with zipfile.ZipFile(path) as archive, path.open('rb') as raw:
        info = archive.getinfo(name)
        raw.seek(info.header_offset)
        header = raw.read(30)
        name_length, extra_length = struct.unpack_from('<HH', header, 26)
        raw.read(name_length + extra_length)
        return raw.read(info.compress_size)


class ArchiveTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.stock = self.root / 'stock.apk'
        with zipfile.ZipFile(self.stock, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=1) as archive:
            archive.comment = b'OEM archive'
            archive.writestr('classes.dex', b'stock dex')
            archive.writestr('res/image.png', b'OEM resources' * 10000)
            archive.writestr('classes2.dex', b'untouched dex')
            archive.writestr('lib/arm64-v8a/libtest.so', b'ELF' * 100)

    def test_only_target_dex_changes_and_oem_compressed_payload_is_identical(self):
        output = self.root / 'patched.apk'
        rewrite_archive(self.stock, output, {'classes.dex': b'patched dex', 'classes3.dex': b'bridge'})
        with zipfile.ZipFile(output) as archive:
            self.assertIsNone(archive.testzip())
            self.assertEqual(archive.comment, b'OEM archive')
            for name in ('classes.dex', 'classes3.dex'):
                self.assertEqual(archive.getinfo(name).compress_type, zipfile.ZIP_STORED)
            self.assertEqual(archive.read('classes.dex'), b'patched dex')
        for name in ('res/image.png', 'classes2.dex', 'lib/arm64-v8a/libtest.so'):
            self.assertEqual(local_payload(self.stock, name), local_payload(output, name))
        with zipfile.ZipFile(output) as archive, output.open('rb') as raw:
            for name in ('classes.dex', 'classes3.dex'):
                info = archive.getinfo(name)
                raw.seek(info.header_offset)
                name_length, extra_length = struct.unpack_from('<HH', raw.read(30), 26)
                self.assertEqual((info.header_offset + 30 + name_length + extra_length) % 4, 0)

    def test_same_path_replacement_is_atomic_and_failure_preserves_destination(self):
        before = self.stock.read_bytes()
        with self.assertRaises(FileNotFoundError):
            rewrite_archive(self.stock, self.stock, {'classes.dex': self.root / 'missing.dex'})
        self.assertEqual(self.stock.read_bytes(), before)
        rewrite_archive(self.stock, self.stock, {'classes.dex': b'updated'})
        with zipfile.ZipFile(self.stock) as archive:
            self.assertEqual(archive.read('classes.dex'), b'updated')

    def test_merge_retains_entries_omitted_by_apktool(self):
        rebuilt = self.root / 'rebuilt.jar'
        with zipfile.ZipFile(rebuilt, 'w') as archive:
            archive.writestr('classes.dex', b'rebuilt dex')
        output = self.root / 'merged.jar'
        merge_rebuilt_archive(self.stock, rebuilt, output)
        with zipfile.ZipFile(output) as archive:
            self.assertIn('lib/arm64-v8a/libtest.so', archive.namelist())
        self.assertEqual(local_payload(self.stock, 'res/image.png'), local_payload(output, 'res/image.png'))

    def test_dex_only_merge_excludes_apktool_resource_changes_and_untouched_dex(self):
        rebuilt = self.root / 'rebuilt.jar'
        with zipfile.ZipFile(rebuilt, 'w') as archive:
            archive.writestr('classes.dex', b'changed dex')
            archive.writestr('classes2.dex', b'unnecessary reassembly')
            archive.writestr('res/image.png', b'unwanted rebuild')
        output = self.root / 'merged.jar'
        merge_rebuilt_archive(self.stock, rebuilt, output, dex_only=True, changed_dex={'classes.dex'})
        with zipfile.ZipFile(output) as archive:
            self.assertEqual(archive.read('classes.dex'), b'changed dex')
            self.assertEqual(archive.read('classes2.dex'), b'untouched dex')
            self.assertEqual(archive.read('res/image.png'), b'OEM resources' * 10000)

    @unittest.skipUnless(find_tool('zipalign'), 'Android SDK zipalign is unavailable')
    def test_real_zipalign_verifies_16kb_library_and_four_byte_dex_alignment(self):
        with zipfile.ZipFile(self.stock, 'a') as archive:
            archive.writestr('lib/arm64-v8a/libstored.so', b'ELF' * 100,
                             compress_type=zipfile.ZIP_STORED)
        patched = self.root / 'patched.apk'
        output = self.root / 'aligned.apk'
        rewrite_archive(self.stock, patched, {'classes.dex': b'patched dex'})
        align_apk(find_tool('zipalign'), patched, output)
        with zipfile.ZipFile(output) as archive, output.open('rb') as raw:
            for name, boundary in [('classes.dex', 4), ('lib/arm64-v8a/libstored.so', 16384)]:
                info = archive.getinfo(name)
                raw.seek(info.header_offset)
                name_length, extra_length = struct.unpack_from('<HH', raw.read(30), 26)
                self.assertEqual((info.header_offset + 30 + name_length + extra_length) % boundary, 0)

    def test_alignment_failure_does_not_publish_or_fallback(self):
        import subprocess
        output = self.root / 'output.apk'
        output.write_bytes(b'previous output')
        with patch('wukong.patch_tools.run_tool', side_effect=subprocess.CalledProcessError(1, 'zipalign')) as run:
            with self.assertRaises(subprocess.CalledProcessError):
                align_apk('zipalign', self.stock, output)
        self.assertEqual(run.call_count, 1)
        self.assertIn('16', run.call_args.args[0])
        self.assertEqual(output.read_bytes(), b'previous output')

    def test_runtime_helper_fallback_survives_older_installed_content(self):
        import studio_core
        scripts = self.root / 'Runtime/Scripts'
        scripts.mkdir(parents=True)
        fallback = scripts / 'stark_patch_common.py'
        shutil.copyfile(Path(__file__).resolve().parents[1] / 'STARK/patch_common.py', fallback)
        tools = self.root / 'Runtime/Bin/Java'
        tools.mkdir(parents=True)
        with zipfile.ZipFile(tools / 'smali.jar', 'w') as archive:
            archive.writestr('fixture.txt', b'fixture tool')
        import json
        import hashlib
        (tools / 'toolchain.json').write_text(json.dumps({'schemaVersion': 1, 'tools': {'smali': {
            'file': 'smali.jar', 'version': 'fixture',
            'sha256': hashlib.sha256((tools / 'smali.jar').read_bytes()).hexdigest(),
        }}}), encoding='utf-8')
        with patch.object(studio_core, 'STARK_ROOT', self.root / 'Content/STARK'), \
             patch.object(studio_core, 'SCRIPT_ROOT', scripts), \
             patch.dict(os.environ, {'WUKONG_STUDIO_TOOLCHAIN_DIR': str(tools)}):
            helper = studio_core._stark_archive_helper()
            self.assertEqual(helper.__name__, 'wukong.patch_tools')
            self.assertEqual(Path(helper.find_tool('smali')).resolve(), (tools / 'smali.jar').resolve())
            output = self.root / 'fallback.jar'
            helper.rewrite_archive(self.stock, output, {'classes.dex': b'patched'})
            with zipfile.ZipFile(output) as archive:
                self.assertEqual(archive.read('classes.dex'), b'patched')

    def test_upgrade_installs_helper_and_every_patch_directory(self):
        root = Path(__file__).resolve().parents[1]
        installer = (root / 'desktop/Packaging/installer.iss').read_text(encoding='utf-8')
        lines = [line for line in installer.splitlines()
                 if line.startswith('Source:') and '\\Content\\STARK\\*"' in line]
        self.assertEqual(len(lines), 1, 'Install the complete shared tree, including prepared payloads')
        self.assertIn('recursesubdirs createallsubdirs', lines[0])
        self.assertNotIn('IsFreshInstall', lines[0])

    def test_script_only_shared_upgrade_does_not_hide_existing_version_payload(self):
        import studio_core
        mods = self.root / 'Content/MOD'
        legacy = mods / 'ColorOS_16.0.10/Camera_mod/my_product'
        legacy.mkdir(parents=True)
        (legacy / 'Camera.apk').write_bytes(b'existing prepared payload')
        shared = mods.parent / 'STARK/Camera_mod'
        (shared / 'patch_Camera_mod').mkdir(parents=True)
        (shared / 'patch_Camera_mod/patch_camera.py').write_text('# updated script', encoding='utf-8')
        found = {item['name']: item for item in studio_core.list_mods('ColorOS_16.0.10', mod_root=mods)}
        self.assertTrue(found['Camera_mod']['ready'])
        self.assertFalse(found['Camera_mod']['shared'])
        (shared / 'my_product').mkdir()
        (shared / 'my_product/Camera.apk').write_bytes(b'shared prepared payload')
        found = {item['name']: item for item in studio_core.list_mods('ColorOS_16.0.10', mod_root=mods)}
        self.assertTrue(found['Camera_mod']['ready'])
        self.assertTrue(found['Camera_mod']['shared'])

    def test_runner_assembles_only_changed_dex_and_preserves_other_entries(self):
        import studio_core
        calls = []

        def command(args, **kwargs):
            calls.append(args)
            if args[3] == 'd':
                decoded = Path(args[-1])
                for folder in ('smali', 'smali_classes2'):
                    path = decoded / folder / 'Target.smali'
                    path.parent.mkdir(parents=True)
                    path.write_text('stock', encoding='utf-8')
            elif args[3] == 'a':
                Path(args[-1]).write_bytes(b'patched dex')
            else:
                self.fail(f'Unexpected full rebuild: {args}')

        def patcher(decoded):
            (decoded / 'smali' / 'Target.smali').write_text('patched', encoding='utf-8')
            return {'patchedMethods': 1}

        resource = local_payload(self.stock, 'res/image.png')
        dex = local_payload(self.stock, 'classes2.dex')
        with patch.object(studio_core, '_run_command', side_effect=command), \
             patch('wukong.smali_io.validate_dex'):
            report = studio_core._patch_jar_with_apktool(self.stock, self.root / 'work', patcher)
        self.assertEqual(report['changedDex'], ['classes.dex'])
        self.assertTrue(report['selectiveDexBuild'])
        self.assertEqual(len([call for call in calls if call[3] == 'a']), 1)
        self.assertEqual(local_payload(self.stock, 'res/image.png'), resource)
        self.assertEqual(local_payload(self.stock, 'classes2.dex'), dex)

    def test_removed_dex_tree_fails_without_overwriting_the_original_jar(self):
        import studio_core
        original = self.stock.read_bytes()
        def decode(args, **kwargs):
            target = Path(args[-1]) / 'smali/Target.smali'
            target.parent.mkdir(parents=True)
            target.write_text('stock', encoding='utf-8')
        def remove_tree(decoded):
            shutil.rmtree(decoded / 'smali')
        with patch.object(studio_core, '_run_command', side_effect=decode):
            with self.assertRaisesRegex(studio_core.StudioError, 'removed DEX trees'):
                studio_core._patch_jar_with_apktool(self.stock, self.root / 'work', remove_tree)
        self.assertEqual(self.stock.read_bytes(), original)

    def test_settings_scratch_is_cleaned_after_failure_and_never_deploys_implicitly(self):
        import importlib.util
        source = Path(__file__).resolve().parents[1] / 'STARK/Settings_mod/patch_Settings_mod/patch_settings.py'
        spec = importlib.util.spec_from_file_location('settings_scratch_test', source)
        module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(module)
        scratch_paths = []

        def fail(input_path, scratch, output, package, deploy):
            self.assertFalse(deploy)
            self.assertTrue(Path(scratch).is_dir())
            scratch_paths.append(scratch)
            raise RuntimeError('fixture build failure')

        with patch.object(module, '_run_patch_pipeline', side_effect=fail):
            for _ in range(2):
                with self.assertRaises(RuntimeError):
                    module.run_patch_pipeline(str(self.stock), work_dir=self.root)
        self.assertNotEqual(*scratch_paths)
        self.assertTrue(all(not Path(path).exists() for path in scratch_paths))

    @unittest.skipUnless(os.environ.get('WK_POWER_JAR'), 'Set WK_POWER_JAR for real OEM JAR integration')
    def test_real_oem_jar_selective_build_preserves_all_untouched_payloads(self):
        import studio_core
        from wukong.wk_features import load_patcher
        source = Path(os.environ['WK_POWER_JAR'])
        target = self.root / 'oplus-services.jar'
        shutil.copyfile(source, target)
        features = load_patcher(Path(__file__).resolve().parents[1] / 'STARK')

        def patcher(decoded):
            candidates = list(decoded.rglob('SinglePowerKeyMonitor$OplusPowerKeyRule.smali'))
            self.assertEqual(len(candidates), 1)
            path = candidates[0]
            path.write_text(features._power(path.read_text(encoding='utf-8')), encoding='utf-8')
            return {'patchedMethods': 3}

        report = studio_core._patch_jar_with_apktool(target, self.root / 'real-build', patcher)
        self.assertTrue(report['selectiveDexBuild'])
        self.assertEqual(len(report['changedDex']), 1)
        with zipfile.ZipFile(source) as stock, zipfile.ZipFile(target) as result:
            self.assertEqual(stock.namelist(), result.namelist())
            for info in stock.infolist():
                if info.filename not in report['changedDex']:
                    self.assertEqual(local_payload(source, info.filename), local_payload(target, info.filename))
                else:
                    self.assertEqual(result.getinfo(info.filename).compress_type, zipfile.ZIP_STORED)


if __name__ == '__main__':
    unittest.main()
