import { $, $$, requestScopes, runtime, state, themeMedia } from "./state.js";
import { closeAdminUserPage, renderProfileView } from "./profile.js";
import { loadJobs } from "./jobs.js";
import { loadRomDevices } from "./rom-catalog.js";
import { loadAdminUsers, loadLatestBatch } from "./admin.js";
import { syncTelegramMainButton } from "./build.js";

const views = new Set(["build", "jobs", "catalog", "profile", "system"]);

function telegramColorScheme() {
  const scheme = String(runtime.TelegramApp?.colorScheme || "").toLowerCase();
  return scheme === "light" || scheme === "dark" ? scheme : null;
}

function resolvedTheme() {
  return state.theme === "system"
    ? telegramColorScheme() || (themeMedia?.matches ? "dark" : "light")
    : state.theme;
}

function applyTheme(theme = state.theme, persist = false) {
  state.theme = ["system", "light", "dark"].includes(theme) ? theme : "system";
  const scheme = resolvedTheme();
  document.documentElement.dataset.theme = state.theme;
  document.documentElement.dataset.colorScheme = scheme;
  const fallbackHeader = scheme === "dark" ? "#17212b" : "#ffffff";
  document.querySelector('meta[name="theme-color"]')?.setAttribute("content", state.theme === "system" ? runtime.TelegramApp?.themeParams?.bg_color || fallbackHeader : fallbackHeader);
  $$("[data-theme-value]").forEach((button) => {
    const active = button.dataset.themeValue === state.theme;
    button.classList.toggle("active", active);
    button.setAttribute("aria-pressed", String(active));
  });
  if (persist) localStorage.setItem("wukong-theme", state.theme);
  try {
    runtime.TelegramApp?.setHeaderColor?.(state.theme === "system" ? "bg_color" : fallbackHeader);
    runtime.TelegramApp?.setBackgroundColor?.(state.theme === "system" ? "secondary_bg_color" : scheme === "dark" ? "#0e1621" : "#f1f2f6");
  } catch (_) {}
}

function handleSystemThemeChange() {
  if (state.theme === "system") applyTheme("system");
}

function bindTelegramThemeEvents() {
  if (!runtime.TelegramApp || runtime.TelegramApp === runtime.telegramThemeEventsBoundTo) return;
  runtime.TelegramApp.onEvent?.("themeChanged", handleSystemThemeChange);
  runtime.telegramThemeEventsBoundTo = runtime.TelegramApp;
}

function closeAppMenu() {
  const menu = $("#app-menu");
  const toggle = $("#app-menu-toggle");
  if (!menu || !toggle) return;
  menu.hidden = true;
  toggle.setAttribute("aria-expanded", "false");
}

function navigate(name, smooth = true) {
  if (!views.has(name)) name = "build";
  closeAppMenu();
  if (name !== "system") {
    for (const scope of ["adminUsers", "adminUser", "adminActivity", "adminJob", "batch"]) requestScopes.cancel(scope);
    for (const timer of ["adminUsersPollTimer", "adminUserPollTimer", "batchPollTimer"]) {
      clearTimeout(state[timer]); state[timer] = null;
    }
  }
  document.body.dataset.view = name;
  const nativeBack = Boolean(runtime.TelegramApp?.BackButton && runtime.TelegramApp?.platform && runtime.TelegramApp.platform !== "unknown");
  document.body.classList.toggle("telegram-native-back", nativeBack);
  if ($("#system")?.classList.contains("admin-user-open")) {
    closeAdminUserPage({ restoreFocus: false, scroll: false });
  }
  $$(".view").forEach((node) => node.classList.toggle("active", node.id === name));
  $$("#app-menu [data-nav]").forEach((node) => {
    const active = node.dataset.nav === name;
    node.classList.toggle("active", active);
    if (active) node.setAttribute("aria-current", "page"); else node.removeAttribute("aria-current");
  });
  if (smooth) runtime.TelegramApp?.HapticFeedback?.selectionChanged?.();
  if (runtime.TelegramApp?.BackButton) {
    if (name === "build") runtime.TelegramApp.BackButton.hide();
    else runtime.TelegramApp.BackButton.show();
  }
  history.replaceState(null, "", `#${name}`);
  syncTelegramMainButton(!$("#submit-recipe")?.disabled);
  window.scrollTo({ top: 0, behavior: smooth && !prefersReducedMotion() ? "smooth" : "auto" });
  if (name === "jobs") loadJobs({ force: true }).catch(() => {});
  if (name === "profile") renderProfileView();
  if (name === "catalog") loadRomDevices();
  if (name === "system" && state.me?.role === "admin") {
    loadAdminUsers().catch(() => {});
    if (!$("#admin-batch-page")?.hidden) loadLatestBatch().catch(() => {});
  }
}

function prefersReducedMotion() {
  return window.matchMedia?.("(prefers-reduced-motion: reduce)")?.matches || false;
}

export { applyTheme, bindTelegramThemeEvents, closeAppMenu, handleSystemThemeChange, navigate, prefersReducedMotion };
