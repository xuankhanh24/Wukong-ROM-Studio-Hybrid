---
name: Wukong ROM Studio
description: Authentic Google Material Design 3 (MD3 / Material You) technical workbench for ROM building with Liquid Glass Floating Island Dock.
---

# Wukong ROM Studio MD3 design system

The Mini App is an operate surface crafted according to authentic **Google Material Design 3 (Material You)** specifications, paired with a custom **Floating Island Dock (Liquid Glass)** that anchors the navigation seamlessly across both mobile and desktop.

One intuitive page leads through: **ROM source → configuration → review and build**. The design uses true Material You components (`@material/web`), tonal surface containers, elevation hierarchy, pill action buttons, filter chips, and animated switches.

## Material 3 Tokens & Roles

```css
/* Google Material 3 System Color Roles */
--md-sys-color-primary: #0b57d0;              /* Google Blue MD3 */
--md-sys-color-on-primary: #ffffff;
--md-sys-color-primary-container: #d3e3fd;    /* Tonal Primary Container */
--md-sys-color-on-primary-container: #041e49;
--md-sys-color-secondary-container: #d7e3f7;  /* Tonal Secondary Container */
--md-sys-color-on-secondary-container: #101c2b;
--md-sys-color-surface-container-lowest: #ffffff;
--md-sys-color-surface-container-low: #f7f2fa;
--md-sys-color-surface-container: #f1ecf4;
--md-sys-color-surface-container-high: #ebe6ee;
--md-sys-color-surface-container-highest: #e6e0e9;
--md-sys-color-outline: #74777f;
--md-sys-color-outline-variant: #c4c7d0;

/* Preserved Floating Island Dock (Liquid Glass) */
--liquid-accent: var(--md-sys-color-primary);
--dock-glass-bg: color-mix(in srgb, var(--surface) 78%, transparent);
--dock-glass-border: color-mix(in srgb, var(--surface) 85%, rgba(255, 255, 255, 0.65));
--dock-lens-bg: color-mix(in srgb, var(--md-sys-color-primary-container) 85%, var(--surface));

/* Typography */
--font-body: "Geist Sans", ui-sans-serif, system-ui, sans-serif;
--font-mono: "Geist Mono", ui-monospace, monospace;
```

## Material 3 Components & Architecture

1. **Smart Source with Floating Label**:
   - Implements `<md-outlined-text-field>` with authentic animated floating labels, outline notch, and supporting text.
   - Quick action chips (`Tìm ROM`, `Dán`, `Xóa`) styled as MD3 Assist Chips and Filled Tonal Buttons.
2. **MOD Selection as Authentic MD3 Filter Chips**:
   - Rendered as 34px Material 3 Filter Chips with 8px corner radius (`--md-sys-shape-corner-small`).
   - Selected state shifts to `secondary-container` tint (`#d7e3f7` / `#3f4759`) with Material checkmark icon and on-secondary-container typography.
3. **Delivery Controls as Authentic MD3 Switches**:
   - 52×32px pill track with 16px unselected / 24px selected enlarged handle thumb and embedded checkmark SVG.
4. **Dispatch Docket & Action Buttons**:
   - Elevated Card (`surface-container-low`, 24px rounded corners, Level 2 elevation shadow).
   - Submit action as Google MD3 Filled Button (48px pill, primary background, ripple state layer).
   - Extended Floating Action Button (Extended FAB) with signature 16px squircle radius and Level 3 elevation.
5. **Floating Island Dock (Liquid Glass)**:
   - Preserved with full SVG shell, liquid lens refraction, chromatic aberration, and centered avatar across mobile and desktop.
