---
name: Wukong ROM Studio
description: Clean, minimalist technical workbench (Linear / Geist / Shadcn style) for ROM analysis, build configuration, and job monitoring.
---

# Wukong ROM Studio design system

The Mini App is designed as a **high-craft technical workbench** adhering to modern developer tool standards (Linear, Vercel Geist, shadcn/ui craftsmanship): zero synthetic AI aesthetic, no micro-labels (7-9px), no nested border clutter, and high typographic density and legibility. The interface guides the operator through **ROM source → configuration → review and build**. It features a unified **Floating Island Dock (macOS / Linear minimal frosted glass)** with a centered profile avatar across mobile and desktop.

## Philosophy & Core Rules

1. **Anti-AI Craftsmanship:** Generative AI UIs often produce "border soup" (nested 3-layer borders, colored outlines on every card), unreadable 7-9px uppercase kickers, noisy gradient backdrops, and artificial chromatic aberration. Wukong Studio replaces this with human craftsmanship: clean flat surfaces, single 1px subtle divider lines (`var(--line)`), disciplined spacing, and purposeful contrast.
2. **Typography Hierarchy (Geist / Swiss Style):**
   - Body & Inputs: 13–15px Geist Sans (`-0.01em` tracking).
   - Headings: 17–28px crisp semi-bold (`-0.025em` tracking).
   - Labels & Mono facts: 11–12px Geist Mono. No text smaller than 10px anywhere in the app.
   - 44px minimum touch targets for all interactive controls.
3. **Monochrome Foundation with Restrained Focus:**
   - Pure neutral monochrome foundation with dynamic Telegram theme fallbacks (`--tg-theme-...`).
   - High-contrast solid primary action buttons (solid ink/accent with clear hover states).
4. **Minimalist Floating Island Dock:**
   - Centered, floating frosted glass dock with 1px hairline border, subtle sliding pill highlight, and centered interactive profile avatar.
   - Free of synthetic chromatic dispersion, gooey distortion, or blurry glowing halos.
   - Remains consistent and responsive across phone and desktop viewports.

## Tokens

```css
--canvas: var(--tg-theme-secondary-bg-color, #f8f9fa);
--surface: var(--tg-theme-bg-color, #ffffff);
--surface-raised: var(--tg-theme-section-bg-color, #ffffff);
--surface-soft: color-mix(in srgb, var(--canvas) 70%, var(--surface));
--ink: var(--tg-theme-text-color, #09090b);
--muted: var(--tg-theme-hint-color, #71717a);
--line: var(--tg-theme-section-separator-color, rgba(0, 0, 0, 0.08));
--line-strong: color-mix(in srgb, var(--ink) 18%, transparent);
--accent: var(--tg-theme-button-color, #09090b);
--accent-text: var(--tg-theme-button-text-color, #ffffff);
--success: #10b981;
--danger: var(--tg-theme-destructive-text-color, #ef4444);
--font-body: "Geist Sans", ui-sans-serif, system-ui, sans-serif;
--font-mono: "Geist Mono", ui-monospace, monospace;
--target-size: 44px;
```

## Surface rules

- **Source analysis:** Shows device, version, Android version, and size first. Metadata is cleanly organized in a key-value grid with single 1px divider lines.
- **Build options:** Clean input groups with vertical stacking on mobile and compact 3-column layout on desktop. Searchable MOD selector with high-contrast active state chips.
- **Flight docket:** Sticky review docket on desktop workbench; responsive inline card on mobile viewports.
- **Floating Island Dock:** Houses Studio, Jobs, centered avatar, Library, and System. Adapts gracefully to safe areas, keyboards, and viewport shifts.
- **State transparency:** Loading, pending, success, and error states are communicated through restrained status dots, clear messaging, and inline retry buttons.

## Asset and performance rules

`build.mjs` creates hashed ES module chunks with esbuild. Admin controls and ZIP inflation are lazy chunks. Fonts are bundled under `assets/fonts` with their licenses; the Mini App has no chained external font dependency. CSS is split into fonts, tokens, components, screens, dock, and Studio layout files, then bundled for deployment. Vercel serves hashed assets with immutable caching while the HTML remains revalidated.
