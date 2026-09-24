---
name: Wukong ROM Studio
description: Warm, quiet technical workbench for identifying ROMs, composing builds, and monitoring jobs.
---

# Wukong ROM Studio design system

The Mini App is an operate surface designed under the **Telegram Native HIG (Human Interface Guidelines)**: one page leads through **ROM source → configuration → review and build**. The interface serves everyday builders and administrators, with advanced controls collapsed until needed. It leverages dynamic Telegram client theming, translucent glassmorphism surfaces, rounded inset grouped lists, and a unified Floating Island Dock (Liquid Glass) with a centered avatar across mobile and desktop.

## Tokens

```css
--canvas: var(--tg-theme-secondary-bg-color, #efeff4);
--surface: var(--tg-theme-bg-color, #ffffff);
--surface-raised: var(--tg-theme-section-bg-color, var(--tg-theme-bg-color, #ffffff));
--surface-soft: color-mix(in srgb, var(--canvas) 65%, var(--surface));
--ink: var(--tg-theme-text-color, #000000);
--muted: var(--tg-theme-hint-color, #8e8e93);
--line: var(--tg-theme-section-separator-color, rgba(60, 60, 67, 0.12));
--line-strong: color-mix(in srgb, var(--ink) 24%, transparent);
--accent: var(--tg-theme-button-color, #2481cc);
--accent-text: var(--tg-theme-button-text-color, #ffffff);
--success: #34c759;
--danger: var(--tg-theme-destructive-text-color, #ff3b30);
--font-body: "Geist Sans", ui-sans-serif, system-ui, sans-serif;
--font-mono: "Geist Mono", ui-monospace, monospace;
--target-size: 44px;
```

Body text is 14–16px, labels are at least 12px, and interactive controls use a 44px minimum hitbox. Typography uses native system font stacks with Geist Sans, while Geist Mono / JetBrains Mono is reserved for IDs, paths, versions, and measurements. All colors dynamically adapt to the user's active Telegram theme (Light, Dark, Night, Tinted).

## Surface rules

- Source analysis shows device, version, Android version, and size first. Remaining metadata lives in a `Thông tin chi tiết` disclosure.
- Preset and MOD version remain visible. MOD selection, debloat paths, pipeline steps, publication, and runner controls live in `Tùy chọn nâng cao`; a summary remains visible beside the controls.
- The desktop review docket stays beside the workbench. Mobile receives the same review content in flow, with reserved space above the dock and a keyboard state that hides floating actions.
- Jobs foreground status, current step, updated time, and next action. Technical facts are disclosed separately. Event rendering is bounded to 500 items, paged for older history, and only follows the tail when the reader is already there.
- The dock always contains Studio, Jobs, centered profile avatar, Library, and System. Telegram safe-area values, `visualViewport`, reduced motion, older Telegram bridges, and ordinary browser fallbacks are handled by `modules/viewport.js`.
- Error, offline, expired session, maintenance, and uncertain submission states preserve the last useful data and provide a nearby recovery action.

## Asset and performance rules

`build.mjs` creates hashed ES module chunks with esbuild. Admin controls and ZIP inflation are lazy chunks. Fonts are bundled under `assets/fonts` with their licenses; the Mini App has no chained external font dependency. CSS is split into fonts, tokens, components, screens, dock, and Studio layout files, then bundled for deployment. Vercel serves hashed assets with immutable caching while the HTML remains revalidated.

The shared transport uses a 15-second default timeout, bounded read retries, `Retry-After`, request scopes, and abort-on-supersede. Artifact metadata is computed once and passed through publishing adapters. Build metrics record stage duration, bytes, cache state, checksum, checkpoint, and upload measurements.
