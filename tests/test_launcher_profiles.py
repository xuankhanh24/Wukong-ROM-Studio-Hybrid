"""Exact OEM-variant guards; preserve newer stock logic while adding hooks."""
from collections import defaultdict
import importlib
from pathlib import Path
import sys
import tempfile
import unittest
import zipfile
from unittest.mock import patch

PATCHER = Path(__file__).resolve().parents[1] / 'STARK/Launcher_mod/patch_Launcher_mod'
sys.path.insert(0, str(PATCHER))
engine = importlib.import_module('launcher_mod.engine')
sys.path.remove(str(PATCHER))


class LauncherProfileTests(unittest.TestCase):
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
