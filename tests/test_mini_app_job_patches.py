from pathlib import Path
import unittest

from tests.test_telegram_mini_app import _render_mini_app_in_chrome


class MiniAppJobPatchTests(unittest.TestCase):
    def test_saved_patch_context_in_both_languages_and_viewports(self):
        for width in (390, 1440):
            with self.subTest(width=width):
                def exercise(page):
                    page.evaluate("""async () => {
                        const {state} = await import('/modules/state.js');
                        const {navigate} = await import('/modules/dock.js');
                        const {renderActiveJob} = await import('/modules/jobs.js');
                        state.language = 'vi';
                        navigate('jobs');
                        const job = {
                            job_id: 'patch-context-test', status: 'succeeded',
                            recipe: {device: 'PJZ110', build: {
                                mods: ['Launcher_mod', 'Fix_noti', 'WK_Manager'],
                                launcherFeatures: ['ram', 'feed'], fixNotiFeatures: ['level2'],
                                wkManagerPatches: ['multi_audio', 'power_button_remap'],
                                enabledSteps: ['apply_mod']
                            }}
                        };
                        window.patchContextJob = job;
                        renderActiveJob(job, []);
                    }""")
                    context = page.locator('#active-job .job-patch-context')
                    self.assertTrue(context.is_visible())
                    text = context.inner_text()
                    for expected in ('Hiển thị RAM đa nhiệm', 'Google Feed', 'LV2',
                                     'Âm thanh nhiều ứng dụng', 'Remap nút nguồn', '2/9', '2/10'):
                        self.assertIn(expected, text)
                    self.assertNotIn('LV1', text)
                    self.assertNotIn('global_region', text)
                    self.assertEqual(context.locator('li').count(), 5)
                    # Current draft checkboxes differ; re-render still uses the saved job.
                    page.evaluate("""async () => {
                        document.querySelectorAll('.mod-feature-options input').forEach(n => n.checked = false);
                        const {renderActiveJob} = await import('/modules/jobs.js');
                        renderActiveJob(window.patchContextJob, []);
                    }""")
                    self.assertEqual(context.inner_text(), text)
                    self.assertLessEqual(page.evaluate('document.documentElement.scrollWidth'), width)
                    output = Path(__file__).resolve().parents[1] / '.tmp' / 'job-patch-context'
                    output.mkdir(parents=True, exist_ok=True)
                    page.locator('#active-job .job-context').screenshot(path=str(output / f'patches-{width}.png'))
                    page.evaluate("""async () => {
                        const {state} = await import('/modules/state.js');
                        const {renderActiveJob} = await import('/modules/jobs.js');
                        state.language = 'en';
                        renderActiveJob(window.patchContextJob, []);
                    }""")
                    self.assertIn('Recents RAM', context.inner_text())
                    self.assertIn('Power button remap', context.inner_text())
                    page.evaluate("""async () => {
                        const {renderActiveJob} = await import('/modules/jobs.js');
                        const build = window.patchContextJob.recipe.build;
                        build.launcherFeatures = null;
                        delete build.fixNotiFeatures;
                        build.wkManagerPatches = [];
                        build.enabledSteps = [];
                        renderActiveJob(window.patchContextJob, []);
                    }""")
                    text = context.inner_text()
                    for expected in ('Prebuilt MOD', 'patch details not saved', 'No patches selected', 'skips Apply MOD'):
                        self.assertIn(expected, text)
                    self.assertEqual(context.locator('li').count(), 0)
                    page.evaluate("""async () => {
                        const {renderActiveJob} = await import('/modules/jobs.js');
                        window.patchContextJob.recipe.build.mods = ['Gapps'];
                        renderActiveJob(window.patchContextJob, []);
                    }""")
                    self.assertEqual(context.count(), 0)

                _render_mini_app_in_chrome(api_enabled=True, page_action=exercise, window_width=width)
