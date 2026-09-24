import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

test("uses measured BotFather visual tokens and newly composed Wukong screens", async () => {
  const [tokens, styles, html] = await Promise.all([
    readFile(new URL("../styles/tokens.css", import.meta.url), "utf8"),
    readFile(new URL("../styles.css", import.meta.url), "utf8"),
    readFile(new URL("../index.html", import.meta.url), "utf8")
  ]);
  assert.match(tokens, /--font-body: -apple-system, BlinkMacSystemFont/);
  assert.match(tokens, /--bf-night-bg: #1a2026/);
  assert.match(tokens, /--bf-night-group: #212a33/);
  assert.match(tokens, /--bf-blue: #4cb2ff/);
  assert.match(tokens, /--canvas: var\(--tg-theme-secondary-bg-color/);
  assert.match(styles, /botfather-components\.css/);
  assert.match(styles, /botfather-screens\.css/);
  assert.match(styles, /botfather-reference\.css/);
  assert.doesNotMatch(styles, /fonts\.css|dock\.css|studio\.css/);
  assert.match(html, /id="app-menu"/);
  assert.match(html, /class="bf-hero build-hero"/);
  assert.match(html, /class="bf-page-section source-section"/);
  assert.doesNotMatch(html, /class="bottom-nav"|class="dispatch-fab"|geist-sans-variable|runtime-strip|dossier-section|dispatch-docket/);
});
