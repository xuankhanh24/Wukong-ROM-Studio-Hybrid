from pathlib import Path
import unittest

from tests.test_telegram_mini_app import _render_mini_app_in_chrome


class MiniAppModControlsTests(unittest.TestCase):
    def test_mod_controls_recipe_language_reset_and_responsive_layout(self):
        for width in (390, 900, 1440):
            with self.subTest(width=width):
                def exercise(page):
                    page.evaluate("""async () => {
                        const {state} = await import('/modules/state.js');
                        const {setMods, renderMods} = await import('/modules/build.js');
                        state.catalog.sharedMods = ['Launcher_mod', 'Fix_noti', 'WK_Manager'];
                        renderMods(false);
                        setMods('all');
                    }""")
                    self.assertEqual(page.locator('#mod-list .shared-mod-badge').count(), 3)
                    self.assertTrue(all(text == 'Dùng chung' for text in page.locator('#mod-list .shared-mod-badge').all_text_contents()))
                    for group, count in [('launcher-features', 9), ('fix-noti-features', 2), ('wk-manager-patches', 10)]:
                        self.assertTrue(page.locator('#' + group).is_visible())
                        self.assertEqual(page.locator('#' + group + ' input').count(), count)
                    self.assertTrue(page.locator('#fix-noti-features input[value="level1"]').is_checked())
                    page.locator('#fix-noti-features label').filter(has=page.locator('input[value="level2"]')).click()
                    self.assertFalse(page.locator('#fix-noti-features input[value="level1"]').is_checked())
                    page.locator('#launcher-features label').filter(has=page.locator('input[value="ram"]')).click()
                    page.locator('#wk-manager-patches label').filter(has=page.locator('input[value="multi_audio"]')).click()
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
                    self.assertTrue(all(text == 'Shared' for text in page.locator('#mod-list .shared-mod-badge').all_text_contents()))
                    self.assertEqual(page.locator('#catalog-mod-list .shared-mod-badge').count(), 3)
                    ram = page.locator('#launcher-features input[value="ram"]')
                    ram.focus()
                    ram.press('Space')
                    self.assertFalse(ram.is_checked())
                    ram.press('Space')
                    self.assertTrue(ram.is_checked())
                    if width == 900:
                        page.evaluate("""async () => { const {applyTheme} = await import('/modules/dock.js'); applyTheme('dark'); }""")
                    measurements = page.evaluate("""() => ({
                        width: innerWidth, scroll: document.documentElement.scrollWidth,
                        labels: [...document.querySelectorAll('.mod-feature-options label')].map(n => n.getBoundingClientRect().height)
                    })""")
                    self.assertLessEqual(measurements['scroll'], measurements['width'])
                    self.assertTrue(all(height >= 44 for height in measurements['labels']))
                    screenshots = Path(__file__).resolve().parents[1] / '.tmp' / 'miniapp-shared-ui-review'
                    screenshots.mkdir(parents=True, exist_ok=True)
                    page.locator('#launcher-features').screenshot(path=str(screenshots / f'features-{width}.png'))
                    page.locator('#mod-list').screenshot(path=str(screenshots / f'mods-{width}.png'))
                    page.locator('#fix-noti-features').screenshot(path=str(screenshots / f'noti-{width}.png'))
                    page.screenshot(path=str(screenshots / f'page-{width}.png'))
                    page.evaluate("""async () => {
                        const {resetJobDraft, setMods} = await import('/modules/build.js');
                        resetJobDraft(); setMods('all');
                    }""")
                    self.assertTrue(page.locator('#fix-noti-features input[value="level1"]').is_checked())
                    self.assertFalse(page.locator('#fix-noti-features input[value="level2"]').is_checked())
                    page.locator('#fix-noti-features label').filter(has=page.locator('input[value="level1"]')).click()
                    self.assertIn('no APK patch', page.locator('#mod-feature-summary').inner_text())

                _render_mini_app_in_chrome(
                    api_enabled=True, page_action=exercise, window_width=width,
                    catalog_mods_by_version={'ColorOS_16.0.9': ['Launcher_mod', 'Fix_noti', 'WK_Manager']},
                )


if __name__ == '__main__':
    unittest.main()
