import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

const bodyStack = '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif';
const monoStack = 'SFMono-Regular, Consolas, "Liberation Mono", Menlo, Courier, monospace';

test("uses the NanoReview system typography stacks without loading Geist", async () => {
  const [tokens, studio, styles, html] = await Promise.all([
    readFile(new URL("../styles/tokens.css", import.meta.url), "utf8"),
    readFile(new URL("../styles/studio.css", import.meta.url), "utf8"),
    readFile(new URL("../styles.css", import.meta.url), "utf8"),
    readFile(new URL("../index.html", import.meta.url), "utf8")
  ]);

  assert.match(tokens, new RegExp(`font-family: ${bodyStack.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")}`));
  assert.ok(studio.includes(`--font-body: ${bodyStack}`));
  assert.ok(studio.includes(`--font-data: ${monoStack}`));
  assert.doesNotMatch(styles, /fonts\.css/);
  assert.doesNotMatch(html, /geist-sans-variable\.woff2/);
});
