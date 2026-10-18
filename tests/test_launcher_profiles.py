"""Exact OEM-variant guards; preserve newer stock logic while adding hooks."""
from collections import defaultdict
import importlib
from pathlib import Path
import sys
import tempfile
import unittest

PATCHER = Path(__file__).resolve().parents[1] / 'STARK/Launcher_mod/patch_Launcher_mod'
sys.path.insert(0, str(PATCHER))
engine = importlib.import_module('launcher_mod.engine')
sys.path.remove(str(PATCHER))


class LauncherProfileTests(unittest.TestCase):
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
            self.assertEqual(len(matches), 42)
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
