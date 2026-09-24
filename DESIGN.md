---
name: Wukong ROM Studio
description: Google Material Design 3 (MD3) technical workbench for identifying ROMs, composing builds, and monitoring jobs.
---

# Wukong ROM Studio design system (Google MD3 Edition)

The Mini App is an operate surface designed under **Google Material Design 3 (MD3 / Material You)** with **Telegram Mini App WebApp integration**: one structured flow leads through **ROM source → configuration → review and build**. The interface serves everyday ROM builders and administrators, featuring adaptive density between mobile and desktop while preserving the iconic **Floating Island Dock (Liquid Glass)** navigation.

## Google Pure MD3 Tokens

```css
/* Color Roles - Light Mode (Key Seed: #0b57d0) */
--md-sys-color-primary: #0b57d0;
--md-sys-color-on-primary: #ffffff;
--md-sys-color-primary-container: #d3e3fd;
--md-sys-color-on-primary-container: #041e49;
--md-sys-color-secondary: #00639b;
--md-sys-color-secondary-container: #c2e7ff;
--md-sys-color-surface: #f8f9fa;
--md-sys-color-surface-container-lowest: #ffffff;
--md-sys-color-surface-container-low: #f3f4f6;
--md-sys-color-surface-container: #edf2f7;
--md-sys-color-surface-container-high: #e7ecf2;
--md-sys-color-surface-container-highest: #e1e3e8;
--md-sys-color-outline: #747775;
--md-sys-color-outline-variant: #c4c7c5;
--md-sys-color-error: #ba1a1a;
--md-sys-color-error-container: #ffdad6;

/* Dark Mode (Dedicated Pure Palette) */
--md-sys-color-primary: #a8c7fa;
--md-sys-color-on-primary: #062e6f;
--md-sys-color-primary-container: #0842a0;
--md-sys-color-surface: #111318;
--md-sys-color-surface-container: #1d2024;
--md-sys-color-outline: #8e918f;
--md-sys-color-error: #ffb4ab;

/* Typography & Shapes */
--font-body: "Geist Sans", ui-sans-serif, system-ui, sans-serif;
--font-mono: "Geist Mono", ui-monospace, monospace;
--md-sys-shape-corner-small: 8px;
--md-sys-shape-corner-large: 16px;
--md-sys-shape-corner-extra-large: 28px;
--md-sys-shape-corner-full: 9999px;
```

Body text is 14–16px, labels are at least 12px, and interactive controls maintain a 44px minimum touch target. Typography uses native system font stacks with Geist Sans, while Geist Mono is reserved for IDs, paths, versions, and measurements. Light and Dark modes follow Google's authentic tonal palettes, independent of host client tinting.

## Surface & Component Rules

- **Preserved Floating Island Dock (Liquid Glass):** The bottom dock (Studio, Jobs, profile avatar, Library, System) is preserved intact with SVG path clipping and fluid lens indicator, utilizing MD3 tonal glass variables (`--md-sys-color-surface-container-high`, `--md-sys-color-primary-container`).
- **Google `@material/web` Integration:** Official Web Components (`<md-filled-button>`, `<md-outlined-button>`, `<md-fab>`, `<md-switch>`, `<md-checkbox>`, `<md-dialog>`, `<md-tabs>`, `<md-linear-progress>`) are integrated via granular ESM chunking.
- **Adaptive Responsive Density:**
  - **Mobile (< 840px):** Single-column MD3 Card stack, Extended FAB (`#dispatch-fab`) floating above the dock, and modal dialogs/bottom sheets for device pickers.
  - **Desktop (≥ 840px):** 2-Column Split Dossier workbench: 65% Main configuration column and 35% Sticky MD3 Elevated Card for the Live Review Docket and Build CTA.
- **Switches & Form Controls:** Delivery options utilize Google MD3 standard 52x32px toggle switches with animated thumbs; inputs feature 8px rounded corners with prominent focus borders.
- **Jobs & History:** Status filters leverage MD3 tabs with pill badges; running jobs utilize Google MD3 rounded linear progress indicators.

## Asset and Performance Rules

`build.mjs` bundles application code with esbuild, supporting Lit-based Web Components and ESM code splitting. CSS is structured into fonts, tokens, components, screens, dock, and accessibility sheets. All assets are minified and served with immutable caching, strictly passing 8/8 regression unit tests.
