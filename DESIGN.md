---
name: Wukong ROM Studio
description: Wukong interface reconstructed from the observed @BotFather Mini App.
---

# Wukong Mini App design system

Wukong reconstructs the visual grammar observed in the authenticated @BotFather Mini App and the ten user-provided screenshots: centered identity/page-purpose hero, flat dark canvas, solid grouped rows, understated explanatory copy, blue links and primary actions, restrained iconography, and Telegram-owned top chrome. Wukong keeps its own name, icon, terminology, and ROM workflows. BotFather's deployed bundle and private design assets are not dependencies. [Source investigation](docs/research/botfather-mini-app-source.md) distinguishes the deployed assets from an open-source repository.

## Pattern mapping

| BotFather pattern | Wukong usage |
| --- | --- |
| Centered identity and short introduction | Wukong build, jobs, and library hero |
| New bot form | Create-build form with source, configuration, delivery, and live review groups |
| My bots and search | Job history with search and filters |
| Bot detail | Job progress, event log, artifacts, and contextual actions |
| Settings lists | ROM library, service settings, account, and admin operations |
| Telegram bottom action and back | Build submit and contextual navigation in the Telegram WebApp bridge |
| Persistent workspace navigation | Five-item bottom dock for Studio, Jobs, Profile, Catalog, and System |

## Source of truth

`telegram_mini_app/styles/tokens.css` holds measured dark primitives, Telegram light-theme fallbacks, semantic colors, and component aliases. `botfather-reference.css` composes the new reference-derived shell, heroes, rows, forms, and lists, while `botfather-components.css` and `botfather-screens.css` cover shared and dynamic states across jobs, library, profile, system, and admin. `styles.css` imports these active files.

System mode follows Telegram color-scheme changes. The dark palette matches values measured in the running BotFather Mini App; light mode uses Telegram theme parameters where available because the supplied references are dark. Light and dark overrides remain available under Mini App settings. BotFather declares ProductSans, but Wukong intentionally uses licensed system-font fallbacks rather than importing that deployed font. Screen content respects Telegram's safe-area values, the browser viewport, keyboard resizing, and reduced-motion preference.

## Interaction rules

- The first screen is the create-build form. MOD selection and pipeline controls stay collapsed until needed so source, core configuration, delivery, and review are scannable. The review group updates as inputs change.
- Telegram owns its native top bar. Wukong uses a persistent five-item bottom dock rather than repeating navigation after the form. Ordinary browsers retain a fallback title/menu bar. Secondary screens use Telegram BackButton or the browser fallback back control.
- On Telegram versions that support it, the Mini App requests fullscreen at launch, including launches from the chat menu button. Older or unsupported clients retain the expanded viewport.
- Telegram MainButton is the create-build action and reflects ready, disabled, and loading states. Ordinary browsers retain the in-form button.
- Loading, empty, failed, expired-session, maintenance, and uncertain-submission states remain visible with a recovery action. Vietnamese and English labels are maintained together.
- All actions retain at least a 44px touch target when practical; focus styles, labels, contrast, and announcement regions remain available to assistive technology.

## Verification

Run `npm test` and `npm run build` in `telegram_mini_app`. Compare the mobile layout with public BotFather Mini App references at the same viewport, then inspect light/dark, desktop, keyboard, and long-content states. Check build submission, job details, ROM search, and admin flows using authenticated Telegram access.
