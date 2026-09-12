import { build } from 'vite';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const root = path.dirname(fileURLToPath(import.meta.url));
const outdir = path.resolve(process.argv[2] || path.join(root, '.joly-static'));
process.env.WUKONG_JOLY_OUTDIR = outdir;
await build({ configFile: path.join(root, 'joly-app', 'vite.config.ts'), mode: 'production' });
console.log(`Built JolyUI Mini App at ${outdir}`);
