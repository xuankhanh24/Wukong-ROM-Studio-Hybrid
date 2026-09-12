# Migration baseline

Captured before the React/JolyUI production route was introduced.

| Check | Result |
| --- | --- |
| `npm test --prefix telegram_mini_app` | 7/7 pass |
| `python -m unittest tests.test_telegram_mini_app` | 55 pass; fixture server may print expected client-close tracebacks |
| `python -m unittest tests.test_control_plane_deployment` | 9 pass |
| `python -m tools.build_vercel_mini_app` | pass |
| Legacy UI source | vanilla JS modules under `telegram_mini_app/modules` |
| Local storage contract | `wukong-theme`, `wukong-language`, `wukong-active-job`, `wukong-active-batch`, `wukong-batch-request`, `wukong-signed-launch`, `wukong-session-id` |

The legacy build remains available through `WUKONG_MINI_APP_UI=legacy`. The
Joly build is selected with `WUKONG_MINI_APP_UI=joly`; both variants are fed
through the existing Python deployment injector, so API origin, release meta,
catalog export, logo and license handling stay unchanged.
