from pathlib import Path
import unittest

from tests.test_telegram_mini_app import _render_mini_app_in_chrome


class MiniAppLogQuotaTests(unittest.TestCase):
    def test_status_refresh_does_not_download_logs_and_polling_is_throttled(self):
        def exercise(page):
            result = page.evaluate("""async () => {
                const {state} = await import('/modules/state.js');
                const {loadJobs,loadJobDetail,scheduleJobsPoll} = await import('/modules/jobs.js');
                const originalFetch = window.fetch;
                const originalTimer = window.setTimeout;
                const requests = [], delays = [];
                window.fetch = (url, options) => { requests.push(String(url)); return originalFetch(url, options); };
                window.setTimeout = (fn, delay, ...args) => { if (delay >= 10000) delays.push(delay); return originalTimer(fn,delay,...args); };
                try {
                    await loadJobs({force:true});
                    await loadJobDetail(state.activeJobId);
                    delays.length = 0;
                    scheduleJobsPoll(true, true);
                    const activeDelay = delays.at(-1);
                    for (let i=0; i<6; i++) scheduleJobsPoll(true);
                    const idleDelay = delays.at(-1);
                    scheduleJobsPoll(false);
                    return {requests, delays, activeDelay, idleDelay, terminalStopped:state.jobsPollTimer === null, cachedEvents:state.activeEvents.length};
                } finally { window.fetch = originalFetch; window.setTimeout = originalTimer; }
            }""")
            sync = [url for url in result['requests'] if '/v1/sync?' in url]
            self.assertTrue(sync)
            self.assertTrue(all('includeEvents=0' in url for url in sync), result)
            self.assertTrue(all(delay >= 30000 for delay in result['delays']), result)
            self.assertEqual(result['activeDelay'], 30000)
            self.assertEqual(result['idleDelay'], 120000)
            self.assertTrue(result['terminalStopped'])
            self.assertEqual(result['cachedEvents'], 0)
            self.assertEqual(page.locator('.job-events .event-copy').count(), 0)

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, initial_view='jobs', page_action=exercise)

    def test_logs_only_load_on_explicit_open_and_remain_cached_during_status_refresh(self):
        for width in (390, 1440):
            with self.subTest(width=width):
                def exercise(page):
                    self.assertEqual(page.locator('.job-events .event-copy').count(), 0)
                    output = Path(__file__).resolve().parents[1] / '.tmp/log-quota-review'
                    output.mkdir(parents=True, exist_ok=True)
                    page.locator('#active-job').screenshot(path=str(output / f'compact-{width}.png'))
                    calls = []
                    page.on('request', lambda request: calls.append(request.url))
                    page.locator('.job-log-toggle').click()
                    page.wait_for_selector('.job-events.expanded .event-copy')
                    self.assertTrue(any('/v1/sync?' in url and 'includeEvents=0' not in url for url in calls))
                    count = page.locator('.job-events .event-copy').count()
                    calls.clear()
                    page.evaluate("""async () => {
                        const {state} = await import('/modules/state.js');
                        const {loadJobDetail} = await import('/modules/jobs.js');
                        await loadJobDetail(state.activeJobId);
                    }""")
                    self.assertFalse(any('/v1/sync?' in url for url in calls))
                    self.assertEqual(page.locator('.job-events .event-copy').count(), count)
                    page.locator('.job-log-toggle').click()
                    self.assertEqual(page.locator('.job-events .event-copy').count(), 0)
                    self.assertLessEqual(page.evaluate('document.documentElement.scrollWidth'), width)

                _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, initial_view='jobs',
                                           window_width=width, page_action=exercise)


if __name__ == '__main__':
    unittest.main()
