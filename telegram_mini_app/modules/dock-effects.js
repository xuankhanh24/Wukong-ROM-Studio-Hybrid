const isUnbundledSource = new URL(import.meta.url).pathname.endsWith("/modules/dock-effects.js");

let liquidGlass = null;
let liquidGlassFrame = 0;
let liquidGlassReady = false;

function canUseLiquidGlass() {
  if (isUnbundledSource || window.matchMedia?.("(prefers-reduced-motion: reduce)").matches) return false;
  if (navigator.connection?.saveData || (navigator.deviceMemory && navigator.deviceMemory < 4)) return false;
  try {
    const canvas = document.createElement("canvas");
    return Boolean(canvas.getContext("webgl2") || canvas.getContext("webgl"));
  } catch (_) {
    return false;
  }
}

function waitForVisibleDock(root) {
  if (root.getBoundingClientRect().width > 0 && root.getBoundingClientRect().height > 0) return Promise.resolve();
  return new Promise((resolve) => {
    const observer = new MutationObserver(() => {
      const bounds = root.getBoundingClientRect();
      if (bounds.width <= 0 || bounds.height <= 0) return;
      observer.disconnect();
      resolve();
    });
    observer.observe(document.body, { attributes: true, subtree: true, attributeFilter: ["class", "hidden", "style"] });
  });
}

function markDockGlassChanged() {
  if (!liquidGlassReady || liquidGlassFrame) return;
  liquidGlassFrame = requestAnimationFrame(() => {
    liquidGlassFrame = 0;
    liquidGlass?.markChanged?.();
  });
}

function updateDockMorphIcons(activeName, immediate = false) {
  document.querySelectorAll(".bottom-nav button[data-nav][data-icon-rest]").forEach((button) => {
    const icon = button.querySelector("morph-icon");
    if (!icon?.set) return;
    const path = button.dataset.nav === activeName ? button.dataset.iconActive : button.dataset.iconRest;
    if (immediate) icon.set(path); else icon.morphTo(path, "snappy");
  });
  markDockGlassChanged();
  window.setTimeout(markDockGlassChanged, 420);
}

async function initializeMorphIcons() {
  if (isUnbundledSource) return;
  try {
    const { defineMorphIcon } = await import("morphicons/element");
    defineMorphIcon();
    await customElements.whenDefined("morph-icon");
    document.querySelectorAll("morph-icon").forEach((icon) => { icon.reducedMotion = "user"; });
    document.documentElement.classList.add("morphicons-ready");
    const activeName = document.querySelector(".bottom-nav button.active[data-nav]")?.dataset.nav || "build";
    updateDockMorphIcons(activeName, true);
  } catch (error) {
    console.info("Morphicons fallback active", error);
  }
}

function initializeDisclosureMorphs() {
  document.querySelectorAll("details[data-morph-disclosure]").forEach((details) => {
    const icon = details.querySelector("morph-icon");
    if (!icon) return;
    const sync = (immediate = false) => {
      if (!icon.set) return;
      const path = details.open ? details.dataset.iconOpen : details.dataset.iconClosed;
      if (immediate) icon.set(path); else icon.morphTo(path, "snappy");
    };
    details.addEventListener("toggle", () => sync(false));
    customElements.whenDefined("morph-icon").then(() => sync(true));
  });
}

async function initializeLiquidGlass() {
  if (!canUseLiquidGlass()) return;
  const root = document.querySelector(".bottom-nav");
  const lens = root?.querySelector(":scope > .liquid-lens");
  if (!root || !lens || !document.documentElement.classList.contains("morphicons-ready")) return;
  await waitForVisibleDock(root);
  lens.dataset.config = JSON.stringify({
    blurAmount: .12,
    refraction: .46,
    chromAberration: .025,
    edgeHighlight: .16,
    specular: .2,
    fresnel: .84,
    distortion: .012,
    cornerRadius: 32,
    zRadius: 24,
    opacity: .8,
    saturation: .08,
    tintStrength: .04,
    shadowOpacity: .16,
    shadowSpread: 8,
    shadowOffsetY: 3
  });
  try {
    await document.fonts?.ready;
    const { LiquidGlass } = await import("@ybouane/liquidglass");
    liquidGlass = await LiquidGlass.init({ root, glassElements: [lens] });
    liquidGlassReady = true;
    root.classList.add("has-webgl-liquidglass");
    markDockGlassChanged();
  } catch (error) {
    liquidGlass?.destroy?.();
    liquidGlass = null;
    liquidGlassReady = false;
    root.classList.remove("has-webgl-liquidglass");
    console.info("LiquidGlass CSS fallback active", error);
  }
}

async function initializeDockEffects() {
  initializeDisclosureMorphs();
  await initializeMorphIcons();
  await initializeLiquidGlass();
}

export { initializeDockEffects, markDockGlassChanged, updateDockMorphIcons };
