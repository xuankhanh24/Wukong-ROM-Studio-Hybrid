---
name: Wukong ROM Studio
description: Material Design 3 workbench for identifying ROMs, composing builds, and monitoring jobs.
---

# Wukong ROM Studio design system

The Mini App is an operate surface: one page leads through **ROM source → configuration → review and build**. The interface serves everyday builders and administrators, with advanced controls collapsed until needed. Material Design 3 color and shape roles style the workbench. The five position Liquid Dock with a centered avatar keeps its original glass treatment and geometry.

## Tokens

```css
--md-sys-color-primary: #315f9e;
--md-sys-color-on-primary: #ffffff;
--md-sys-color-primary-container: #d8e3ff;
--md-sys-color-surface: #faf8ff;
--md-sys-color-surface-container: #efeff7;
--md-sys-color-on-surface: #191b20;
--md-sys-color-outline: #747780;
--success: #2f765b;
--font-body: "Geist Sans", ui-sans-serif, system-ui, sans-serif;
--font-data: "Geist Mono", ui-monospace, monospace;
--target-size: 44px;
```

Body text is 14–16px, labels are at least 12px, and interactive controls use a 44px minimum hitbox. Geist Sans carries prose and controls; Geist Mono is reserved for IDs, paths, versions, and measurements. `styles/material3.css` defines light and dark Material roles, filled actions, outlined fields and tonal selections. Telegram colors are used when the theme preference is `system`. The dock scopes its original colors locally so theme changes do not alter its glass appearance.

## Surface rules

- Source analysis shows device, version, Android version, and size first. Remaining metadata lives in a `Thông tin chi tiết` disclosure.
- Preset and MOD version remain visible. MOD selection, debloat paths, pipeline steps, publication, and runner controls live in `Tùy chọn nâng cao`; a summary remains visible beside the controls.
- The desktop review docket stays beside the workbench. Mobile receives the same review content in flow, with reserved space above the dock and a keyboard state that hides floating actions.
- Jobs foreground status, current step, updated time, and next action. Technical facts are disclosed separately. Event rendering is bounded to 500 items, paged for older history, and only follows the tail when the reader is already there.
- The dock always contains Studio, Jobs, centered profile avatar, Library, and System. Telegram safe-area values, `visualViewport`, reduced motion, older Telegram bridges, and ordinary browser fallbacks are handled by `modules/viewport.js`.
- Error, offline, expired session, maintenance, and uncertain submission states preserve the last useful data and provide a nearby recovery action.

## Asset and performance rules

`build.mjs` creates hashed ES module chunks with esbuild. Admin controls and ZIP inflation are lazy chunks. Fonts are bundled under `assets/fonts` with their licenses; the Mini App has no chained external font dependency. CSS is split into fonts, tokens, components, screens, dock, Studio layout and Material 3 files, then bundled for deployment. Vercel serves hashed assets with immutable caching while the HTML remains revalidated.

The shared transport uses a 15-second default timeout, bounded read retries, `Retry-After`, request scopes, and abort-on-supersede. Artifact metadata is computed once and passed through publishing adapters. Build metrics record stage duration, bytes, cache state, checksum, checkpoint, and upload measurements.
