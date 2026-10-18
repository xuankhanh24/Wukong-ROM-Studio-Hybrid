"""Checkbox interaction and submitted payload on mobile and desktop Mini App."""
from pathlib import Path
import unittest

from tests.test_telegram_mini_app import _render_mini_app_in_chrome

ROOT = Path(__file__).resolve().parents[1]


class ModFeaturesUiTests(unittest.TestCase):
    def test_checkbox_levels_and_launcher_selection_reach_recipe(self):
        for width, label in ((390, 'mobile'), (1280, 'desktop')):
            with self.subTest(width=width):
                def interact(page):
                    page.locator('details').evaluate_all('(nodes) => nodes.forEach(node => node.open = true)')
                    page.locator('#mod-list label:has(input[value="Launcher_mod"])').click()
                    page.locator('#mod-list label:has(input[value="Fix_noti"])').click()
                    self.assertTrue(page.locator('#launcher-features').is_visible())
                    self.assertTrue(page.locator('#fix-noti-features').is_visible())
                    self.assertEqual(page.locator('#fix-noti-features input[type="checkbox"]').count(), 2)
                    page.locator('#fix-noti-features input[value="level1"]').check()
                    self.assertFalse(page.locator('#fix-noti-features input[value="level2"]').is_checked())
                    page.locator('#launcher-features input[value="ram"]').check()
                    page.locator('#launcher-features input[value="dock"]').check()
                    page.locator('#device').select_option('PKG110')
                    recipe = page.evaluate('async () => (await import("/modules/build.js")).buildRecipe()')
                    self.assertEqual(recipe['build']['fixNotiFeatures'], ['level1'])
                    self.assertEqual(recipe['build']['launcherFeatures'], ['global_region', 'dock', 'ram'])
                    page.locator('#fix-noti-features input[value="level2"]').check()
                    self.assertFalse(page.locator('#fix-noti-features input[value="level1"]').is_checked())
                    page.locator('#launcher-features').scroll_into_view_if_needed()
                _render_mini_app_in_chrome(
                    api_enabled=True,
                    catalog_mods_by_version={'ColorOS_16.0.9': ['Gapps', 'WK_Manager', 'Launcher_mod', 'Fix_noti']},
                    page_action=interact,
                    window_width=width,
                    screenshot_output=ROOT / f'.tmp/checkbox-{label}.png',
                )
