---
name: Wukong ROM Studio
description: Clean, minimalist technical workbench (Geist / Linear style) for ROM analysis, build configuration, and job tracking.
---

# Wukong ROM Studio design system

The Mini App is designed as a **clean, minimalist technical workbench** inspired by modern developer tools (Vercel Geist, Linear, shadcn/ui craftsmanship): zero synthetic AI aesthetic, no micro-labels (7-9px), no nested border soup, and high typographic clarity. The interface guides the user through **ROM source → configuration → review and build**. It features a unified **Floating Island Dock (Liquid Glass)** with a centered profile avatar across mobile and desktop.

## Philosophy & Core Rules

1. **Anti-AI Craftsmanship:** Generative AI UIs often produce "border soup" (nested 3-layer borders, colored outlines on every card), microscopic 7-9px uppercase kickers, noisy radial gradient backgrounds, and cluttered chips. Wukong Studio replaces this with human craftsmanship: clean flat surfaces, single 1px subtle divider lines (`#e4e4e7` / `#27272a`), generous whitespace, and purposeful contrast.
2. **Typography Hierarchy:**
   - Body & Inputs: 14–15px Geist Sans (`-0.01em` tracking).
   - Headings: 18–28px crisp semi-bold (`-0.02em` tracking).
   - Labels & Mono facts: 11–13px Geist Mono. No text smaller than 11px anywhere in the app.
   - 44px minimum touch targets for all interactive elements.
3. **Monochrome Palette with Restrained Focus:**
   - Pure zinc/slate monochrome foundation: Light mode `#ffffff` surface, `#fafafa` canvas, `#09090b` ink. Dark mode `#09090b` canvas, `#121215` surface, `#f4f4f5` ink.
   - High contrast solid action buttons (solid black/white pill button with clear hover states).
4. **Floating Island Dock (Liquid Glass):**
   - Centered, floating glass dock with physics lens, chromatic dispersion (`--liquid-chromatic`), backdrop-blur, and centered interactive profile avatar.
   - Remains consistent and responsive across phone and desktop viewports.

## Tokens

```css
--canvas: #fafafa;
--surface: #ffffff;
--surface-raised: #f4f4f5;
--surface-soft: #f4f4f5;
--ink: #09090b;
--muted: #71717a;
--line: #e4e4e7;
--line-strong: #d4d4d8;
--accent: #09090b;
--accent-text: #ffffff;
--success: #10b981;
--danger: #ef4444;
--font-body: "Geist Sans", ui-sans-serif, system-ui, sans-serif;
--font-mono: "Geist Mono", ui-monospace, monospace;
--target-size: 44px;
```

## Surface rules

- **Source analysis:** Shows device, version, Android version, and size first. Extended technical facts are cleanly grouped with single 1px divider lines.
- **Build options:** Clean input groups with vertical stacking on mobile and compact 3-column layout on desktop. Searchable MOD selector with high-contrast active state chips.
- **Floating Island Dock:** Houses Studio, Jobs, centered avatar, Library, and System. Adapts gracefully to safe areas, keyboards, and viewport shifts.
- **State transparency:** Loading, pending, success, and error states are communicated through restrained status dots, clear messaging, and inline retry buttons.
