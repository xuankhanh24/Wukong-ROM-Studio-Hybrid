import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const source = fs.readFileSync(path.join(root, "src/i18n/messages.ts"), "utf8");
const blocks = [...source.matchAll(/\b(vi|en):\s*\{([\s\S]*?)\n\s*\},/g)];
const keys = blocks.map(([, language, body]) => [language, [...body.matchAll(/^\s{4}([A-Za-z][A-Za-z0-9]*):/gm)].map(([, key]) => key)]);
const base = new Set(keys.find(([language]) => language === "vi")?.[1] || []);
const errors = [];
for (const [language, values] of keys) for (const key of base) if (!values.includes(key)) errors.push(`${language} missing ${key}`);
if (errors.length) { console.error(errors.join("\n")); process.exitCode = 1; }
else console.log(`i18n parity OK: ${base.size} keys in vi/en`);
