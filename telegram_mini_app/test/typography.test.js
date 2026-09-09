import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

const bodyStack = '"Geist Sans", ui-sans-serif, system-ui, sans-serif';
const monoStack = '"Geist Mono", ui-monospace, monospace';

test("uses the original Geist typography and preloads its body font", async () => {
  const [tokens, studio, styles, html] = await Promise.all([
    readFile(new URL("../styles/tokens.css", import.meta.url), "utf8"),
    readFile(new URL("../styles/studio.css", import.meta.url), "utf8"),
    readFile(new URL("../styles.css", import.meta.url), "utf8"),
    readFile(new URL("../index.html", import.meta.url), "utf8")
  ]);

  assert.match(tokens, new RegExp(`font-family: ${bodyStack.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")}`));
  assert.ok(studio.includes(`--font-body: ${bodyStack}`));
  assert.ok(studio.includes(`--font-data: ${monoStack}`));
  assert.match(styles, /@import "\.\/styles\/fonts\.css"/);
  assert.match(html, /<link rel="preload" href="\.\/assets\/fonts\/geist-sans-variable\.woff2"/);
});
