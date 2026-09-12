import type { ThemePreference } from "../api/types";

type TelegramWebApp = {
  platform?: string;
  colorScheme?: string;
  initData?: string;
  initDataUnsafe?: unknown;
  version?: string;
  ready?: () => void;
  expand?: () => void;
  close?: () => void;
  setHeaderColor?: (color: string) => void;
  setBackgroundColor?: (color: string) => void;
  openTelegramLink?: (url: string) => void;
  onEvent?: (event: string, callback: () => void) => void;
  offEvent?: (event: string, callback: () => void) => void;
  HapticFeedback?: { selectionChanged?: () => void; notificationOccurred?: (kind: string) => void };
  BackButton?: { show?: () => void; hide?: () => void; onClick?: (callback: () => void) => void; offClick?: (callback: () => void) => void };
  sendData?: (data: string) => void;
};

export function telegramWebApp(): TelegramWebApp | null {
  return (window as Window & { Telegram?: { WebApp?: TelegramWebApp } }).Telegram?.WebApp || null;
}

export function readLaunchToken(): string {
  try {
    const url = new URL(window.location.href);
    const supplied = url.searchParams.get("wkLaunch") || "";
    if (supplied) {
      sessionStorage.setItem("wukong-signed-launch", supplied);
      localStorage.setItem("wukong-signed-launch", supplied);
      url.searchParams.delete("wkLaunch");
      window.history.replaceState(null, "", `${url.pathname}${url.search}${url.hash}`);
      return supplied;
    }
    return sessionStorage.getItem("wukong-signed-launch") || localStorage.getItem("wukong-signed-launch") || "";
  } catch {
    return "";
  }
}

export function storeLaunchToken(token: string): boolean {
  const value = String(token || "");
  const parts = value.split(".");
  const valid = /^v1\.\d+\.\d+\.\d+\.[0-9a-f]{64}$/i.test(value) && Number(parts[3]) > Math.floor(Date.now() / 1000);
  if (!valid) return false;
  try {
    sessionStorage.setItem("wukong-signed-launch", value);
    localStorage.setItem("wukong-signed-launch", value);
  } catch { /* browser storage can be blocked */ }
  return true;
}

export function openTelegramLink(url: string): void {
  try {
    const app = telegramWebApp();
    if (app?.openTelegramLink) { app.openTelegramLink(url); return; }
  } catch { /* browser fallback below */ }
  window.open(url, "_blank", "noopener,noreferrer");
}

export function readInitData(): string {
  const app = telegramWebApp();
  if (app?.initData) return app.initData;
  try {
    const raw = window.location.hash.startsWith("#") ? window.location.hash.slice(1) : window.location.hash;
    const encoded = new URLSearchParams(raw).get("tgWebAppData");
    return encoded ? decodeURIComponent(encoded) : "";
  } catch {
    return "";
  }
}

export function hasTelegramIdentity(): boolean {
  return Boolean(readInitData() || readLaunchToken());
}

export function resolvedTheme(preference: ThemePreference): "light" | "dark" {
  if (preference !== "system") return preference;
  const telegramScheme = telegramWebApp()?.colorScheme?.toLowerCase();
  if (telegramScheme === "light" || telegramScheme === "dark") return telegramScheme;
  return window.matchMedia?.("(prefers-color-scheme: dark)").matches ? "dark" : "light";
}

export function applyTelegramTheme(preference: ThemePreference): "light" | "dark" {
  const resolved = resolvedTheme(preference);
  const root = document.documentElement;
  root.dataset.theme = preference;
  root.dataset.colorScheme = resolved;
  root.classList.toggle("dark", resolved === "dark");
  document.querySelector('meta[name="theme-color"]')?.setAttribute("content", resolved === "dark" ? "#09090b" : "#ffffff");
  const app = telegramWebApp();
  try {
    app?.setHeaderColor?.(resolved === "dark" ? "#09090b" : "#ffffff");
    app?.setBackgroundColor?.(resolved === "dark" ? "#09090b" : "#ffffff");
  } catch {
    // Browser preview and old Telegram bridges do not implement these methods.
  }
  return resolved;
}

export function initializeTelegram(): void {
  const app = telegramWebApp();
  try {
    app?.ready?.();
    app?.expand?.();
  } catch {
    // The Mini App remains usable in a normal browser.
  }
}

export function hapticSelection(): void {
  try { telegramWebApp()?.HapticFeedback?.selectionChanged?.(); } catch { /* optional */ }
}

export function closeTelegram(): void {
  try { telegramWebApp()?.close?.(); } catch { /* optional */ }
}
