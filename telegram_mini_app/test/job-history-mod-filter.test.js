import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

test("MOD version filters use Telegram-safe native selects instead of datalist inputs", async () => {
  const [html, jobs, admin] = await Promise.all([
    readFile(new URL("../index.html", import.meta.url), "utf8"),
    readFile(new URL("../modules/jobs.js", import.meta.url), "utf8"),
    readFile(new URL("../modules/admin-panel.js", import.meta.url), "utf8")
  ]);

  assert.match(html, /<select id="job-history-mod"[^>]*>/);
  assert.doesNotMatch(html, /<input id="job-history-mod"/);
  assert.doesNotMatch(html, /<datalist id="job-mod-options"/);
  assert.match(jobs, /const modFilter = \$\("#job-history-mod"\)/);
  assert.doesNotMatch(jobs, /\$\("#job-mod-options"\)/);
  assert.match(admin, /const adminJobMod = document\.createElement\("select"\)/);
  assert.doesNotMatch(admin, /adminJobDatalist|admin-job-mod-options/);
});
