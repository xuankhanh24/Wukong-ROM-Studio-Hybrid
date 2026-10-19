"""Local-only component QA; all non-local requests are blocked and sending is mocked.

Run with webapp-testing's with_server.py against port 8765 serving telegram_mini_app.
"""
from pathlib import Path
import json

from playwright.sync_api import sync_playwright


def main():
    shots = Path('.wkstudio/qa/reopen-notification')
    shots.mkdir(parents=True, exist_ok=True)
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=True)
        for name, width in [('mobile', 390), ('desktop', 1280)]:
            page = browser.new_page(viewport={'width': width, 'height': 900})
            sent = []

            def route_request(route):
                if route.request.url == 'http://127.0.0.1:8765/':
                    html = Path('telegram_mini_app/index.html').read_text(encoding='utf-8')
                    route.fulfill(content_type='text/html', body=html.replace(
                        '__WUKONG_TELEGRAM_MINI_APP_API_URL__', 'http://127.0.0.1:8765'))
                elif route.request.url.endswith('/v1/system/reopen-notification'):
                    sent.append(route.request.post_data_json)
                    route.fulfill(json={'queued': 2})
                elif route.request.url.startswith('http://127.0.0.1:8765/'):
                    route.continue_()
                else:
                    route.abort()

            page.route('**/*', route_request)
            page.goto('http://127.0.0.1:8765/')
            page.wait_for_load_state('networkidle')
            page.evaluate("""async () => {
              const {state, runtime} = await import('/modules/state.js');
              runtime.cachedTelegramInitData = 'local-qa-only';
              const {renderMaintenanceAdmin} = await import('/modules/admin-panel.js');
              const card = document.querySelector('#admin-maintenance');
              const dialog = document.querySelector('#reopen-notification-dialog');
              document.body.replaceChildren(card, dialog);
              document.body.style.cssText = 'display:block;padding:20px;min-height:100vh';
              card.style.cssText = 'max-width:760px;margin:0 auto';
              card.hidden = false;
              state.me = {role:'admin'};
              state.maintenance = {enabled:false, updatedAt:'local-qa-only'};
              renderMaintenanceAdmin();
            }""")
            assert page.locator('#reopen-notification').is_visible()
            page.locator('#reopen-notification-message').fill('Mini App đã mở lại. Bạn có thể tiếp tục build ROM.')
            assert len(sent) == 0
            geometry = page.locator('#reopen-notification-send').bounding_box()
            assert geometry and geometry['height'] >= 44
            assert page.evaluate('document.documentElement.scrollWidth <= innerWidth')
            page.screenshot(path=str(shots / f'{name}.png'), full_page=True)
            page.locator('#reopen-notification-send').click()
            page.locator('#reopen-notification-dialog').wait_for(state='visible')
            assert len(sent) == 0
            assert 'Mini App đã mở lại.' in page.locator('#reopen-notification-preview').inner_text()
            assert page.locator('#reopen-notification-confirm').evaluate(
                '(button) => getComputedStyle(button).color') == 'rgb(255, 255, 255)'
            page.screenshot(path=str(shots / f'{name}-confirm.png'), full_page=True)
            page.locator('#reopen-notification-confirm').click()
            page.wait_for_function("document.querySelector('#reopen-notification-status').textContent.includes('2')")
            assert sent == [{'message': 'Mini App đã mở lại. Bạn có thể tiếp tục build ROM.', 'updatedAt': 'local-qa-only'}]
            assert page.locator('#reopen-notification-send').is_disabled()
            print(json.dumps({'viewport': name, 'mockedRequests': len(sent), 'buttonHeight': geometry['height']}))
            page.close()
        browser.close()


if __name__ == '__main__':
    main()
