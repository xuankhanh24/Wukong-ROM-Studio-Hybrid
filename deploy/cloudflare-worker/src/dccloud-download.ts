import { directArtifactUrl } from "./public-links";

type JsonObject = Record<string, unknown>;

export class DcCloudDownloadError extends Error {
  constructor(
    message: string,
    readonly status: number,
    readonly code: string
  ) {
    super(message);
  }
}

function fail(message: string, status: number, code: string): never {
  throw new DcCloudDownloadError(message, status, code);
}

function cloudreveShareUri(env: Env, mirrorUri: string): { endpoint: string; uri: string } {
  let share: URL;
  try {
    share = new URL(env.WUKONG_DCCLOUD_SHARE_URL.trim());
  } catch {
    return fail("DC Cloud download is not configured", 503, "dccloud_unconfigured");
  }
  if (share.protocol !== "https:") {
    return fail("DC Cloud download is not configured", 503, "dccloud_unconfigured");
  }
  const parts = share.pathname.split("/").filter(Boolean);
  if (parts.length !== 2 || parts[0] !== "s" || !/^[A-Za-z0-9_-]{1,128}$/.test(parts[1] ?? "")) {
    return fail("DC Cloud share link is invalid", 503, "dccloud_unconfigured");
  }
  const normalized = mirrorUri.replaceAll("\\", "/");
  let path = "";
  const nativePrefix = "cloudreve://my/";
  if (normalized.toLowerCase().startsWith(nativePrefix)) {
    path = normalized.slice(nativePrefix.length);
  } else {
    const rclone = normalized.match(/^[A-Za-z0-9][A-Za-z0-9_.-]*:(.+)$/);
    if (rclone?.[1]) path = rclone[1].replace(/^\/+/, "");
  }
  if (!path) return fail("DC Cloud artifact URI is invalid", 409, "dccloud_uri_invalid");
  const root = env.WUKONG_DCCLOUD_ROOT.trim().replace(/^\/+|\/+$/g, "");
  const rootPrefix = root ? `${root}/` : "";
  const nestedMarker = root ? `/${root}/` : "";
  const markerIndex = rootPrefix && path.startsWith(rootPrefix)
    ? 0
    : nestedMarker
      ? path.indexOf(nestedMarker)
      : -1;
  if (markerIndex < 0) return fail("DC Cloud artifact path is invalid", 409, "dccloud_uri_invalid");
  const relative = markerIndex === 0
    ? path.slice(rootPrefix.length)
    : path.slice(markerIndex + nestedMarker.length);
  const encoded = relative.split("/").filter(Boolean).map((segment) => {
    try {
      return encodeURIComponent(decodeURIComponent(segment));
    } catch {
      return fail("DC Cloud artifact path is invalid", 409, "dccloud_uri_invalid");
    }
  }).join("/");
  if (!encoded || encoded.split("/").some((segment) => segment === "." || segment === "..")) {
    return fail("DC Cloud artifact path is invalid", 409, "dccloud_uri_invalid");
  }
  return {
    endpoint: `${share.origin}/api/v4/file/url`,
    uri: `cloudreve://${parts[1]}@share/${encoded}`
  };
}

function isDcCloudFolderShareUrl(env: Env, value: string): boolean {
  try {
    const share = new URL(env.WUKONG_DCCLOUD_SHARE_URL.trim());
    const candidate = new URL(value);
    return candidate.origin === share.origin
      && /^\/s\/[A-Za-z0-9_-]{1,128}\/?$/.test(candidate.pathname);
  } catch {
    return false;
  }
}

export async function resolveDcCloudArtifactDownload(
  env: Env,
  mirrorUri: string
): Promise<{ downloadUrl: string; provider: "dccloud"; expires?: string }> {
  const target = cloudreveShareUri(env, mirrorUri);
  let response: Response;
  try {
    response = await fetch(target.endpoint, {
      method: "POST",
      headers: { "Accept": "application/json", "Content-Type": "application/json" },
      body: JSON.stringify({ uris: [target.uri] })
    });
  } catch {
    return fail("DC Cloud download URL could not be created", 502, "dccloud_download_failed");
  }
  const payload = await response.json().catch(() => null) as JsonObject | null;
  const cloudreveCode = Number(payload?.code ?? -1);
  const cloudreveMessage = typeof payload?.msg === "string" ? payload.msg : "";
  if (cloudreveCode === 40058 || /share(?:\s+link)?\s+(?:is\s+)?not\s+found/i.test(cloudreveMessage)) {
    const configuredRoot = env.WUKONG_DCCLOUD_ROOT.trim().replace(/^\/+|\/+$/g, "") || "ROM";
    return fail(
      `DC Cloud share link is missing or expired. Recreate the /${configuredRoot} share and update WUKONG_DCCLOUD_SHARE_URL.`,
      503,
      "dccloud_share_not_found"
    );
  }
  if (!response.ok) return fail("DC Cloud download URL could not be created", 502, "dccloud_download_failed");
  const data = payload?.data && typeof payload.data === "object" && !Array.isArray(payload.data)
    ? payload.data as JsonObject
    : null;
  const urls = data?.urls;
  const url = Array.isArray(urls) && urls[0] && typeof urls[0] === "object" && !Array.isArray(urls[0])
    ? (urls[0] as JsonObject).url
    : "";
  const downloadUrl = directArtifactUrl(url, env);
  if (cloudreveCode !== 0 || !downloadUrl || isDcCloudFolderShareUrl(env, downloadUrl)) {
    return fail("DC Cloud download URL could not be created", 502, "dccloud_download_failed");
  }
  const expires = typeof data?.expires === "string" ? data.expires : "";
  return { downloadUrl, provider: "dccloud", ...(expires ? { expires } : {}) };
}
