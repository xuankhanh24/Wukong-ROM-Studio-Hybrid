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
  assert.match(css, /\.liquid-dock \.liquid-surface\s*\{[^}]*-webkit-backdrop-filter:\s*blur\(20px\)/);
  assert.match(css, /\.liquid-dock \.liquid-surface\s*\{[^}]*backdrop-filter:\s*blur\(20px\)/);
  assert.match(css, /\.liquid-dock \.liquid-lens\s*\{[^}]*-webkit-backdrop-filter:\s*blur\(16px\)/);
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

test("visual hierarchy distinguishes action, support, and disabled states", () => {
  const css = read("joly-app/src/joly-native.css");
  assert.match(css, /--surface-current:\s*color-mix\(/);
  assert.match(css, /--text-secondary:\s*color-mix\(/);
  assert.match(css, /\.j-button:disabled\s*\{[^}]*background:\s*var\(--secondary\)[^}]*box-shadow:\s*none/);
  assert.match(css, /\.source-panel\s*\{[^}]*border-color:\s*color-mix\([^}]*var\(--brand\)/);
  assert.match(css, /\.active-job-panel\s*\{[^}]*background:\s*color-mix\([^}]*var\(--brand-soft\)/);
  assert.match(css, /\.health-hero\s*\{[^}]*var\(--status-success\)/);
});

test("app shell is motion-safe and does not inject theme scripts into the React root", () => {
  const main = read("joly-app/src/main.tsx");
  const app = read("joly-app/src/App.tsx");
  assert.doesNotMatch(main, /next-themes|ThemeProvider/);
  assert.match(main, /MotionConfig reducedMotion="user"/);
  assert.match(app, /useReducedMotion/);
  assert.doesNotMatch(app, /AnimatePresence mode="wait"/);
});

test("route navigation and Jobs tabs expose accessible semantics", () => {
  const app = read("joly-app/src/App.tsx");
  assert.match(app, /id="main-content"/);
  assert.match(app, /tabIndex=\{-1\}/);
  assert.match(app, /role="tablist"/);
  assert.match(app, /role="tab"/);
  assert.match(app, /aria-selected=/);
  assert.match(app, /aria-controls="jobs-panel"/);
});

test("compact and landscape layouts keep controls readable above the original Dock", () => {
  const css = read("joly-app/src/joly-native.css");
  assert.match(css, /\.brand\s*\{[^}]*min-width:\s*44px;[^}]*min-height:\s*44px/);
  assert.match(css, /\.tabs button\s*\{[^}]*min-height:\s*44px/);
  assert.match(css, /@media \(max-height:\s*520px\) and \(orientation:\s*landscape\)/);
  assert.match(css, /@media \(max-width:\s*650px\)[\s\S]*?\.control-stack select[^}]*min-height:\s*44px/);
  assert.match(css, /@media \(max-width:\s*650px\)[\s\S]*?\.beam-node\s*\{[^}]*font-size:\s*10px/);
});

test("desktop Studio keeps a compact review below Source without crossing Configuration", () => {
  const css = read("joly-app/src/joly-native.css");
  assert.match(css, /@media \(min-width:\s*1001px\)[\s\S]*?\.studio-grid \.recipe-panel\s*\{[^}]*grid-column:\s*2;[^}]*grid-row:\s*1\s*\/\s*span\s*2;/);
  assert.match(css, /@media \(min-width:\s*1001px\)[\s\S]*?\.studio-grid \.review-panel\s*\{[^}]*grid-column:\s*1;[^}]*grid-row:\s*2;[^}]*grid-template-columns:\s*150px\s+minmax\(0,\s*1fr\)/);
  assert.match(css, /grid-template-areas:\s*"review-head review-route"\s*"review-note review-note"\s*"review-action review-action"/);
});

test("desktop Profile uses a purposeful identity and account-detail split", () => {
  const css = read("joly-app/src/joly-native.css");
  assert.match(css, /\.profile-card\s*\{[^}]*grid-template-areas:\s*"identity facts"\s*"identity actions"/);
  assert.match(css, /\.profile-card-top\s*\{[^}]*grid-area:\s*identity/);
  assert.match(css, /\.profile-facts\s*\{[^}]*grid-area:\s*facts/);
  assert.match(css, /\.profile-actions\s*\{[^}]*grid-area:\s*actions/);
});

test("Joly animated tables receive semantic surface and divider tokens", () => {
  const css = read("joly-app/src/styles.css");
  for (const token of ["table-border", "table-header", "table-row-hover", "table-row-selected", "table-row-stripe"]) {
    assert.match(css, new RegExp(`--color-${token}:\\s*var\\(`));
  }
});

test("Telegram haptics are gated by runtime version support", () => {
  const adapter = read("joly-app/src/telegram/adapter.ts");
  assert.match(adapter, /function hapticSelection[\s\S]*supportsTelegramVersion\("6\.1"\)/);
});
