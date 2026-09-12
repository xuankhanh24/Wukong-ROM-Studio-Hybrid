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
  assert.match(dock, /aria-label=\{item\.label\}/);
  assert.match(dock, /<path[^>]+ref=\{clipPathRef\}/);
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
