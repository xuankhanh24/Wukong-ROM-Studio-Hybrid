import assert from "node:assert/strict";
import crypto from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import test from "node:test";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const appRoot = path.join(root, "joly-app");

test("JolyUI registry manifest is complete and pinned", () => {
  const manifest = JSON.parse(fs.readFileSync(path.join(appRoot, "joly-registry.json"), "utf8"));
  assert.equal(manifest.pinnedCommit, "3d4fb97066f173e8eb8ab433726dee24577e2cc6");
  assert.equal(manifest.entries.length, 42);
  for (const entry of manifest.entries) {
    const file = path.join(appRoot, entry.sourceFile);
    assert.ok(fs.existsSync(file), `${entry.slug} source exists`);
    const hash = crypto.createHash("sha256").update(fs.readFileSync(file)).digest("hex");
    assert.equal(entry.checksum, `sha256:${hash}`, `${entry.slug} checksum`);
  }
});

test("build dispatcher keeps legacy rollback and Joly selection", () => {
  const dispatcher = fs.readFileSync(path.join(root, "build.mjs"), "utf8");
  assert.match(dispatcher, /WUKONG_MINI_APP_UI/);
  assert.match(dispatcher, /build-legacy\.mjs/);
  assert.match(dispatcher, /build-joly\.mjs/);
  assert.match(fs.readFileSync(path.join(appRoot, "index.html"), "utf8"), /__WUKONG_TELEGRAM_MINI_APP_API_URL__/);
});

test("production visual contract is Joly zinc and Liquid Dock has five routes", () => {
  const css = fs.readFileSync(path.join(appRoot, "src/joly-native.css"), "utf8");
  const app = fs.readFileSync(path.join(appRoot, "src/App.tsx"), "utf8");
  const dock = fs.readFileSync(path.join(appRoot, "src/components/liquid-dock/LiquidDock.tsx"), "utf8");
  assert.match(css, /oklch\(1 0 0\)/);
  assert.doesNotMatch(css, /warm-paper|cobalt|linear-gradient\(/i);
  assert.match(dock, /view: "studio"[\s\S]*view: "jobs"[\s\S]*view: "profile"[\s\S]*view: "catalog"[\s\S]*view: "system"/);
  assert.doesNotMatch(app, /id="ai-prompt-box"/);
  assert.doesNotMatch(app, /id="liquid-metal-button"/);
  assert.match(app, /publicPost<.*session\/pair/);
  assert.match(app, /includeHistory=0&jobId=/);
  assert.match(app, /LazyAdminConsole/);
  assert.match(fs.readFileSync(path.join(appRoot, "src/api/recipe.ts"), "utf8"), /maxBytes = 4096/);
});

test("Joly production build does not publish Vite source-path metadata", () => {
  const config = fs.readFileSync(path.join(appRoot, "vite.config.ts"), "utf8");
  assert.match(config, /manifest:\s*false/);
});
