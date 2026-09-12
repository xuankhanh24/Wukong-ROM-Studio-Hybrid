import { readInitData, readLaunchToken, telegramWebApp } from "../telegram/adapter";
import type { ApiErrorShape } from "./types";

const endpoint = (document.querySelector('meta[name="wukong-mini-api-endpoint"]')?.getAttribute("content") || "").replace(/\/$/, "");
const SESSION_KEY = "wukong-mini-session-id";

function sessionId(): string {
  try {
    const existing = sessionStorage.getItem(SESSION_KEY);
    if (existing) return existing;
    const value = crypto.randomUUID();
    sessionStorage.setItem(SESSION_KEY, value);
    return value;
  } catch {
    return "browser-session";
  }
}

export class MiniAppApiError extends Error implements ApiErrorShape {
  code?: string;
  status?: number;
  payload?: unknown;
  connectionFailed?: boolean;
  retryAfterMs?: number;
}

export class MiniAppApiClient {
  readonly endpoint = endpoint.startsWith("__") ? "" : endpoint;

  get configured(): boolean { return Boolean(this.endpoint); }
  get authenticated(): boolean { return Boolean(readInitData() || readLaunchToken()); }

  private headers(extra?: HeadersInit): Headers {
    const headers = new Headers(extra);
    const initData = readInitData();
    const launchToken = readLaunchToken();
    if (initData) headers.set("Authorization", `tma ${initData}`);
    else if (launchToken) headers.set("Authorization", `wla ${launchToken}`);
    headers.set("X-Wukong-Session-Id", sessionId());
    headers.set("X-Wukong-Client-Version", "2026.09.12-joly");
    headers.set("X-Telegram-Platform", String(telegramWebApp()?.platform || "web"));
    return headers;
  }

  async request<T>(path: string, options: RequestInit = {}, requireAuthentication = true): Promise<T> {
    if (!this.endpoint) throw new MiniAppApiError("Mini App API is not configured");
    if (requireAuthentication && !this.authenticated) throw new MiniAppApiError("Telegram authentication is required");
    const headers = this.headers(options.headers);
    if (options.body && !headers.has("Content-Type")) headers.set("Content-Type", "application/json");
    const method = String(options.method || "GET").toUpperCase();
    const retryableRead = method === "GET" || method === "HEAD";
    const maxAttempts = retryableRead ? 3 : 1;

    for (let attempt = 0; attempt < maxAttempts; attempt += 1) {
      if (options.signal?.aborted) {
        const aborted = new MiniAppApiError("Request aborted");
        aborted.code = "ABORTED";
        throw aborted;
      }
      const controller = new AbortController();
      let timedOut = false;
      let externallyAborted = false;
      const timeout = window.setTimeout(() => { timedOut = true; controller.abort(); }, 15_000);
      const abortExternal = () => { externallyAborted = true; controller.abort(); };
      options.signal?.addEventListener("abort", abortExternal, { once: true });
      try {
        const response = await fetch(`${this.endpoint}${path}`, { ...options, headers, cache: "no-store", signal: controller.signal });
        const text = await response.text();
        let payload: any = null;
        try { payload = text ? JSON.parse(text) : null; } catch { payload = { message: text }; }
        if (!response.ok) {
          const error = new MiniAppApiError(payload?.message || `Request failed (${response.status})`);
          error.status = response.status;
          error.code = payload?.code;
          error.payload = payload;
          error.retryAfterMs = parseRetryAfter(response.headers.get("Retry-After"));
          if (retryableRead && attempt + 1 < maxAttempts && isRetryableStatus(response.status)) {
            await waitForRetry(error.retryAfterMs, attempt, options.signal || undefined);
            continue;
          }
          throw error;
        }
        return (payload?.payload ?? payload) as T;
      } catch (cause) {
        if (cause instanceof MiniAppApiError) throw cause;
        if (externallyAborted || options.signal?.aborted) {
          const aborted = new MiniAppApiError("Request aborted");
          aborted.code = "ABORTED";
          throw aborted;
        }
        if (retryableRead && attempt + 1 < maxAttempts && !timedOut) {
          await waitForRetry(undefined, attempt, options.signal || undefined);
          continue;
        }
        const error = new MiniAppApiError(timedOut ? "Request timed out" : cause instanceof Error ? cause.message : "Request failed");
        error.code = timedOut ? "TIMEOUT" : "NETWORK_ERROR";
        error.connectionFailed = true;
        throw error;
      } finally {
        window.clearTimeout(timeout);
        options.signal?.removeEventListener("abort", abortExternal);
      }
    }
    throw new MiniAppApiError("Request failed");
  }

  get<T>(path: string, signal?: AbortSignal): Promise<T> { return this.request<T>(path, { method: "GET", signal }); }
  post<T>(path: string, body?: unknown, headers?: HeadersInit, signal?: AbortSignal): Promise<T> {
    return this.request<T>(path, { method: "POST", headers, body: body === undefined ? undefined : JSON.stringify(body), signal });
  }
  publicRequest<T>(path: string, options: RequestInit = {}): Promise<T> { return this.request<T>(path, options, false); }
  publicPost<T>(path: string, body?: unknown, signal?: AbortSignal): Promise<T> {
    return this.publicRequest<T>(path, { method: "POST", body: body === undefined ? undefined : JSON.stringify(body), signal });
  }
  put<T>(path: string, body: unknown, signal?: AbortSignal): Promise<T> { return this.request<T>(path, { method: "PUT", body: JSON.stringify(body), signal }); }
  delete<T>(path: string, signal?: AbortSignal): Promise<T> { return this.request<T>(path, { method: "DELETE", signal }); }
}

export const miniApi = new MiniAppApiClient();

function isRetryableStatus(status: number): boolean {
  return status === 408 || status === 425 || status === 429 || status >= 500;
}

function parseRetryAfter(value: string | null): number | undefined {
  if (!value) return undefined;
  const seconds = Number(value);
  if (Number.isFinite(seconds)) return Math.max(0, Math.min(seconds * 1000, 5000));
  const timestamp = Date.parse(value);
  return Number.isFinite(timestamp) ? Math.max(0, Math.min(timestamp - Date.now(), 5000)) : undefined;
}

function waitForRetry(retryAfterMs: number | undefined, attempt: number, signal?: AbortSignal): Promise<void> {
  const fallback = Math.min(300 * (2 ** attempt), 2000);
  const delay = retryAfterMs ?? fallback;
  return new Promise((resolve, reject) => {
    if (signal?.aborted) { reject(new DOMException("Request aborted", "AbortError")); return; }
    const timer = window.setTimeout(cleanupResolve, delay);
    const onAbort = () => { window.clearTimeout(timer); cleanup(); reject(new DOMException("Request aborted", "AbortError")); };
    function cleanup() { signal?.removeEventListener("abort", onAbort); }
    function cleanupResolve() { cleanup(); resolve(); }
    signal?.addEventListener("abort", onAbort, { once: true });
  });
}
