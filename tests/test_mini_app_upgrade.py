from __future__ import annotations

import unittest

from tests.test_telegram_mini_app import _render_mini_app_in_chrome


class MiniAppUpgradeTests(unittest.TestCase):
    def test_mobile_layout_keeps_dock_and_controls_clear_at_phone_widths(self):
        for width in (320, 360, 390):
            with self.subTest(width=width):
                def exercise(page):
                    source_facts = page.locator('#source-facts')
                    self.assertTrue(source_facts.is_visible())
                    source_facts.locator('summary').click()
                    self.assertTrue(source_facts.evaluate('node => node.open'))
                    self.assertTrue(page.locator('#source-provider').is_visible())
                    source_facts.locator('summary').click()
                    page.locator('.release-version-details summary').click()
                    self.assertTrue(page.locator('.release-version-details').evaluate('node => node.open'))
                    self.assertTrue(page.locator('#mod-release-version-input').is_visible())
                    page.locator('.release-version-details summary').click()
                    result = page.evaluate("""() => {
                        const rect = selector => document.querySelector(selector).getBoundingClientRect();
                        const dock = rect('.bottom-nav');
                        const action = rect('#submit-recipe');
                        const sourceActions = [...document.querySelectorAll('.source-input-head button')];
                        const sourceActionHeights = sourceActions.map(button => button.getBoundingClientRect().height);
                        const facts = document.querySelector('#source-facts');
                        const release = document.querySelector('.release-version-details');
                        const views = {};
                        for (const name of ['build', 'jobs', 'catalog', 'profile', 'system']) {
                            document.querySelector(`.bottom-nav [data-nav="${name}"]`).click();
                            views[name] = {
                                overflow: document.documentElement.scrollWidth > innerWidth,
                                left: Math.round(rect('.view.active').left),
                                right: Math.round(innerWidth - rect('.view.active').right)
                            };
                        }
                        return {
                            views, dockWidth: dock.width, actionGap: dock.top - action.bottom,
                            sourceActions: sourceActionHeights,
                            factsCollapsed: !facts.open, releaseCollapsed: !release.open,
                            profileBadgesGap: getComputedStyle(document.querySelector('.profile-badges')).gap
                        };
                    }""")
                    self.assertTrue(all(not item["overflow"] for item in result["views"].values()))
                    self.assertTrue(all(item["left"] == item["right"] == 16 for item in result["views"].values()))
                    self.assertGreaterEqual(result["dockWidth"], width - 20)
                    self.assertGreater(result["actionGap"], 0)
                    self.assertTrue(all(height >= 44 for height in result["sourceActions"]))
                    self.assertTrue(result["factsCollapsed"] and result["releaseCollapsed"])
                    self.assertNotEqual(result["profileBadgesGap"], "normal")
                    page.locator('.user-row').first.wait_for(timeout=5000)
                    user_row = page.locator('.user-row').first.evaluate("""row => {
                        const box = selector => row.querySelector(selector).getBoundingClientRect();
                        const identity = box('.user-identity');
                        const activity = box('.user-current-activities');
                        const quota = box('.user-quota');
                        const open = box('.user-open');
                        return { activityBelowIdentity: activity.top >= identity.bottom,
                                 quotaBelowActivity: quota.top >= activity.bottom,
                                 openTarget: open.width >= 44 && open.height >= 44 };
                    }""")
                    self.assertTrue(all(user_row.values()), user_row)

                _render_mini_app_in_chrome(api_enabled=True, admin_user=True,
                                           window_width=width, window_height=740,
                                           page_action=exercise)

    def test_supported_telegram_launch_requests_fullscreen(self):
        def exercise(page):
            result = page.evaluate("""() => ({
                requests: document.body.dataset.fullscreenRequests,
                fullscreen: document.body.classList.contains('telegram-fullscreen'),
                dock: getComputedStyle(document.querySelector('.bottom-nav')).display !== 'none'
            })""")
            self.assertEqual(result, {"requests": "1", "fullscreen": True, "dock": True})

        _render_mini_app_in_chrome(api_enabled=True, fullscreen_supported=True, page_action=exercise)

    def test_dock_switches_views_and_mod_picker_starts_collapsed(self):
        def exercise(page):
            picker = page.locator("#mod-picker")
            self.assertFalse(picker.evaluate("node => node.open"))
            picker.locator("summary").click()
            self.assertTrue(picker.evaluate("node => node.open"))
            page.locator(".bottom-nav [data-nav='jobs']").click()
            self.assertEqual(page.locator(".view.active").get_attribute("id"), "jobs")
            self.assertEqual(page.locator(".bottom-nav [data-nav='jobs']").get_attribute("aria-current"), "page")
            page.locator(".bottom-nav [data-nav='build']").click()
            self.assertEqual(page.locator(".view.active").get_attribute("id"), "build")
            self.assertTrue(picker.evaluate("node => node.open"))
            self.assertEqual(page.locator("#dock-profile .dock-profile-label").inner_text(), "Hồ sơ")

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, page_action=exercise)

    def test_polling_restarts_on_visibility_and_online_without_losing_snapshot(self):
        def exercise(page):
            result = page.evaluate("""async () => {
                const { state } = await import('/modules/state.js');
                const { loadJobs } = await import('/modules/jobs.js');
                await loadJobs({ force: true });
                const first = document.querySelector('.job-history-card');
                await loadJobs({ force: true });
                const retained = first === document.querySelector('.job-history-card');
                Object.defineProperty(document, 'hidden', { configurable: true, value: true });
                document.dispatchEvent(new Event('visibilitychange'));
                const paused = state.jobsPollTimer === null;
                Object.defineProperty(document, 'hidden', { configurable: true, value: false });
                document.dispatchEvent(new Event('visibilitychange'));
                await new Promise(resolve => setTimeout(resolve, 300));
                const resumed = Boolean(state.jobsPollTimer);
                window.dispatchEvent(new Event('offline'));
                const offlineSnapshot = state.jobs.length > 0;
                window.dispatchEvent(new Event('online'));
                await new Promise(resolve => setTimeout(resolve, 300));
                return { retained, paused, resumed, online: Boolean(state.jobsPollTimer), offlineSnapshot };
            }""")
            self.assertEqual(result, dict(retained=True, paused=True, resumed=True, online=True, offlineSnapshot=True))

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, initial_view="jobs", page_action=exercise)

    def test_uncertain_build_preserves_payload_key_and_account_boundary(self):
        def exercise(page):
            result = page.evaluate("""async () => {
                const { state } = await import('/modules/state.js');
                const { submitRecipe, restorePendingSubmission } = await import('/modules/build.js');
                const recipe = JSON.stringify({schemaVersion: 1, task: 'build', device:'PJD110', source:{kind:'https',uri:'https://example.com/rom.zip'},build:{preset:'plus'}});
                localStorage.setItem('wukong-submit-request', JSON.stringify({subject:String(state.me.telegramId),recipe,key:'same-build-key'}));
                restorePendingSubmission();
                document.querySelector('#source-uri').value = 'https://example.com/changed.zip';
                const original = window.fetch;
                const attempts = [];
                window.fetch = async (url, init) => {
                    if (String(url).endsWith('/v1/jobs') && init?.method === 'POST') {
                        attempts.push({body:init.body,key:new Headers(init.headers).get('Idempotency-Key')});
                        throw new TypeError('Network disconnected after dispatch');
                    }
                    return original(url, init);
                };
                try { await submitRecipe(); } catch (_) {}
                try { await submitRecipe(); } catch (_) {}
                const uncertain = !document.querySelector('#submit-recovery').hidden;
                const pending = JSON.parse(localStorage.getItem('wukong-submit-request'));
                state.me = {...state.me, telegramId:'different-user'};
                restorePendingSubmission();
                window.fetch = original;
                return {attempts, recipe, uncertain, pendingKey:pending.key, cleared:localStorage.getItem('wukong-submit-request') === null, hidden:document.querySelector('#submit-recovery').hidden};
            }""")
            self.assertEqual(result["attempts"], [{"body": result["recipe"], "key": "same-build-key"}] * 2)
            self.assertTrue(result["uncertain"])
            self.assertEqual(result["pendingKey"], "same-build-key")
            self.assertTrue(result["cleared"] and result["hidden"])

        _render_mini_app_in_chrome(api_enabled=True, page_action=exercise)

    def test_offline_during_detail_request_does_not_rearm_polling(self):
        def exercise(page):
            result = page.evaluate("""async () => {
                const { state } = await import('/modules/state.js');
                const { loadJobDetail } = await import('/modules/jobs.js');
                const jobId = state.jobs[0]?.job_id || state.jobs[0]?.jobId || 'fixture-job';
                state.activeJobId = jobId;
                const original = window.fetch;
                let release;
                const pending = new Promise(resolve => { release = resolve; });
                window.fetch = async (url, init) => String(url).includes('/v1/sync?') ? pending : original(url, init);
                const request = loadJobDetail(jobId).catch(() => {});
                await new Promise(resolve => setTimeout(resolve, 30));
                Object.defineProperty(navigator, 'onLine', { configurable: true, value: false });
                window.dispatchEvent(new Event('offline'));
                const immediately = state.jobsPollTimer;
                release(new Response(JSON.stringify({ activeJob: null, events: [] }), { status: 200, headers: {'content-type':'application/json'} }));
                await request;
                await new Promise(resolve => setTimeout(resolve, 30));
                const afterAbort = state.jobsPollTimer;
                Object.defineProperty(navigator, 'onLine', { configurable: true, value: true });
                window.fetch = original;
                return { immediately, afterAbort };
            }""")
            self.assertIsNone(result["immediately"])
            self.assertIsNone(result["afterAbort"])

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, initial_view="jobs", page_action=exercise)

    def test_confirmed_job_is_visible_when_profile_refresh_fails(self):
        def exercise(page):
            result = page.evaluate("""async () => {
                const { state } = await import('/modules/state.js');
                const { submitRecipe } = await import('/modules/build.js');
                const recipe = JSON.stringify({schemaVersion: 1, task: 'build', device:'PJD110', source:{kind:'https',uri:'https://example.com/rom.zip'},build:{preset:'plus'}});
                localStorage.setItem('wukong-submit-request', JSON.stringify({subject:String(state.me.telegramId), recipe, key:'confirmed-build-key'}));
                const original = window.fetch;
                let profileAttempts = 0;
                window.fetch = async (url, init) => {
                    if (String(url).endsWith('/v1/jobs') && init?.method === 'POST') return Response.json({job_id:'confirmed-created-job', status:'queued'});
                    if (String(url).endsWith('/v1/me')) { profileAttempts += 1; throw new TypeError('profile refresh unavailable'); }
                    return original(url, init);
                };
                let error = '';
                try { await submitRecipe(); } catch (cause) { error = String(cause?.message || cause); }
                window.fetch = original;
                return {profileAttempts, error, view:document.body.dataset.view, activeJobId:state.activeJobId, pending:localStorage.getItem('wukong-submit-request')};
            }""")
            self.assertEqual(result["profileAttempts"], 3)
            self.assertEqual(result["error"], "")
            self.assertEqual(result["view"], "jobs")
            self.assertEqual(result["activeJobId"], "confirmed-created-job")
            self.assertIsNone(result["pending"])

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, page_action=exercise)

    def test_uncertain_response_without_job_id_keeps_key_and_serializes_confirm(self):
        def exercise(page):
            result = page.evaluate("""async () => {
                const { state } = await import('/modules/state.js');
                const { submitRecipe } = await import('/modules/build.js');
                const recipe = JSON.stringify({schemaVersion: 1, task: 'build', device:'PJD110', source:{kind:'https',uri:'https://example.com/rom.zip'},build:{preset:'plus'}});
                localStorage.setItem('wukong-submit-request', JSON.stringify({subject:String(state.me.telegramId), recipe, key:'malformed-success-key'}));
                const original = window.fetch;
                let attempts = 0;
                window.fetch = async (url, init) => {
                    if (String(url).endsWith('/v1/jobs') && init?.method === 'POST') { attempts += 1; return Response.json({status:'queued'}); }
                    return original(url, init);
                };
                let firstError = '';
                try { await submitRecipe(); } catch (cause) { firstError = String(cause?.message || cause); }
                const pending = JSON.parse(localStorage.getItem('wukong-submit-request'));
                const uncertain = state.submitUncertain && !document.querySelector('#submit-recovery').hidden;
                let release;
                const responseReady = new Promise(resolve => { release = resolve; });
                attempts = 0;
                window.fetch = async (url, init) => {
                    if (String(url).endsWith('/v1/jobs') && init?.method === 'POST') {
                        attempts += 1;
                        await responseReady;
                        return Response.json({job_id:'serialized-job', status:'queued'});
                    }
                    return original(url, init);
                };
                const first = submitRecipe().catch(() => null);
                await new Promise(resolve => setTimeout(resolve, 20));
                const second = await submitRecipe();
                const inFlightWhileWaiting = state.submitInFlight;
                release();
                await first;
                window.fetch = original;
                return {attempts, firstError, uncertain, key:pending.key, second, inFlightWhileWaiting, inFlight:state.submitInFlight};
            }""")
            self.assertEqual(result["attempts"], 1)
            self.assertTrue(result["firstError"])
            self.assertTrue(result["uncertain"])
            self.assertEqual(result["key"], "malformed-success-key")
            self.assertIsNone(result["second"])
            self.assertTrue(result["inFlightWhileWaiting"])
            self.assertFalse(result["inFlight"])

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, page_action=exercise)

    def test_expanded_log_dom_is_bounded_to_current_window(self):
        def exercise(page):
            result = page.evaluate("""async () => {
                const { renderEvents } = await import('/modules/jobs.js');
                const events = Array.from({length: 10001}, (_, index) => ({
                    sequence: index + 1, type: 'step', step: 'inspect_rom', status: 'success',
                    timestamp: '2026-09-06T00:00:00.000Z', message: `event-${index}`
                }));
                const section = renderEvents(events, true);
                const rows = section.querySelectorAll('ol > li:not(.event-group)').length;
                const total = section.querySelector('.job-events-heading span')?.textContent || '';
                return {rows, total};
            }""")
            self.assertLessEqual(result["rows"], 500)
            self.assertIn("500", result["total"])
            self.assertIn("10001", result["total"])

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, page_action=exercise)

    def test_primary_controls_meet_target_hitbox(self):
        def exercise(page):
            result = page.evaluate("""() => {
                const selectors = [
                    '#app-menu-toggle', '#source-uri', '#paste-source', '#clear-source',
                    '#probe-source', '#device', '#preset', '#submit-recipe',
                    '.bottom-nav button'
                ];
                return selectors.flatMap((selector) => [...document.querySelectorAll(selector)])
                    .filter((node) => node.getClientRects().length && getComputedStyle(node).visibility !== 'hidden')
                    .map((node) => ({id: node.id || node.className, width: node.getBoundingClientRect().width, height: node.getBoundingClientRect().height}));
            }""")
            self.assertTrue(result)
            undersized = [item for item in result if item["width"] < 44 or item["height"] < 44]
            self.assertEqual(undersized, [])

        _render_mini_app_in_chrome(api_enabled=True, jobs_fixture=True, page_action=exercise)

    def test_exact_responsive_viewports_keep_grouped_navigation_and_collapsed_options(self):
        for width, height in [(320, 740), (390, 844), (768, 1024), (1280, 900), (844, 390)]:
            with self.subTest(width=width, height=height):
                def exercise(page):
                    result = page.evaluate("""() => ({
                        width:innerWidth, documentWidth:document.documentElement.scrollWidth,
                        dockVisible:getComputedStyle(document.querySelector('.bottom-nav')).display !== 'none',
                        positions:document.querySelectorAll('.bottom-nav [data-nav]').length,
                        modsCollapsed:!document.querySelector('#mod-picker').open,
                        advanced:document.querySelector('.build-options details.advanced').open,
                        facts:document.querySelectorAll('.source-summary dd').length,
                        form:document.querySelector('#recipe-form').contains(document.querySelector('#submit-recipe'))
                    })""")
                    self.assertEqual(result["width"], width)
                    self.assertLessEqual(result["documentWidth"], width)
                    self.assertTrue(result["dockVisible"])
                    self.assertEqual(result["positions"], 5)
                    self.assertTrue(result["modsCollapsed"])
                    self.assertEqual(result["facts"], 4)
                    self.assertFalse(result["advanced"])
                    self.assertTrue(result["form"])

                _render_mini_app_in_chrome(api_enabled=True, window_width=width, window_height=height, page_action=exercise)

    def test_botfather_grouped_geometry_keeps_build_in_single_readable_column(self):
        for width, height in [(390, 844), (1280, 900)]:
            with self.subTest(width=width):
                def exercise(page):
                    result = page.evaluate("""() => {
                        const main = document.querySelector('main').getBoundingClientRect();
                        const hero = document.querySelector('.build-hero').getBoundingClientRect();
                        const source = document.querySelector('.source-section').getBoundingClientRect();
                        const review = document.querySelector('.build-review').getBoundingClientRect();
                        return {
                            mainWidth: main.width, mainCenter: main.x + main.width / 2,
                            heroCenter: hero.x + hero.width / 2,
                            sourceWidth: source.width, sourceX: source.x,
                            reviewBelowSource: review.y > source.y,
                            formDisplay: getComputedStyle(document.querySelector('#recipe-form')).display,
                            oldDocketAbsent: document.querySelector('.dispatch-docket') === null,
                        };
                    }""")
                    self.assertLessEqual(result["mainWidth"], 560)
                    self.assertAlmostEqual(result["mainCenter"], width / 2, delta=1)
                    self.assertAlmostEqual(result["heroCenter"], width / 2, delta=1)
                    self.assertGreater(result["sourceX"], 0)
                    self.assertLessEqual(result["sourceWidth"], result["mainWidth"])
                    self.assertTrue(result["reviewBelowSource"])
                    self.assertEqual(result["formDisplay"], "block")
                    self.assertTrue(result["oldDocketAbsent"])

                _render_mini_app_in_chrome(api_enabled=True, window_width=width, window_height=height, page_action=exercise)

    def test_telegram_owns_header_and_wukong_restores_dock_navigation(self):
        for width in (390, 1280):
            with self.subTest(width=width):
                def exercise(page):
                    result = page.evaluate("""() => ({
                        telegramHosted: document.body.classList.contains('telegram-hosted'),
                        fallbackHeader: getComputedStyle(document.querySelector('.app-header')).display,
                        dockVisible: getComputedStyle(document.querySelector('.bottom-nav')).display !== 'none',
                        navigationItems: document.querySelectorAll('.bottom-nav [data-nav]').length,
                        duplicateRows: document.querySelector('.bf-build-navigation') !== null,
                        deliveryHeading: Boolean(document.querySelector('.delivery-section > .bf-section-head')),
                        sourceFacts: document.querySelectorAll('.source-summary dd').length,
                    })""")
                    self.assertTrue(result["telegramHosted"])
                    self.assertEqual(result["fallbackHeader"], "none")
                    self.assertTrue(result["dockVisible"])
                    self.assertEqual(result["navigationItems"], 5)
                    self.assertFalse(result["duplicateRows"])
                    self.assertTrue(result["deliveryHeading"])
                    self.assertEqual(result["sourceFacts"], 4)

                _render_mini_app_in_chrome(api_enabled=True, window_width=width, window_height=844, page_action=exercise)

    def test_mobile_build_configuration_fields_stack_without_excess_density(self):
        for width in (390, 768):
            with self.subTest(width=width):
                def exercise(page):
                    result = page.evaluate("""() => {
                        const grid = document.querySelector('#build-options .field-grid.three');
                        const fields = [...grid.children].map((field) => {
                            const box = field.getBoundingClientRect();
                            const control = field.querySelector('select');
                            return {x: Math.round(box.x), width: Math.round(box.width), height: Math.round(control.getBoundingClientRect().height)};
                        });
                        return {columns: getComputedStyle(grid).gridTemplateColumns.split(' ').length, gap: getComputedStyle(grid).rowGap, fields};
                    }""")
                    self.assertEqual(result["columns"], 1)
                    self.assertEqual(result["gap"], "0px")
                    self.assertEqual(len({field["x"] for field in result["fields"]}), 1)
                    self.assertGreaterEqual(min(field["height"] for field in result["fields"]), 44)
                    self.assertLessEqual(max(field["height"] for field in result["fields"]), 48)

                _render_mini_app_in_chrome(api_enabled=True, window_width=width, window_height=900, page_action=exercise)
