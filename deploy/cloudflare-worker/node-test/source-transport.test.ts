import { readFileSync } from "node:fs";
import { afterEach, describe, expect, it, vi } from "vitest";
import { createSourceTransportHandler } from "../../../api/source-transport";

const claimUrl = "https://wukong-control-plane-staging.wukong-rom-studio-api.workers.dev/internal/source-transport/claim";
const token = "a".repeat(43);

function request(): Request {
  return new Request("https://wukong-rom-studio.vercel.app/api/source-transport", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ claimUrl, token })
  });
}

const publicDns = async () => ["8.8.8.8"];
const nativeDns = vi.hoisted(() => vi.fn());
vi.mock('node:dns/promises', () => ({ lookup: nativeDns }));
afterEach(() => { vi.unstubAllGlobals(); nativeDns.mockReset(); });

describe("Vercel source transport", () => {
  it('resolves an exact catalog selection through the website form without fetching the CDN', async () => {
    const calls: Request[] = [];
    const handler = createSourceTransportHandler({resolveAddresses: publicDns, fetchImpl: async (input, init) => {
      const current = new Request(input, init);
      calls.push(current);
      const url = new URL(current.url);
      if (url.pathname === '/internal/source-transport/claim') return Response.json({operation: 'probe',
        sourceUrl: 'https://roms.danielspringer.at/api/ota.php?id=abc123', maximumBytes: 1, range: 'bytes=0-0', resolveOnly: true});
      if (url.pathname === '/api/ota.php') return Response.json({releases: [{id: 'abc123', device: 'OP ACE 5',
        region: 'CN', version: 'PKG110_16.0.10.500(CN01)', model: 'PKG110', size: 8718572190, md5: 'known-md5'}]});
      if (url.searchParams.get('ota_action') === 'resolve_json') {
        expect(current.headers.get('Cookie')).toBe('PHPSESSID=selected');
        expect(await current.text()).toBe('k=selected-key&csrf=selected-csrf');
        return Response.json({ok: true, url: 'https://cdn.allawnfs.com/rom.zip?Expires=2000000000&Signature=private'});
      }
      expect(url.hostname).toBe('roms.danielspringer.at');
      if (current.method === 'POST') {
        expect(await current.text()).toBe('device=OP+ACE+5&region=CN&version_index=1');
        expect(current.headers.get('Cookie')).toBe('PHPSESSID=initial');
        return new Response(null, {status: 302, headers: {Location: '/index.php?view=ota#resultBox', 'Set-Cookie': 'PHPSESSID=selected; Path=/'}});
      }
      if (current.headers.get('Cookie') === 'PHPSESSID=selected') {
        return new Response('<p class="ota-version-name">PKG110_<strong>16.0.10.500</strong>(CN01)</p><div id="resultBox" data-ota-key="selected-key" data-csrf="selected-csrf"></div>');
      }
      return new Response('<select id="device" data-devices=\'{&quot;OP ACE 5&quot;:{&quot;CN&quot;:[&quot;other&quot;,&quot;PKG110_16.0.10.500(CN01)&quot;]}}\'></select>',
        {headers: {'Set-Cookie': 'PHPSESSID=initial; Path=/'}});
    }});
    const response = await handler(request());
    expect(response.status).toBe(200);
    expect(await response.json()).toMatchObject({resolvedUrl: expect.stringContaining('cdn.allawnfs.com'), sizeBytes: 8718572190, checksum: 'known-md5'});
    expect(calls).toHaveLength(6);
  });
  it('reports the failed network phase without leaking the signed URL', async () => {
    const warning = vi.spyOn(console, 'warn').mockImplementation(() => {});
    const handler = createSourceTransportHandler({resolveAddresses: publicDns, fetchImpl: async input => {
      if (String(input) === claimUrl) return Response.json({operation: 'probe',
        sourceUrl: 'https://cdn.allawnfs.com/rom.zip?Signature=private', range: 'bytes=0-0', maximumBytes: 1});
      throw Object.assign(new TypeError('failed https://cdn.allawnfs.com/?Signature=private'),
        {cause: {code: 'UND_ERR_CONNECT_TIMEOUT'}});
    }});
    const response = await handler(request());
    expect(response.status).toBe(502);
    const result = await response.text();
    expect(JSON.parse(result)).toMatchObject({code: 'source_transport_timeout', stage: 'cdn'});
    expect(result).not.toContain('Signature');
    expect(result).not.toContain('private');
    const diagnostics = JSON.stringify(warning.mock.calls);
    expect(diagnostics).toContain('source_transport_timeout');
    expect(diagnostics).not.toContain('Signature');
    expect(diagnostics).not.toContain(token);
    warning.mockRestore();
  });
  it('uses runtime DNS without making an extra external DNS HTTP request', async () => {
    nativeDns.mockResolvedValue([{ address: '8.8.8.8', family: 4 }]);
    vi.stubGlobal('fetch', vi.fn(() => { throw Error('Unexpected external DNS request'); }));
    const handler = createSourceTransportHandler({ fetchImpl: async input =>
      String(input) === claimUrl ? Response.json({ operation: 'probe',
        sourceUrl: 'https://cdn.allawnfs.com/rom.zip', range: 'bytes=0-0', maximumBytes: 1 }) :
        new Response(new Uint8Array([0]), {status: 206, headers: {'Content-Range': 'bytes 0-0/4096'}})
    });
    expect((await handler(request())).status).toBe(200);
    expect(nativeDns).toHaveBeenCalledWith('cdn.allawnfs.com', {all: true});
    expect(globalThis.fetch).not.toHaveBeenCalled();
  });

  it('still rejects a runtime DNS answer containing a private destination', async () => {
    nativeDns.mockResolvedValue([{ address: '8.8.8.8', family: 4 }, {address: '127.0.0.1', family: 4}]);
    const fetchImpl = vi.fn(async () => Response.json({operation: 'probe',
      sourceUrl: 'https://cdn.allawnfs.com/rom.zip', range: 'bytes=0-0', maximumBytes: 1}));
    const response = await createSourceTransportHandler({fetchImpl})(request());
    expect(response.status).toBe(400);
    expect(fetchImpl).toHaveBeenCalledTimes(1); // Claim only; never contact the unsafe destination.
  });
  it("accepts every public Worker origin configured for deployment", async () => {
    const config = JSON.parse(readFileSync(new URL("../wrangler.jsonc", import.meta.url), "utf8")) as {
      vars: { WUKONG_PUBLIC_API_URL: string };
      env: Record<string, { vars: { WUKONG_PUBLIC_API_URL: string } }>;
    };
    const publicUrls = new Set([
      config.vars.WUKONG_PUBLIC_API_URL,
      ...Object.values(config.env).map((environment) => environment.vars.WUKONG_PUBLIC_API_URL)
    ]);
    for (const publicUrl of publicUrls) {
      const configuredClaimUrl = new URL("/internal/source-transport/claim", publicUrl).toString();
      const handler = createSourceTransportHandler({
        resolveAddresses: publicDns,
        fetchImpl: async (input) => String(input) === configuredClaimUrl ? Response.json({
          operation: "catalog", sourceUrl: "https://roms.danielspringer.at/api/ota.php?latest=1",
          range: "", maximumBytes: 2 * 1024 * 1024
        }) : Response.json({ releases: [] })
      });
      const response = await handler(new Request("https://wukong-rom-studio.vercel.app/api/source-transport", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ claimUrl: configuredClaimUrl, token })
      }));
      expect(response.status, configuredClaimUrl).toBe(200);
    }
  });

  it("allows only the bounded latest snapshot for device discovery without a model filter", async () => {
    for (const query of ["latest=1", "latest=0", "latest=1&help=1"]) {
      const handler = createSourceTransportHandler({
        resolveAddresses: publicDns,
        fetchImpl: async (input) => String(input) === claimUrl ? Response.json({
          operation: "catalog", sourceUrl: `https://roms.danielspringer.at/api/ota.php?${query}`,
          range: "", maximumBytes: 2 * 1024 * 1024
        }) : Response.json({ releases: [] })
      });
      expect((await handler(request())).status).toBe(query === "latest=1" ? 200 : 403);
    }
  });
  it("fetches a bounded catalog only with a redeemed claim and rejects redirects", async () => {
    for (const redirect of [false, true]) {
      const handler = createSourceTransportHandler({
        resolveAddresses: publicDns,
        fetchImpl: async (input, init) => {
          const current = new Request(input, init);
          if (current.url === claimUrl) return Response.json({
            operation: "catalog", sourceUrl: "https://roms.danielspringer.at/api/ota.php?device=OP+13&latest=1",
            range: "", maximumBytes: 2 * 1024 * 1024
          });
          expect(current.url).toBe("https://roms.danielspringer.at/api/ota.php?device=OP+13&latest=1");
          expect(init?.redirect).toBe("manual");
          return redirect ? new Response(null, { status: 302, headers: { Location: "https://other.example" } }) :
            Response.json({ releases: [{ id: "catalog-fixture" }] });
        }
      });
      const response = await handler(request());
      expect(response.status).toBe(redirect ? 502 : 200);
      if (!redirect) expect(await response.json()).toEqual({ releases: [{ id: "catalog-fixture" }] });
    }
  });
  it("resolves a Daniel page through its cookie-bound resolver and probes OPlus", async () => {
    const calls: Request[] = [];
    const handler = createSourceTransportHandler({
      resolveAddresses: publicDns,
      fetchImpl: async (input, init) => {
        const current = input instanceof Request ? input : new Request(input, init);
        calls.push(current);
        const url = new URL(current.url);
        if (url.pathname === "/internal/source-transport/claim") {
          expect(current.headers.get("Authorization")).toBe(`TransportClaim ${token}`);
          return Response.json({
            operation: "probe",
            sourceUrl: "https://roms.danielspringer.at/index.php?view=ota&build=fixture",
            range: "bytes=0-0",
            maximumBytes: 1
          });
        }
        if (url.hostname === "roms.danielspringer.at" && url.searchParams.has("build")) {
          return new Response(
            '<div id="resultBox" data-url="" data-ota-key="ota-key" data-csrf="csrf-token"></div>',
            { headers: { "Set-Cookie": "PHPSESSID=session; Path=/; HttpOnly" } }
          );
        }
        if (url.hostname === "roms.danielspringer.at") {
          expect(current.method).toBe("POST");
          expect(current.headers.get("Cookie")).toBe("PHPSESSID=session");
          expect(await current.text()).toBe("k=ota-key&csrf=csrf-token");
          return Response.json({
            ok: true,
            url: "https://component-ota-cn.allawntech.com/downloadCheck?fixture=1"
          });
        }
        if (url.hostname === "component-ota-cn.allawntech.com") {
          expect(current.headers.get("Range")).toBe("bytes=0-0");
          expect(current.headers.get("User-Agent")).toBe("okhttp/3.12.12");
          expect(current.headers.get("userId")).toBe("oplus-ota|16002018");
          return new Response(null, {
            status: 302,
            headers: { Location: "https://gauss-compota-c-cn.allawnfs.com/PKG110.zip?Signature=private" }
          });
        }
        if (url.hostname.endsWith("allawnfs.com")) {
          expect(current.headers.get("Range")).toBe("bytes=0-0");
          expect(current.headers.get("User-Agent")).toBe("Wukong-ROM-Studio/1.0");
          expect(current.headers.get("userId")).toBeNull();
          expect(current.headers.get("Cache-Control")).toBeNull();
        }
        return new Response(new Uint8Array([0x50]), {
          status: 206,
          headers: {
            "Content-Range": "bytes 0-0/8718572190",
            "Content-Type": "application/zip",
            "Content-Disposition": 'attachment; filename="PKG110_16.0.10.500.zip"',
            "X-Amz-Meta-Filemd5": "91661e97ec24bbfa08f3198530abdb02"
          }
        });
      }
    });

    const response = await handler(request());
    const text = await response.text();
    expect(response.status).toBe(200);
    expect(JSON.parse(text)).toMatchObject({
      filename: "PKG110_16.0.10.500.zip",
      sizeBytes: 8718572190,
      checksum: "91661e97ec24bbfa08f3198530abdb02"
    });
    expect(calls).toHaveLength(5);
  });

  it("uses the OPlus mobile headers for a pasted unresolved downloadCheck link", async () => {
    const handler = createSourceTransportHandler({
      resolveAddresses: publicDns,
      fetchImpl: async (input, init) => {
        const current = input instanceof Request ? input : new Request(input, init);
        const url = new URL(current.url);
        if (url.pathname === "/internal/source-transport/claim") {
          return Response.json({
            operation: "probe",
            sourceUrl: "https://component-ota-cn.allawntech.com/downloadCheck?fixture=1",
            range: "bytes=0-0",
            maximumBytes: 1
          });
        }
        if (url.hostname.endsWith("allawntech.com")) {
          expect(current.method).toBe("GET");
          expect(current.headers.get("User-Agent")).toBe("okhttp/3.12.12");
          expect(current.headers.get("userId")).toBe("oplus-ota|16002018");
          return new Response(null, {
            status: 302,
            headers: { Location: "https://cdn.allawnfs.com/rom.zip" }
          });
        }
        if (url.hostname.endsWith("allawnfs.com")) {
          expect(current.headers.get("User-Agent")).toBe("Wukong-ROM-Studio/1.0");
          expect(current.headers.get("userId")).toBeNull();
          expect(current.headers.get("Cache-Control")).toBeNull();
        }
        return new Response(new Uint8Array([0]), {
          status: 206,
          headers: { "Content-Range": "bytes 0-0/4096", "Content-Type": "application/zip" }
        });
      }
    });
    expect((await handler(request())).status).toBe(200);
  });

  it("rejects private redirect destinations before fetching them", async () => {
    let privateFetched = false;
    const handler = createSourceTransportHandler({
      resolveAddresses: async (hostname) => hostname === "cdn.allawnfs.com" ? ["127.0.0.1"] : ["8.8.8.8"],
      fetchImpl: async (input, init) => {
        const current = input instanceof Request ? input : new Request(input, init);
        const url = new URL(current.url);
        if (url.pathname === "/internal/source-transport/claim") {
          return Response.json({
            operation: "probe",
            sourceUrl: "https://component-ota-cn.allawntech.com/downloadCheck?fixture=1",
            range: "bytes=0-0",
            maximumBytes: 1
          });
        }
        if (url.hostname === "cdn.allawnfs.com") privateFetched = true;
        return new Response(null, { status: 302, headers: { Location: "https://cdn.allawnfs.com/rom.zip" } });
      }
    });
    const response = await handler(request());
    expect(response.status).toBe(400);
    expect(privateFetched).toBe(false);
  });

  it("streams only the exact claimed range and refuses arbitrary claim origins", async () => {
    const bytes = new Uint8Array(1024).fill(7);
    const handler = createSourceTransportHandler({
      resolveAddresses: publicDns,
      fetchImpl: async (input, init) => {
        const current = input instanceof Request ? input : new Request(input, init);
        if (new URL(current.url).pathname === "/internal/source-transport/claim") {
          return Response.json({
            operation: "range",
            sourceUrl: "https://cdn.allawnfs.com/rom.zip?Signature=private",
            range: "bytes=1024-2047",
            maximumBytes: 1024
          });
        }
        expect(current.headers.get("Range")).toBe("bytes=1024-2047");
        return new Response(bytes, {
          status: 206,
          headers: { "Content-Range": "bytes 1024-2047/4096", "Content-Length": "1024" }
        });
      }
    });
    const streamed = await handler(request());
    expect(streamed.status).toBe(206);
    expect((await streamed.arrayBuffer()).byteLength).toBe(1024);

    const forbidden = await handler(new Request("https://wukong-rom-studio.vercel.app/api/source-transport", {
      method: "POST",
      body: JSON.stringify({
        claimUrl: "https://wukong-control-plane.attacker.workers.dev/internal/source-transport/claim",
        token
      })
    }));
    expect(forbidden.status).toBe(403);
  });

  it("rejects a 206 response for a different range", async () => {
    const handler = createSourceTransportHandler({
      resolveAddresses: publicDns,
      fetchImpl: async (input, init) => {
        const current = input instanceof Request ? input : new Request(input, init);
        if (new URL(current.url).pathname === "/internal/source-transport/claim") {
          return Response.json({
            operation: "range",
            sourceUrl: "https://cdn.allawnfs.com/rom.zip",
            range: "bytes=1024-2047",
            maximumBytes: 1024
          });
        }
        return new Response(new Uint8Array(1024), {
          status: 206,
          headers: { "Content-Range": "bytes 0-1023/4096", "Content-Length": "1024" }
        });
      }
    });
    expect((await handler(request())).status).toBe(502);
  });
});
