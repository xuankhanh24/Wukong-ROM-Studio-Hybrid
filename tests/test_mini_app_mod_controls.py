from pathlib import Path
import unittest

from tests.test_telegram_mini_app import _render_mini_app_in_chrome


class MiniAppModControlsTests(unittest.TestCase):
    def test_mod_controls_recipe_language_reset_and_responsive_layout(self):
        for width in (390, 900, 1440):
            with self.subTest(width=width):
                def exercise(page):
                    page.evaluate("""async () => {
                        const {setMods} = await import('/modules/build.js');
                        setMods('all');
                    }""")
                    for group, count in [('launcher-features', 9), ('fix-noti-features', 2), ('wk-manager-patches', 10)]:
                        self.assertTrue(page.locator('#' + group).is_visible())
                        self.assertEqual(page.locator('#' + group + ' input').count(), count)
                    self.assertTrue(page.locator('#fix-noti-features input[value="level1"]').is_checked())
                    page.locator('#fix-noti-features input[value="level2"]').check()
                    self.assertFalse(page.locator('#fix-noti-features input[value="level1"]').is_checked())
                    page.locator('#launcher-features input[value="ram"]').check()
                    page.locator('#wk-manager-patches input[value="multi_audio"]').uncheck()
                    result = page.evaluate("""async () => {
                        const {buildRecipe} = await import('/modules/build.js');
                        const device = document.querySelector('#device');
                        device.value = [...device.options].find(option => option.value)?.value;
                        document.querySelector('#source-uri').value = 'https://example.com/rom.zip';
                        return buildRecipe().build;
                    }""")
                    self.assertEqual(result['fixNotiFeatures'], ['level2'])
                    self.assertEqual(result['launcherFeatures'], ['global_region', 'ram'])
                    self.assertNotIn('multi_audio', result['wkManagerPatches'])
                    self.assertIn('Fix_noti: LV2', page.locator('#mod-feature-summary').inner_text())
                    page.evaluate("""async () => {
                        const {state} = await import('/modules/state.js');
                        const {applyLanguage} = await import('/modules/shell.js');
                        state.language = 'en'; applyLanguage();
                    }""")
                    self.assertEqual(page.locator('#fix-noti-features legend').inner_text(), 'Fix_noti · Level')
                    self.assertTrue(page.locator('#fix-noti-features input[value="level2"]').is_checked())
                    self.assertIn('2/9 features', page.locator('#mod-feature-summary').inner_text())
                    measurements = page.evaluate("""() => ({
                        width: innerWidth, scroll: document.documentElement.scrollWidth,
                        labels: [...document.querySelectorAll('.mod-feature-options label')].map(n => n.getBoundingClientRect().height)
                    })""")
                    self.assertLessEqual(measurements['scroll'], measurements['width'])
                    self.assertTrue(all(height >= 44 for height in measurements['labels']))
                    screenshots = Path(__file__).resolve().parents[1] / '.tmp' / 'miniapp-mod-review'
                    screenshots.mkdir(parents=True, exist_ok=True)
                    page.locator('#launcher-features').screenshot(path=str(screenshots / f'features-{width}.png'))
                    page.screenshot(path=str(screenshots / f'page-{width}.png'))
                    page.evaluate("""async () => {
                        const {resetJobDraft, setMods} = await import('/modules/build.js');
                        resetJobDraft(); setMods('all');
                    }""")
                    self.assertTrue(page.locator('#fix-noti-features input[value="level1"]').is_checked())
                    self.assertFalse(page.locator('#fix-noti-features input[value="level2"]').is_checked())
                    page.locator('#fix-noti-features input[value="level1"]').uncheck()
                    self.assertIn('no APK patch', page.locator('#mod-feature-summary').inner_text())

                _render_mini_app_in_chrome(
                    api_enabled=True, page_action=exercise, window_width=width,
                    catalog_mods_by_version={'ColorOS_16.0.9': ['Launcher_mod', 'Fix_noti', 'WK_Manager']},
                )


if __name__ == '__main__':
    unittest.main()
