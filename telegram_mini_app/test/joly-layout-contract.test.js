import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const read = (relative) => fs.readFileSync(path.join(root, relative), "utf8");

test("Liquid Dock preserves the legacy geometry and interaction constants", () => {
  const dock = read("joly-app/src/components/liquid-dock/LiquidDock.tsx");
  assert.match(dock, /capRadius\s*=\s*Math\.min\(42,\s*width\s*\/\s*5\)/);
  assert.match(dock, /capCenterY\s*=\s*45/);
  assert.match(dock, /ResizeObserver/);
  assert.match(dock, /easeOutQuint/);
  assert.match(dock, /duration\s*=\s*360/);
  assert.match(dock, /velocity\.current\s*=\s*velocity\.current\s*\*\s*\.6\s*\+\s*instantaneous\s*\*\s*\.4/);
  assert.match(dock, /velocity\.current\s*\*\s*\.08/);
  assert.match(dock, /Math\.abs\(delta\)\s*>\s*5/);
  assert.match(dock, /350/);
  assert.match(dock, /profile-dragging/);
  assert.match(dock, /className="bottom-nav liquid-dock"/);
  assert.match(dock, /data-nav=\{navName\}/);
  assert.match(dock, /id=\{isProfile \? "dock-profile" : undefined\}/);
  assert.match(dock, /aria-label=\{label\}/);
  assert.match(dock, /<path[^>]+ref=\{clipPathRef\}/);
});

test("Liquid Dock uses a translucent frosted-glass material", () => {
  const css = read("joly-app/src/joly-native.css");
  assert.match(css, /--dock-glass-bg:\s*color-mix\([^;]+transparent\)/);
  assert.match(css, /\.liquid-dock\s*\{[^}]*z-index:\s*60/);
  assert.match(css, /\.liquid-dock \.liquid-surface\s*\{[^}]*background:\s*var\(--dock-glass-bg\)/);
  assert.match(css, /\.liquid-dock \.liquid-surface\s*\{[^}]*-webkit-backdrop-filter:\s*blur\(10px\)/);
  assert.match(css, /\.liquid-dock \.liquid-surface\s*\{[^}]*backdrop-filter:\s*blur\(10px\)/);
  assert.match(css, /\.liquid-dock \.liquid-lens\s*\{[^}]*-webkit-backdrop-filter:\s*blur\(10px\)/);
});

test("Liquid Dock keeps the legacy mobile footprint and avatar-photo glow", () => {
  const css = read("joly-app/src/joly-native.css");
  const dock = read("joly-app/src/components/liquid-dock/LiquidDock.tsx");
  assert.match(css, /@media \(max-width:\s*860px\)[\s\S]*?\.liquid-dock\s*\{[^}]*right:\s*10px;[^}]*left:\s*10px;[^}]*width:\s*auto;[^}]*max-width:\s*none;[^}]*transform:\s*none;/);
  assert.match(css, /@media \(max-width:\s*390px\)[\s\S]*?\.liquid-dock\s*\{[^}]*right:\s*7px;[^}]*left:\s*7px;/);
  assert.match(css, /\.liquid-dock > button\.dock-profile::before\s*\{[^}]*background-image:\s*var\(--avatar-image,\s*none\)[^}]*filter:\s*blur\(5px\)\s+saturate\(1\.45\)/);
  assert.match(css, /\.liquid-dock\.is-pressed > button\.active:not\(\.dock-profile\)\s*\{[^}]*transform:\s*scale\(1\.12\)/);
  assert.match(dock, /"--avatar-image":\s*account\?\.photoUrl\s*\?/);
});

test("operational color roles and refined Dock icons remain explicit", () => {
  const css = read("joly-app/src/joly-native.css");
  const dock = read("joly-app/src/components/liquid-dock/LiquidDock.tsx");
  assert.match(css, /--brand:\s*oklch\(/);
  assert.match(css, /--brand-soft:\s*oklch\(/);
  assert.match(css, /\.j-button-default\s*\{[^}]*background:\s*var\(--brand\)/);
  assert.match(css, /\.liquid-dock > button\.active:not\(\.dock-profile\)\s*\{[^}]*color:\s*var\(--dock-active\)/);
  for (const icon of ["PackagePlus", "ListChecks", "LibraryBig", "Cog"]) assert.match(dock, new RegExp(icon));
  assert.doesNotMatch(dock, /\bGauge\b/);
  assert.doesNotMatch(dock, /LegacyDockIcon/);
});

test("notifications stack at the top-right instead of near the Dock", () => {
  const main = read("joly-app/src/main.tsx");
  const css = read("joly-app/src/joly-native.css");
  assert.match(main, /AnimatedToastProvider position="top-right"/);
  assert.doesNotMatch(main, /AnimatedToastProvider position="bottom-/);
  assert.match(css, /#root > \.pointer-events-none\.fixed\.z-50\s*\{[^}]*top:\s*calc\(68px/);
  assert.match(css, /#root > \.pointer-events-none\.fixed\.z-50\s*\{[^}]*right:\s*max\(16px/);
});

test("Catalog keeps a responsive ROM list instead of forcing the desktop table on mobile", () => {
  const catalog = read("joly-app/src/features/catalog/RomLibrary.tsx");
  const css = read("joly-app/src/joly-native.css");
  assert.match(catalog, /className="rom-desktop-table"/);
  assert.match(catalog, /className="rom-mobile-list"/);
  assert.match(css, /\.rom-library > \.rom-desktop-table\s*\{\s*display:\s*none;/);
  assert.match(css, /\.rom-mobile-list\s*\{\s*display:\s*grid;/);
});

test("production routes do not render Lab-only showcase fixtures", () => {
  const app = read("joly-app/src/App.tsx");
  for (const id of ["infinite-ribbon", "expanded-map", "github-star", "github-contributors", "video-player", "feedback-widget", "image-comparison"]) {
    assert.doesNotMatch(app, new RegExp(`id=["']${id}["']`));
  }
  assert.doesNotMatch(app, /42 JOLY SURFACES/);
  assert.doesNotMatch(app, /window\.prompt/);
});

test("responsive layout includes hard overflow and safe-area guards", () => {
  const css = read("joly-app/src/joly-native.css");
  assert.match(css, /\.screen\s*\{[^}]*min-width:\s*0/);
  assert.match(css, /\.profile-actions\s*\{[^}]*flex-wrap:\s*wrap/);
  assert.match(css, /--dock-safe-height/);
  assert.match(css, /min-height:\s*44px/);
  assert.match(css, /\.studio-grid\s*\{[^}]*align-items:\s*start/);
});
