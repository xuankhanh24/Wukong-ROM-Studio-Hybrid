const PLUS = "M12 5v14M5 12h14";
const MINUS = "M5 12h14";
const isUnbundledSource = new URL(import.meta.url).pathname.endsWith("/modules/visual-effects.js");

async function initializeMorphToggles() {
  if (!window.customElements) return;
  const { defineMorphIcon } = await import("morphicons/element");
  defineMorphIcon();
  document.querySelectorAll(".morph-toggle").forEach((icon) => {
    const details = icon.closest("details");
    if (!details) return;
    const fallback = details.querySelector("summary > .morph-fallback");
    icon.reducedMotion = "user";
    icon.set(details.open ? MINUS : PLUS);
    icon.hidden = false;
    if (fallback) fallback.hidden = true;
    details.addEventListener("toggle", () => icon.morphTo(details.open ? MINUS : PLUS));
  });
}

function initializeHeroGlass() {
  const hero = document.getElementById("studio-hero");
  const glass = hero?.querySelector(".studio-hero-glass");
  if (!hero || !glass || !window.IntersectionObserver || !window.WebGLRenderingContext) return;
  if (window.matchMedia?.("(prefers-reduced-motion: reduce)").matches || navigator.connection?.saveData) return;
  if (navigator.deviceMemory && navigator.deviceMemory < 4) return;

  let started = false;
  const observer = new IntersectionObserver(async (entries) => {
    if (started || !entries.some((entry) => entry.isIntersecting)) return;
    started = true;
    observer.disconnect();
    glass.dataset.config = JSON.stringify({
      blurAmount: 0.18,
      refraction: 0.48,
      chromAberration: 0.025,
      edgeHighlight: 0.14,
      specular: 0.18,
      cornerRadius: 24,
      zRadius: 18,
      opacity: 0.86,
      shadowOpacity: 0.16,
      shadowSpread: 10,
    });
    try {
      const { LiquidGlass } = await import("@ybouane/liquidglass");
      if (!hero.isConnected) return;
      await LiquidGlass.init({ root: hero, glassElements: [glass] });
      hero.classList.add("has-webgl-glass");
    } catch (error) {
      // The CSS glass surface remains available when WebGL or DOM capture fails.
      console.warn("Hero glass enhancement unavailable", error);
    }
  }, { rootMargin: "96px" });
  observer.observe(hero);
}

export function initializeVisualEffects() {
  // Raw-source previews have no import map for npm packages. Their ordinary
  // CSS and text controls stay functional; production bundles both enhancements.
  if (isUnbundledSource) return;
  initializeMorphToggles().catch(() => {});
  initializeHeroGlass();
}
