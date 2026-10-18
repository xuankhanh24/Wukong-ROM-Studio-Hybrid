import dataclasses
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch
import zipfile

import studio_core as core
from wukong.models import BuildOptions, RecipeValidationError
from wukong.mod_features import normalize_features, LAUNCHER_FEATURES, FIX_NOTI_FEATURES


class ModFeatureTests(unittest.TestCase):
    def test_launcher_bundled_copies_apk_and_patch_keeps_stock_payload(self):
        for selected in (None, ['ram'], []):
            with self.subTest(selected=selected), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                source = root / 'mods/Launcher_mod/system_ext/priv-app/OplusLauncher/OplusLauncher.apk'
                source.parent.mkdir(parents=True)
                source.write_bytes(b'bundled launcher')
                destination = root / 'rom/system_ext/priv-app/OplusLauncher/OplusLauncher.apk'
                destination.parent.mkdir(parents=True)
                destination.write_bytes(b'stock launcher')
                mod = {'name': 'Launcher_mod', 'partitions': ['system_ext'], 'shared': True}
                with patch.object(core, 'normalize_mod_version', return_value='fixture'), \
                     patch.object(core, 'validate_mods', return_value=[mod]), \
                     patch.object(core, 'STARK_ROOT', root / 'empty-shared'), \
                     patch.object(core, '_mod_collection_dir', return_value=root / 'mods'), \
                     patch.object(core, '_partition_destination', return_value=('system_ext', root / 'rom/system_ext')), \
                     patch.object(core, '_patch_selected_launcher', return_value='system_ext') as patcher:
                    result = core.apply_selected_mods(['Launcher_mod'], root / 'rom', {}, root,
                                                      launcher_features=selected)
                self.assertEqual(destination.read_bytes(), b'bundled launcher' if selected is None else b'stock launcher')
                self.assertEqual(result['copied'], 1 if selected is None else 0)
                if selected is None or selected == []:
                    patcher.assert_not_called()
                else:
                    patcher.assert_called_once_with(root / 'rom', root, selected)

    def test_missing_bundled_launcher_reports_patch_alternative(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            with patch.object(core, 'normalize_mod_version', return_value='fixture'), \
                 patch.object(core, 'validate_mods', return_value=[{'name': 'Launcher_mod', 'partitions': []}]), \
                 patch.object(core, '_mod_collection_dir', return_value=root), \
                 patch.object(core, '_patch_selected_launcher') as patcher:
                with self.assertRaisesRegex(core.StudioError, 'chọn Patch'):
                    core.apply_selected_mods(['Launcher_mod'], root, {}, root, launcher_features=None)
                patcher.assert_not_called()

    def test_mini_app_defaults_to_level_one_only(self):
        from html.parser import HTMLParser

        class CheckedLevels(HTMLParser):
            def __init__(self):
                super().__init__()
                self.levels = []

            def handle_starttag(self, tag, attrs):
                attrs = dict(attrs)
                if tag == 'input' and attrs.get('value') in FIX_NOTI_FEATURES and 'checked' in attrs:
                    self.levels.append(attrs['value'])

        parser = CheckedLevels()
        parser.feed((Path(__file__).resolve().parents[1] / 'telegram_mini_app/index.html').read_text(encoding='utf-8'))
        self.assertEqual(parser.levels, ['level1'])

    def test_selection_validation_and_recipe_roundtrip(self):
        for field, choices in (('launcherFeatures', ['global_region', 'ram']),
                               ('fixNotiFeatures', ['level1'])):
            for values in (choices, [], None):
                parsed = BuildOptions.from_dict({field: values})
                self.assertEqual(parsed.to_dict().get(field), values)
            for bad in ('level1', ['unknown'], [1]):
                with self.assertRaises(RecipeValidationError):
                    BuildOptions.from_dict({field: bad})
        with self.assertRaisesRegex(RecipeValidationError, 'not both'):
            BuildOptions.from_dict({'fixNotiFeatures': ['level1', 'level2']})
        self.assertEqual(FIX_NOTI_FEATURES, ('level1', 'level2'))

    def test_fingerprint_and_saved_spec_keep_each_selection(self):
        first = core.BuildSpec(romPath='fixture.zip', launcherFeatures=['ram'], fixNotiFeatures=['level1'])
        for field, value in (('launcherFeatures', ['dock']), ('fixNotiFeatures', ['level2'])):
            changed = dataclasses.replace(first, **{field: value})
            self.assertNotEqual(core.build_spec_fingerprint(first), core.build_spec_fingerprint(changed))
            self.assertEqual(core._spec_payload(changed)[field], value)

    def test_launcher_dispatch_uses_only_selected_features_and_never_adb(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            unpack = root / 'rom'
            apk = unpack / 'system_ext_unpacked/system_ext/priv-app/OplusLauncher/OplusLauncher.apk'
            apk.parent.mkdir(parents=True)
            apk.write_bytes(b'stock')
            calls = []
            def command(args):
                calls.append(args)
                output = Path(args[args.index('--output') + 1])
                with zipfile.ZipFile(output, 'w') as archive:
                    archive.writestr('selection', args[args.index('--features') + 1])
            with patch.object(core, '_run_command', side_effect=command):
                partition = core._patch_selected_launcher(unpack, root, ['global_region', 'ram'])
            self.assertEqual(partition, 'system_ext')
            self.assertIn('--no-install', calls[0])
            self.assertEqual(calls[0][calls[0].index('--features') + 1], 'ram')
            with zipfile.ZipFile(apk) as archive:
                self.assertEqual(archive.read('selection'), b'ram')

    def test_noti_dispatch_passes_exact_level_and_preserves_stock_on_failure(self):
        for selected, expected in ((['level1'], '1'), (['level2'], '2')):
            with self.subTest(selected=selected), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                unpack = root / 'rom'
                apk = unpack / 'system_ext_unpacked/system_ext/app/Athena/Athena.apk'
                apk.parent.mkdir(parents=True)
                apk.write_bytes(b'stock')
                calls = []
                def command(args):
                    calls.append(args)
                    # Failed patch returns without producing output, even if an old output existed.
                work = root / 'mod-tools/Athena'
                work.mkdir(parents=True)
                (work / 'Athena.apk').write_bytes(b'stale output')
                with patch.object(core, '_run_command', side_effect=command):
                    with self.assertRaisesRegex(core.StudioError, 'did not produce'):
                        core._patch_selected_noti(unpack, root, selected)
                self.assertEqual(calls[0][calls[0].index('-l') + 1], expected)
                self.assertIn('--no-interactive', calls[0])
                self.assertEqual(apk.read_bytes(), b'stock')

    def test_empty_selections_skip_apk_patching(self):
        with patch.object(core, '_run_command') as run:
            self.assertIsNone(core._patch_selected_noti(Path('missing'), Path('workspace'), []))
            self.assertIsNone(core._patch_selected_launcher(Path('missing'), Path('workspace'), []))
            run.assert_not_called()

    def test_web_and_native_ids_match_backend_and_noti_has_only_two_boxes(self):
        import re
        root = Path(__file__).resolve().parents[1]
        html = (root / 'telegram_mini_app/index.html').read_text(encoding='utf-8')
        native = (root / 'desktop/WukongStudio.Core/StudioModFeatures.cs').read_text(encoding='utf-8')
        for field_id, expected in (('launcher-features', LAUNCHER_FEATURES), ('fix-noti-features', FIX_NOTI_FEATURES)):
            body = html.split(f'id="{field_id}"', 1)[1].split('</fieldset>', 1)[0]
            self.assertEqual(tuple(re.findall(r'type="checkbox" value="([^"]+)"', body)), expected)
            for value in expected:
                self.assertIn(f'new("{value}",', native)

    def test_athena_levels_copy_their_own_config_and_use_isolated_scratch(self):
        import contextlib
        import io
        import shutil
        from tests.test_patch_toolchain import load_script
        module = load_script('STARK/Fix_noti/patch_athena/patch_athena.py')
        workspaces = []
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            stock = root / 'Athena.apk'
            with zipfile.ZipFile(stock, 'w') as archive:
                archive.writestr('res/unchanged.txt', b'OEM stock')
            for level in (1, 2):
                def run(args, **kwargs):
                    output = Path(args[args.index('-o') + 1])
                    if args[3] == 'd':
                        output.mkdir(parents=True, exist_ok=True)
                        workspaces.append(output.parent)
                    else:
                        decoded = Path(args[4])
                        with zipfile.ZipFile(output, 'w') as archive:
                            for source in (decoded / 'assets').glob('*.xml'):
                                archive.write(source, 'assets/' + source.name)
                    return subprocess.CompletedProcess(args, 0, '', '')
                output = root / f'Athena-lv{level}.apk'
                with contextlib.redirect_stdout(io.StringIO()), \
                     patch.object(module, 'extract_apk_signing_block', return_value=b'fixture'), \
                     patch.object(module, 'inject_apk_signing_block', side_effect=lambda source, block, target: shutil.copy2(source, target)), \
                     patch.object(module, 'align_apk', side_effect=lambda tool, source, target: shutil.copy2(source, target)), \
                     patch.object(module, 'run_tool', side_effect=run):
                    self.assertTrue(module.patch_athena_apk(str(stock), str(output), level))
                config = Path(module.LVL1_DIR if level == 1 else module.LVL2_DIR)
                with zipfile.ZipFile(output) as archive:
                    self.assertEqual(archive.read('res/unchanged.txt'), b'OEM stock')
                    for source in config.glob('*.xml'):
                        self.assertEqual(archive.read('assets/' + source.name), source.read_bytes())
        self.assertNotEqual(workspaces[0], workspaces[1])
        self.assertTrue(all(not path.exists() for path in workspaces))


if __name__ == '__main__':
    unittest.main()
