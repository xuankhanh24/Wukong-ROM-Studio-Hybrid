import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import tailwindcss from "@tailwindcss/vite";
import path from "node:path";
import { readFile } from "node:fs/promises";

export default defineConfig({
  root: import.meta.dirname,
  plugins: [react(), tailwindcss(), {
    name: "wukong-local-catalog",
    configureServer(server) {
      server.middlewares.use("/catalog.json", async (_request, response, next) => {
        try {
          const catalog = await readFile(path.resolve(import.meta.dirname, "../catalog.json"));
          response.statusCode = 200;
          response.setHeader("Content-Type", "application/json; charset=utf-8");
          response.end(catalog);
        } catch {
          next();
        }
      });
    },
  }],
  resolve: { alias: { "@": path.resolve(import.meta.dirname, "src"), src: path.resolve(import.meta.dirname, "src") } },
  server: { host: "127.0.0.1", port: 5173 },
  build: {
    outDir: process.env.WUKONG_JOLY_OUTDIR || path.resolve(import.meta.dirname, "../.joly-static"),
    emptyOutDir: true,
    sourcemap: false,
    // The runtime does not consume Vite's manifest. Keeping it out of the
    // deployable bundle avoids publishing source-module paths in production.
    manifest: false,
    rollupOptions: {
      output: {
        entryFileNames: "assets/[name]-[hash].js",
        chunkFileNames: "assets/[name]-[hash].js",
        assetFileNames: "assets/[name]-[hash][extname]",
      },
    },
  },
});
