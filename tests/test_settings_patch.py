"""Settings OTA card uses one callback without changing OEM access or video code."""
from pathlib import Path
import re
import tempfile
import unittest

from tests.test_patch_toolchain import load_script

SETTINGS = load_script('STARK/Settings_mod/patch_Settings_mod/patch_settings.py')
OWNER = 'Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;'


def preference(access):
    invoke = 'invoke-direct' if access == 'private' else 'invoke-virtual'
    return (
        f'.class public {OWNER}\n.super Landroidx/preference/Preference;\n'
        f'.method {access} final getTargetIntentStatic()Landroid/content/Intent;\n'
        '    .locals 1\n    const/4 v0, 0x0\n    return-object v0\n.end method\n'
        '.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V\n'
        '    .registers 22\n'
        f'    {invoke}/range {{p0 .. p0}}, {OWNER}->getTargetIntentStatic()Landroid/content/Intent;\n'
        '    move-result-object v0\n    return-void\n.end method\n'
        '.method private final setupTopVideo()V\n    .locals 0\n'
        '    return-void\n.end method\n'
    )


class SettingsPatchTests(unittest.TestCase):
    def test_all_nested_ota_helper_dependencies_are_bundled(self):
        folder = Path(SETTINGS.__file__).parent / 'smali/com/oplus/settings/widget/preference'
        definitions, references = set(), set()
        for path in folder.glob('WkOtaCard*.smali'):
            content = path.read_text(encoding='utf-8')
            definition = re.search(r'(?m)^\.class[^\n]* (L[^\s]+;)$', content)
            self.assertIsNotNone(definition, path.name)
            definitions.add(definition[1])
            references.update(re.findall(r'Lcom/oplus/settings/widget/preference/WkOtaCard[^;\s]+;', content))
        self.assertFalse(references - definitions, sorted(references - definitions))

    def test_a16_a17_preserve_access_and_stock_video_with_one_bind_hook(self):
        for access in ('public', 'private'):
            with self.subTest(access=access), tempfile.TemporaryDirectory() as tmp:
                path = Path(tmp) / 'Preference.smali'
                original = preference(access)
                path.write_text(original, encoding='utf-8')
                SETTINGS.patch_ota_preference(path)
                result = path.read_text(encoding='utf-8')
                self.assertIn(f'.method {access} final getTargetIntentStatic()', result)
                self.assertIn('invoke-static/range {p0 .. p1}', result)
                self.assertEqual(result.count('->onBind(Ljava/lang/Object;Ljava/lang/Object;)V'), 1)
                video = original[original.index('.method private final setupTopVideo'):]
                self.assertTrue(result.endswith(video))
                self.assertNotIn('0x7f0600bf', result)
                SETTINGS.patch_ota_preference(path)
                self.assertEqual(path.read_text(encoding='utf-8'), result)

    def test_missing_bind_method_fails_without_changing_source(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / 'Preference.smali'
            original = preference('private').replace('onBindViewHolder(', 'unknownCallback(')
            path.write_text(original, encoding='utf-8')
            with self.assertRaisesRegex(ValueError, 'onBindViewHolder'):
                SETTINGS.patch_ota_preference(path)
            self.assertEqual(path.read_text(encoding='utf-8'), original)
