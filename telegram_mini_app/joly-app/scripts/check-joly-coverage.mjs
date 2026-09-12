import crypto from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const here = path.dirname(fileURLToPath(import.meta.url));
const appRoot = path.resolve(here, "..");
const manifest = JSON.parse(fs.readFileSync(path.join(appRoot, "joly-registry.json"), "utf8"));
const errors = [];

if (manifest.pinnedCommit !== "3d4fb97066f173e8eb8ab433726dee24577e2cc6") {
  errors.push(`Unexpected JolyUI commit: ${manifest.pinnedCommit}`);
}
if (!Array.isArray(manifest.entries) || manifest.entries.length !== 42) {
  errors.push(`Expected 42 registry entries, found ${manifest.entries?.length ?? 0}`);
}

const sourceText = fs.readdirSync(path.join(appRoot, "src"), { recursive: true })
  .filter((file) => String(file).endsWith(".tsx"))
  .map((file) => fs.readFileSync(path.join(appRoot, "src", file), "utf8"))
  .join("\n");
const labText = fs.readFileSync(path.join(appRoot, "src/features/lab/Lab.tsx"), "utf8");

for (const entry of manifest.entries || []) {
  const sourcePath = path.resolve(appRoot, entry.sourceFile);
  if (!fs.existsSync(sourcePath)) {
    errors.push(`${entry.slug}: missing source ${entry.sourceFile}`);
    continue;
  }
  const digest = crypto.createHash("sha256").update(fs.readFileSync(sourcePath)).digest("hex");
  if (entry.checksum !== `sha256:${digest}`) errors.push(`${entry.slug}: checksum mismatch`);
  if (!labText.includes(`"${entry.slug}"`)) errors.push(`${entry.slug}: missing Lab example`);
  if (entry.usage === "core") {
    const stem = path.basename(entry.sourceFile, ".tsx");
    if (!sourceText.includes(`/${stem}`) && !sourceText.includes(`./${stem}`)) {
      errors.push(`${entry.slug}: marked core but has no import in the app`);
    }
  }
}

if (errors.length) {
  console.error(`JolyUI coverage failed (${errors.length} issue(s))`);
  for (const error of errors) console.error(`- ${error}`);
  process.exitCode = 1;
} else {
  console.log(`JolyUI coverage OK: ${manifest.entries.length}/42 at ${manifest.pinnedCommit}`);
}
