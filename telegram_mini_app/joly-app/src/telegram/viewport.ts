import { telegramWebApp } from "./adapter";

type ViewportBridge = {
  viewportHeight?: number;
  safeAreaInset?: Partial<Record<"top" | "right" | "bottom" | "left", number>>;
  contentSafeAreaInset?: Partial<Record<"top" | "right" | "bottom" | "left", number>>;
  onEvent?: (event: string, callback: () => void) => void;
  offEvent?: (event: string, callback: () => void) => void;
};

export function bindTelegramViewport(): () => void {
  const app = telegramWebApp() as ViewportBridge | null;
  const visual = window.visualViewport;
  const update = () => {
    const root = document.documentElement;
    const height = Number(app?.viewportHeight) || Number(visual?.height) || window.innerHeight;
    const active = document.activeElement;
    const editing = active instanceof HTMLInputElement || active instanceof HTMLTextAreaElement || active instanceof HTMLSelectElement || Boolean(active?.getAttribute("contenteditable"));
    const keyboard = editing && Boolean(visual && window.innerHeight - visual.height > 120);
    root.style.setProperty("--tg-viewport-height", `${Math.round(height)}px`);
    root.dataset.keyboard = String(keyboard);
    for (const edge of ["top", "right", "bottom", "left"] as const) {
      const telegramInset = Number(app?.safeAreaInset?.[edge]) || 0;
      const contentInset = Number(app?.contentSafeAreaInset?.[edge]) || 0;
      root.style.setProperty(`--tg-safe-${edge}`, `${Math.max(telegramInset, contentInset)}px`);
    }
    if (keyboard) active?.scrollIntoView({ block: "nearest", behavior: "instant" });
  };
  update();
  window.addEventListener("resize", update);
  document.addEventListener("focusin", update);
  document.addEventListener("focusout", update);
  visual?.addEventListener("resize", update);
  app?.onEvent?.("viewportChanged", update);
  return () => {
    window.removeEventListener("resize", update);
    document.removeEventListener("focusin", update);
    document.removeEventListener("focusout", update);
    visual?.removeEventListener("resize", update);
    app?.offEvent?.("viewportChanged", update);
  };
}
