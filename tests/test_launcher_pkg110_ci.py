"""Exact stock methods that failed Launcher preflight in Actions run 39766800618."""
import copy
import json
import re
from pathlib import Path
import tempfile
import unittest

from tests.test_launcher_profiles import engine, PATCHER


class LauncherPkg110CiTests(unittest.TestCase):
    def test_reviewed_stock_variants_preserve_descriptors_and_limit_edits(self):
        fixture = Path(__file__).parent / 'fixtures/launcher/pkg110_16_0_10_500/ci_39766800618.json'
        for case in json.loads(fixture.read_text(encoding='utf-8')):
            with self.subTest(feature=case['feature']), tempfile.TemporaryDirectory() as tmp:
                feature = json.loads((PATCHER / f"patches/a17/{case['feature']}.json").read_text(encoding='utf-8'))
                entry = next(c for c in feature['classes'] if c['owner'] == case['owner'])
                rule = next(r for r in entry['methods'] if r['before'].splitlines()[0] == case['stock_method'].splitlines()[0])
                selected = copy.deepcopy(feature)
                selected['classes'] = [{**entry, 'methods': [rule], 'fields': []}]
                profile = {
                    'schema': 2, 'id': 'ci-regression', 'features': [selected],
                    'type_sources': {'Lcom/android/common/config/FeatureOption;': 'FeatureOption.kt'},
                }
                # A global source binding must not rewrite a reviewed raw OEM graph.
                sources = {
                    entry['source']: [case['owner']],
                    'FeatureOption.kt': ['Lfixture/RecycledFeatureOption;'],
                }
                path = Path(tmp) / (case['owner'][1:-1] + '.smali')
                path.parent.mkdir(parents=True)
                original = (f".class public {case['owner']}\n.super Ljava/lang/Object;\n"
                            f".source \"{entry['source']}\"\n\n" + case['stock_method'] + '\n')
                path.write_text(original, encoding='utf-8')
                broken = copy.deepcopy(profile)
                for choice in broken['features'][0]['classes'][0]['methods'][0]['alternatives']:
                    if choice.get('reviewed_variant') == 'PKG110_16.0.10.500(CN01) / CI 39766800618':
                        choice.pop('raw')
                with self.assertRaises(ValueError):
                    engine.plan_patch([Path(tmp)], broken, sources)
                engine.apply_profile([Path(tmp)], profile, sources)
                result = path.read_text(encoding='utf-8')
                expected = engine.compact(original)
                if case['feature'] == 'settings':
                    expected, count = re.subn(
                        r'(iget-object v1, p0, [^\n]+;->mDockSearchBoxForQSB:[^\n]+\n)'
                        r'invoke-virtual \{v0, v1\}, Landroidx/preference/PreferenceGroup;->removePreference\(Landroidx/preference/Preference;\)Z',
                        r'\1nop', expected,
                    )
                    self.assertEqual(count, 2)
                if case['feature'] == 'taskbar':
                    expected = expected.replace(
                        'Lcom/android/common/util/AppFeatureUtils;->isTablet()Z',
                        'Landroid/preference/TweaksHelper;->isWkTaskbarExpandEnabled()Z',
                    )
                    self.assertNotEqual(original, expected)
                self.assertEqual(engine.output_graph(result), engine.output_graph(expected))
                path.write_text(original.replace('return-void', 'nop\n    return-void', 1), encoding='utf-8')
                with self.assertRaises(ValueError):
                    engine.plan_patch([Path(tmp)], profile, sources)
