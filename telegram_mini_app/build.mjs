const variant = String(process.env.WUKONG_MINI_APP_UI || "legacy").trim().toLowerCase();
await import(variant === "joly" ? "./build-joly.mjs" : "./build-legacy.mjs");
