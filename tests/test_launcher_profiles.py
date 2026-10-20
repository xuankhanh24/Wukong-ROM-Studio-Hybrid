"""Exact OEM-variant guards; preserve newer stock logic while adding hooks."""
from collections import defaultdict
import importlib
import os
from pathlib import Path
import sys
import subprocess
import tempfile
import unittest
import zipfile
from unittest.mock import patch

PATCHER = Path(__file__).resolve().parents[1] / 'STARK/Launcher_mod/patch_Launcher_mod'
sys.path.insert(0, str(PATCHER))
engine = importlib.import_module('launcher_mod.engine')
sys.path.remove(str(PATCHER))


class LauncherProfileTests(unittest.TestCase):
    def test_private_framework_symbols_link_with_clean_bundled_framework(self):
        from wukong.patch_tools import ToolchainError, require_tool, sdk_root
        try:
            candidates = sorted(sdk_root().glob('build-tools/*/aapt2' + ('.exe' if os.name == 'nt' else '')))
            apktool = require_tool('apktool')
        except ToolchainError as error:
            self.skipTest(str(error))
        if not candidates:
            self.skipTest('Android aapt2 is not installed')
        resources = importlib.import_module('launcher_mod.resources')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            xml = root / 'res/values/styles.xml'
            xml.parent.mkdir(parents=True)
            xml.write_text('<resources><style name="Fixture" parent="@android:style/TextAppearance.DeviceDefault.Body2">'
                           '<item name="android:colorAccent">?android:^attr-private/colorAccentPrimary</item></style>'
                           '<dimen name="width">@android:dimen/search_view_preferred_width</dimen></resources>', encoding='utf-8')
            manifest = root / 'AndroidManifest.xml'
            manifest.write_text('<manifest xmlns:android="http://schemas.android.com/apk/res/android" '
                                'package="com.wukong.fixture"><application android:label="Fixture" /></manifest>', encoding='utf-8')
            with zipfile.ZipFile(apktool) as archive:
                framework = root / 'framework.apk'
                framework.write_bytes(archive.read('prebuilt/android-framework.jar'))
            def link():
                subprocess.run([str(candidates[-1]), 'compile', '--dir', str(root / 'res'), '-o', str(root / 'resources.zip')],
                               check=True, capture_output=True)
                return subprocess.run([str(candidates[-1]), 'link', '-I', str(framework), '--manifest', str(manifest),
                                       '-o', str(root / 'linked.apk'), str(root / 'resources.zip')], capture_output=True, text=True)
            before = link()
            self.assertNotEqual(before.returncode, 0)
            self.assertIn('is private', before.stderr)
            resources.preserve_framework_references(root)
            after = link()
            self.assertEqual(after.returncode, 0, after.stderr)

    def test_stock_framework_references_keep_their_symbols_when_private(self):
        resources = importlib.import_module('launcher_mod.resources')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            values = root / 'res/values/styles.xml'
            values.parent.mkdir(parents=True)
            original = ('<resources><style name="Stock" parent="@android:style/TextAppearance.DeviceDefault.Body2" />'
                        '<dimen name="width">@android:dimen/search_view_preferred_width</dimen>'
                        '<string name="literal">\\@android:string/not_a_reference</string>'
                        '<item name="app">@string/app_name</item>'
                        '<item name="private_theme">?android:^attr-private/colorAccentPrimary</item>'
                        '<item name="theme">?android:attr/textColorPrimary</item></resources>')
            values.write_text(original, encoding='utf-8')
            resources.preserve_framework_references(root)
            result = values.read_text(encoding='utf-8')
            self.assertIn('@*android:style/TextAppearance.DeviceDefault.Body2', result)
            self.assertIn('@*android:dimen/search_view_preferred_width', result)
            self.assertIn('\\@android:string/not_a_reference', result)
            self.assertIn('@string/app_name', result)
            self.assertIn('?android:attr/textColorPrimary', result)
            self.assertIn('?wkandroidprv:attr/colorAccentPrimary', result)
            self.assertIn('xmlns:wkandroidprv="http://schemas.android.com/apk/prv/res/android"', result)
            resources.preserve_framework_references(root)
            self.assertEqual(result, values.read_text(encoding='utf-8'))

    def test_raw_oem_alternative_keeps_descriptors_with_dictionary_roots(self):
        original = ('.method public run()Z\n.registers 1\n'
                    'invoke-static {}, Lexample/Original;->enabled()Z\n'
                    'move-result v0\nreturn v0\n.end method\n')
        replacement = original.replace('enabled()Z', 'patched()Z')
        profile = {'features': [{'id': 'feed', 'classes': [{
            'owner': 'Lexample/Feed;', 'source': '', 'methods': [{
                'before': original.replace('enabled()Z', 'other()Z'), 'after': replacement,
                'alternatives': [{'before': original, 'after': replacement, 'raw': True}]
            }]
        }]}], 'type_sources': {'Lexample/Original;': 'Original.kt'}}
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / 'example/Feed.smali'
            path.parent.mkdir()
            path.write_text('.class public Lexample/Feed;\n' + original)
            sources = {'Original.kt': ['Lexample/Renamed;']}
            _, matches, _, aliases = engine.plan_patch({'classes.dex': root}, profile, sources)
            self.assertEqual(aliases['Lexample/Original;'], 'Lexample/Renamed;')
            self.assertEqual(len(matches), 1)
            self.assertIn('Lexample/Original;->patched()Z', matches[0].replacement)
            self.assertNotIn('Lexample/Renamed;', matches[0].replacement)

    def test_duplicate_source_metadata_requires_unique_method_semantics(self):
        before = '.method public enabled()Z\n.registers 1\nconst/4 v0, 0x0\nreturn v0\n.end method\n'
        profile = {'features': [{'id': 'feed', 'classes': [{
            'owner': 'Lexample/Feature;', 'source': 'Feature.kt',
            'methods': [{'before': before, 'after': before.replace('0x0', '0x1')}]
        }]}]}
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for name, body in [('A', before), ('B', before.replace('0x0', '0x2'))]:
                path = root / f'example/{name}.smali'
                path.parent.mkdir(exist_ok=True)
                path.write_text(f'.class public Lexample/{name};\n.super Ljava/lang/Object;\n' + body)
            sources = {'Feature.kt': ['Lexample/A;', 'Lexample/B;']}
            _, matches, _, aliases = engine.plan_patch([root], profile, sources)
            self.assertEqual(aliases['Lexample/Feature;'], 'Lexample/A;')
            self.assertEqual(len(matches), 1)
            # A recycled obfuscated descriptor must not override source metadata.
            (root / 'example/Feature.smali').write_text('.class public Lexample/Feature;\n' + before)
            _, matches, _, _ = engine.plan_patch([root], profile, sources)
            self.assertEqual(matches[0].path, root / 'example/A.smali')
            (root / 'example/B.smali').write_text('.class public Lexample/B;\n' + before)
            with self.assertRaisesRegex(ValueError, 'candidates'):
                engine.plan_patch([root], profile, sources)

    def test_entry_source_without_debug_metadata_is_decoded_by_unique_basename(self):
        profiles = importlib.import_module('launcher_mod.profiles')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            apk = root / 'stock.apk'
            with zipfile.ZipFile(apk, 'w') as archive:
                archive.writestr('classes.dex', b'fixture')
            owner = 'Lcom/oplus/leftscreen/OverlayUtils;'
            profile = {'features': [{'id': 'feed', 'classes': [{
                'owner': 'Lcom/android/overlay/OverlayUtils;', 'source': 'OverlayUtils.kt', 'methods': []
            }]}]}
            with patch.object(profiles, 'ROOT', root), \
                    patch.object(profiles, 'dex_inventory', return_value={owner: None}), \
                    patch.object(profiles, 'find_tool', return_value='java'), \
                    patch.object(profiles, 'run_tool') as tool:
                _, _, sources = profiles.decode_for_profile(apk, 'fixture.jar', profile)
            self.assertEqual(sources.get('OverlayUtils.kt'), [owner])
            self.assertIn(owner, tool.call_args.args[0])

    def test_decode_uses_source_metadata_when_old_descriptor_is_recycled(self):
        profiles = importlib.import_module('launcher_mod.profiles')
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            apk = root / 'stock.apk'
            with zipfile.ZipFile(apk, 'w') as archive:
                archive.writestr('classes.dex', b'fixture')
            profile = {'features': [{'id': 'feed', 'classes': [{
                'owner': 'Lexample/Old;', 'source': 'Feature.kt', 'methods': []
            }]}]}
            with patch.object(profiles, 'ROOT', root), \
                    patch.object(profiles, 'dex_inventory', return_value={
                        'Lexample/Old;': 'Unrelated.kt', 'Lexample/New;': 'Feature.kt'}), \
                    patch.object(profiles, 'find_tool', return_value='java'), \
                    patch.object(profiles, 'run_tool') as tool:
                profiles.decode_for_profile(apk, 'fixture.jar', profile)
            command = tool.call_args.args[0]
            self.assertEqual(command[command.index('--classes') + 1], 'Lexample/New;')

    def test_fingerprint_binding_disambiguates_shared_kotlin_source(self):
        before = ('.method public run()Z\n.registers 1\n'
                  'invoke-interface {v0}, Lexample/Lazy;->getValue()Ljava/lang/Object;\n'
                  'const/4 v0, 0x0\nreturn v0\n.end method\n')
        profile = {'type_sources': {'Lexample/Lazy;': 'Lazy.kt'},
                   'type_bindings': {'Lexample/Lazy;': 'Lexample/NativeLazy;'},
                   'features': [{'id': 'feed', 'classes': [{
                       'owner': 'Lexample/Feed;', 'source': '', 'methods': [{
                           'before': before, 'after': before.replace('0x0', '0x1')}]
                   }]}]}
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / 'example/Feed.smali'
            path.parent.mkdir()
            path.write_text('.class public Lexample/Feed;\n' + before.replace('Lexample/Lazy;', 'Lexample/NativeLazy;'))
            _, matches, _, _ = engine.plan_patch([root], profile, {
                'Lazy.kt': ['Lexample/NativeLazy;', 'Lexample/OtherLazy;']})
            self.assertEqual(len(matches), 1)
            self.assertIn('Lexample/NativeLazy;->getValue()', matches[0].replacement)

    def test_alternatives_with_same_body_use_exact_method_signature(self):
        before = '.method public a()Z\n.registers 1\nconst/4 v0, 0x0\nreturn v0\n.end method\n'
        renamed = before.replace('a()Z', 'enabled()Z')
        profile = {'features': [{'id': 'feed', 'classes': [{
            'owner': 'Lexample/Feed;', 'source': '', 'methods': [{
                'before': before, 'after': before.replace('0x0', '0x1'),
                'alternatives': [{'before': renamed, 'after': renamed.replace('0x0', '0x2')}]
            }]
        }]}]}
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / 'example/Feed.smali'
            path.parent.mkdir()
            path.write_text('.class public Lexample/Feed;\n' + before)
            _, matches, _, _ = engine.plan_patch([root], profile)
            self.assertIn('const/4 v0, 0x1', matches[0].replacement)
            self.assertNotIn('const/4 v0, 0x2', matches[0].replacement)
            profile['features'][0]['classes'][0]['methods'][0]['alternatives'][0]['before'] = before
            with self.assertRaisesRegex(ValueError, 'ambiguous semantic alternatives'):
                engine.plan_patch([root], profile)

    def test_reviewed_alternative_method_body_is_supported(self):
        original = '.method public run()Z\n.registers 1\nconst/4 v0, 0x0\nreturn v0\n.end method\n'
        alternative = original.replace('0x0', '0x1')
        replacement = original.replace('0x0', '0x2')
        profile = {'features': [{'id': 'feed', 'classes': [{
            'owner': 'Lexample/Feed;', 'source': '', 'methods': [{
                'before': original, 'after': replacement,
                'alternatives': [{'before': alternative, 'after': replacement}]
            }]
        }]}]}
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / 'example/Feed.smali'
            path.parent.mkdir()
            path.write_text('.class public Lexample/Feed;\n.super Ljava/lang/Object;\n' + alternative)
            _, matches, _, _ = engine.plan_patch([root], profile)
            self.assertEqual(len(matches), 1)
            self.assertIn('0x2', matches[0].replacement)
            self.assertIn('0x1', path.read_text(), 'Planning must not write source files')

    def setUp(self):
        self.profile = engine.load_profile(PATCHER / 'patches/pkg110_16_0_10_500/profile.json')

    def fixture(self, directory):
        owners = defaultdict(dict)
        for feature in self.profile['features']:
            for entry in feature['classes']:
                for rule in entry['methods']:
                    if rule['before']:
                        owners[entry['owner']][engine.signature(rule['before'])] = rule['before']
        for owner, methods in owners.items():
            path = directory / (owner[1:-1] + '.smali')
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(f'.class public {owner}\n.super Ljava/lang/Object;\n' + '\n'.join(methods.values()), encoding='utf-8')

    def test_variant_matches_all_rules_and_keeps_new_oem_control_flow(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            self.fixture(root)
            profile = engine.select_profile(self.profile, {'recents', 'dock', 'taskbar', 'feed', 'search', 'quick_search', 'gestures', 'ram'})
            files, matches, _, _ = engine.plan_patch([root], profile)
            self.assertEqual(len(matches), 42)  # Exact PKG110 stock keeps its reviewed graph.
            state = next(match for match in matches if match.method.startswith('setStateWithAnimationInternal('))
            self.assertIn('->releaseRunningTaskAlphaForRecentsExit(', state.replacement)
            self.assertIn('.registers 28', state.replacement)
            settings = next(match for match in matches if match.method == 'initPreferences()V')
            self.assertIn('Lm9/n;', settings.replacement)
            self.assertNotIn('Lma/b0;', settings.replacement)
            self.assertIn('TweaksPreferenceInjector;->inject(', settings.replacement)
            self.assertEqual(settings.replacement.count('\nnop\n'), 2)
            self.assertTrue(any(match.method == 'onResume(Landroidx/lifecycle/u;)V' for match in matches))

    def test_unknown_body_is_rejected_before_any_class_is_written(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            self.fixture(root)
            path = root / 'com/android/common/LauncherApplication.smali'
            path.write_text(path.read_text().replace('invoke-super {p0}', 'nop\ninvoke-super {p0}'))
            before = {path: path.read_bytes() for path in root.rglob('*.smali')}
            with self.assertRaisesRegex(ValueError, 'semantic matches'):
                engine.apply_profile([root], self.profile)
            self.assertEqual(before, {path: path.read_bytes() for path in root.rglob('*.smali')})

    def test_quick_search_variant_does_not_leak_into_unselected_build(self):
        selected = engine.select_profile(self.profile, {'search'})
        rule = next(rule for feature in selected['features'] if feature['id'] == 'settings'
                    for entry in feature['classes'] for rule in entry['methods']
                    if engine.signature(rule['before']) == 'initPreferences()V')
        self.assertEqual(rule['after'].count('\nnop\n'), 0)
        self.assertIn('Lm9/n;', rule['after'])


if __name__ == '__main__':
    unittest.main()
