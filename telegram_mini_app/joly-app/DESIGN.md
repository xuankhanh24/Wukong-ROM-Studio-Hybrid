---
name: Wukong JolyUI Production
description: JolyUI-native operating surface for the Telegram ROM build flow.
source: https://github.com/Johuniq/jolyui
pinnedCommit: 3d4fb97066f173e8eb8ab433726dee24577e2cc6
---

# Visual authority

Production React screens use the official JolyUI registry source copied into
`src/components/ui`. Wukong supplies product data, workflow, identity and
Vietnamese/English content; it does not introduce a second component grammar.

# Tokens

Light mode uses the official JolyUI zinc roles: white canvas/card, near-black
foreground, near-black primary, zinc secondary/muted/accent, zinc border and
ring. Dark mode inverts the surface hierarchy: near-black canvas, zinc card,
white foreground, light primary and translucent white borders. Tokens live in
`src/joly-native.css` and are applied through `html.dark`, `data-theme` and
`data-color-scheme`.

# Typography and geometry

Geist is loaded from the local `public` font assets; Geist Mono is reserved for
IDs, hashes, paths, versions, timestamps and logs. Titles remain compact at
27–34px, body text is 13–14px, and labels are 11–12px. Controls use an 8px
radius; panels use 10–12px, a single 1px border and one surface step. Ordinary
panels have no shadow. Shadow is reserved for the Liquid Dock, dialogs, the
official Command Palette and official Animated Toast.

# Shell and Liquid Dock

The shell is a 56px masthead plus a bounded operating canvas. The five-item
Liquid Dock is intentionally retained from the legacy product: Studio, Jobs,
Profile avatar, Catalog and System. Its SVG shell, liquid surface/lens,
pointer velocity, 5px drag threshold, nearest-slot snap, haptic selection,
reduced-motion behavior and safe-area handling remain product behavior. Only
its color, border, focus and shadow tokens are mapped to JolyUI roles.

# Component rule

When the registry has a suitable component, use its source implementation.
Creative or network-dependent components stay in the admin/development Lab
with deterministic local fixtures. The Lab is lazy-loaded, has 42/42 registry
coverage, and is never downloaded by an authenticated non-admin user.

# Prohibited legacy language

Do not reintroduce the warm-paper canvas, cobalt wash, gradient headings,
oversized SaaS hero, decorative glass card wall or deep shadow stacks. Product
chrome stays restrained zinc; expressive shader/rainbow/liquid-metal color is
confined to the official JolyUI component that owns it.
