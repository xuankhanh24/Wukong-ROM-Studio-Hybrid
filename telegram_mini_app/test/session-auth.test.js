import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";

test("startup automatically verifies session with polling retry and sessionStorage caching", async () => {
  const [sessionCode, shellCode, appCode, stateCode] = await Promise.all([
    readFile(new URL("../modules/session.js", import.meta.url), "utf8"),
    readFile(new URL("../modules/shell.js", import.meta.url), "utf8"),
    readFile(new URL("../modules/app.js", import.meta.url), "utf8"),
    readFile(new URL("../modules/state.js", import.meta.url), "utf8")
  ]);

  // Invariants:
  // 1. autoVerifySession is exported and called on startup
  assert.match(sessionCode, /export\s*\{[^}]*autoVerifySession/);
  assert.match(shellCode, /autoVerifySession\(\)/);
  assert.match(appCode, /autoVerifySession\(\)/);

  // 2. InitData is cached and retrieved from sessionStorage across hash changes
  assert.match(sessionCode, /sessionStorage\.(get|set)Item\("wukong-cached-init-data"/);
  assert.match(stateCode, /sessionStorage\.(get|set)Item\("wukong-cached-init-data"/);

  // 3. loadSession gracefully falls back from POST /v1/session/open to GET /v1/me on transient connection failures
  assert.match(sessionCode, /apiRequest\("\/v1\/me",\s*\{\s*method:\s*"GET"\s*\}\)/);

  // 4. No synchronous dead-end else renderAccessGate on initial startup
  assert.doesNotMatch(shellCode, /if\s*\(miniApiAvailable\(\)\)\s*\{[^}]*loadSession[^}]*\}\s*else\s*renderAccessGate\(\)/);

  // 5. autoVerifySession retries asynchronously without gating on platform !== "unknown"
  assert.doesNotMatch(sessionCode, /const insideTelegram = Boolean\(runtime\.TelegramApp\?\.platform && runtime\.TelegramApp\.platform !== "unknown"\);\s*if \(insideTelegram && attempt < maxAttempts\)/);

  // 6. build.js imports runtime to avoid ReferenceError when syncing Telegram MainButton
  const buildCode = await readFile(new URL("../modules/build.js", import.meta.url), "utf8");
  assert.match(buildCode, /import\s*\{[^}]*\bruntime\b[^}]*\}\s*from\s*["']\.\/state\.js["']/);
});
