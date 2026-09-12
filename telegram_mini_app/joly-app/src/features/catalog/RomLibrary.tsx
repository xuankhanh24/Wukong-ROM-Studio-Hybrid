import { useEffect, useMemo, useState } from "react";
import { ArrowUpRight, Copy, RefreshCw, Search } from "lucide-react";
import { miniApi } from "../../api/client";
import { AnimatedTable, type ColumnDef } from "../../components/ui/animated-table";
import { Button } from "../../components/ui/button";
import { AnimatedTooltip } from "../../components/ui/animated-tooltip";

export interface RomLibraryFallbackDevice {
  product?: string;
  name?: string;
  id?: string;
  label?: string;
  brand?: string;
  regions?: Array<{ code?: string; models?: string[] }>;
}

interface RomDevice {
  id: string;
  label: string;
  brand: string;
  queryKey: "device" | "model";
  regions: Array<{ code: string; models: string[] }>;
}

interface RomRelease {
  id: string;
  device: string;
  region: string;
  model: string;
  version: string;
  securityPatch: string;
  sizeBytes: number | null;
  sourceUrl: string;
  changelogUrl: string;
}

type ReleaseRow = RomRelease & { rowId: string };

const fallbackRelease: RomRelease = {
  id: "fixture-rom",
  device: "OnePlus 13",
  region: "EU",
  model: "CPH2653",
  version: "CPH2653_16.0.10.501(EX01)",
  securityPatch: "2026-08-01",
  sizeBytes: 8_304_912_951,
  sourceUrl: "https://component-ota-cn.allawntech.com/downloadCheck?c=fixture-component&p=fixture-product&d=fixture-device",
  changelogUrl: "",
};

function normalizeDevice(input: RomLibraryFallbackDevice): RomDevice | null {
  const id = String(input.id || input.product || "").trim();
  const label = String(input.label || input.name || id).trim();
  if (!id || !label) return null;
  return {
    id,
    label,
    brand: String(input.brand || (label.match(/^(OnePlus|OPPO|Realme)/i)?.[1] || "Other")),
    queryKey: input.product ? "model" : "device",
    regions: (input.regions || []).map((region) => ({
      code: String(region.code || "").trim().toUpperCase(),
      models: (region.models || []).map(String).filter(Boolean),
    })).filter((region) => region.code),
  };
}

function normalizeRelease(input: Record<string, unknown>, index: number): RomRelease {
  return {
    id: String(input.id || `release-${index}`),
    device: String(input.device || input.name || "ROM"),
    region: String(input.region || "—").toUpperCase(),
    model: String(input.model || "—"),
    version: String(input.version || input.ota_version || input.otaVersion || "—"),
    securityPatch: String(input.securityPatch || input.security_patch || ""),
    sizeBytes: Number.isFinite(Number(input.sizeBytes ?? input.size)) ? Number(input.sizeBytes ?? input.size) : null,
    sourceUrl: String(input.sourceUrl || input.source_url || ""),
    changelogUrl: String(input.changelogUrl || input.changelog_url || ""),
  };
}

function formatBytes(value: number | null): string {
  if (!value || value <= 0) return "—";
  const units = ["B", "KB", "MB", "GB", "TB"];
  const unit = Math.min(Math.floor(Math.log(value) / Math.log(1024)), units.length - 1);
  return `${(value / 1024 ** unit).toFixed(unit > 2 ? 2 : 0)} ${units[unit]}`;
}

export function RomLibrary({ live, fallbackDevices = [], onToast, onUseSource }: { live: boolean; fallbackDevices?: RomLibraryFallbackDevice[]; onToast: (message: string) => void; onUseSource: (uri: string) => void }) {
  const [devices, setDevices] = useState<RomDevice[]>(() => fallbackDevices.map(normalizeDevice).filter((device): device is RomDevice => Boolean(device)));
  const [deviceQuery, setDeviceQuery] = useState("");
  const [selectedDevice, setSelectedDevice] = useState("");
  const [region, setRegion] = useState("");
  const [releases, setReleases] = useState<RomRelease[]>([]);
  const [status, setStatus] = useState<"idle" | "loading" | "ready" | "error">("idle");
  const [selectedId, setSelectedId] = useState("");
  const [resolvedUrl, setResolvedUrl] = useState("");
  const [resolving, setResolving] = useState(false);

  useEffect(() => {
    const controller = new AbortController();
    if (!live) return () => controller.abort();
    void miniApi.get<{ devices?: RomLibraryFallbackDevice[] }>("/v1/rom-catalog/devices", controller.signal).then((payload) => {
      const next = (payload.devices || []).map(normalizeDevice).filter((device): device is RomDevice => Boolean(device));
      if (next.length) setDevices(next);
    }).catch(() => { /* local catalog remains useful during reconnect */ });
    return () => controller.abort();
  }, [live]);

  const visibleDevices = useMemo(() => devices.filter((device) => `${device.id} ${device.label} ${device.brand}`.toLowerCase().includes(deviceQuery.toLowerCase())), [devices, deviceQuery]);
  const currentDevice = devices.find((device) => device.id === selectedDevice);
  const rows = useMemo<ReleaseRow[]>(() => releases.map((release) => ({ ...release, rowId: release.id })), [releases]);
  const columns: ColumnDef<ReleaseRow>[] = [
    { id: "release", header: "Release", cell: (row) => <div className="rom-release-cell"><strong>{row.version}</strong><small>{row.device} · {row.model}</small></div> },
    { id: "region", header: "Region", cell: (row) => <span className="status-pill status-neutral"><i />{row.region}</span> },
    { id: "patch", header: "Patch / size", cell: (row) => <span className="mono">{row.securityPatch || "—"} · {formatBytes(row.sizeBytes)}</span> },
    { id: "actions", header: "", align: "right", cell: (row) => <div className="rom-row-actions"><AnimatedTooltip content="Copy source URL"><button className="row-more" aria-label={`Sao chép ${row.version}`} onClick={(event) => { event.stopPropagation(); void navigator.clipboard?.writeText(row.sourceUrl); onToast("Đã sao chép source URL."); }}><Copy size={15} /></button></AnimatedTooltip><Button size="sm" variant="outline" disabled={!row.sourceUrl} onClick={(event) => { event.stopPropagation(); onUseSource(row.sourceUrl); }}>Dùng trong Studio <ArrowUpRight size={14} /></Button></div> },
  ];

  const search = async () => {
    if (!selectedDevice) { onToast("Chọn thiết bị trước khi tìm ROM."); return; }
    setStatus("loading"); setSelectedId(""); setResolvedUrl("");
    const params = new URLSearchParams({ latest: "0" });
    params.set(currentDevice?.queryKey || "device", selectedDevice);
    if (region) params.set("region", region);
    try {
      if (!live) {
        setReleases([fallbackRelease]);
      } else {
        const payload = await miniApi.get<{ releases?: Array<Record<string, unknown>> }>(`/v1/rom-catalog?${params.toString()}`);
        setReleases((payload.releases || []).map(normalizeRelease));
      }
      setStatus("ready");
    } catch (error) {
      setReleases([]); setStatus("error");
      onToast(error instanceof Error ? error.message : "Không thể tìm ROM catalog.");
    }
  };

  const resolve = async () => {
    const release = releases.find((item) => item.id === selectedId);
    if (!release?.sourceUrl) return;
    if (!live) { setResolvedUrl(release.sourceUrl); onToast("Đây là resolved URL fixture."); return; }
    setResolving(true);
    try {
      const payload = await miniApi.post<{ resolvedUrl?: string }>("/v1/sources/resolve", { uri: release.sourceUrl });
      setResolvedUrl(String(payload.resolvedUrl || release.sourceUrl)); onToast("Đã resolve source URL qua API.");
    } catch (error) { onToast(error instanceof Error ? error.message : "Không thể resolve source URL."); }
    finally { setResolving(false); }
  };

  return <section className="panel rom-library" aria-labelledby="rom-library-title"><div className="panel-head"><div><span className="eyebrow">ROM LIBRARY / SOURCE RESOLVER</span><h2 id="rom-library-title">Tìm ROM theo thiết bị</h2><p>Tra cứu release theo region/version rồi đưa source đã chọn về Studio.</p></div><span className="mono">{devices.length} devices</span></div><div className="rom-library-controls"><label>Device search<div className="search-field"><Search size={15} /><input value={deviceQuery} onChange={(event) => setDeviceQuery(event.target.value)} placeholder="OnePlus / OPPO / model…" /></div></label><label>Device<select value={selectedDevice} onChange={(event) => { setSelectedDevice(event.target.value); setRegion(""); setStatus("idle"); }}><option value="">Chọn thiết bị</option>{visibleDevices.map((device) => <option key={device.id} value={device.id}>{device.label} · {device.id}</option>)}</select></label><label>Region<select value={region} onChange={(event) => setRegion(event.target.value)} disabled={!currentDevice}><option value="">Tất cả region</option>{(currentDevice?.regions || []).map((entry) => <option key={entry.code} value={entry.code}>{entry.code}{entry.models.length ? ` · ${entry.models.join(", ")}` : ""}</option>)}</select></label><Button onClick={() => void search()} disabled={!selectedDevice || status === "loading"}><Search size={15} /> {status === "loading" ? "Đang tìm" : "Tìm release"}</Button></div><div className="rom-library-status" role="status" aria-live="polite">{status === "idle" ? "Chọn device để bắt đầu." : status === "loading" ? "Đang tải release…" : status === "error" ? "Không tải được release; thử lại." : `${rows.length} release phù hợp`}</div><AnimatedTable data={rows} columns={columns} loading={status === "loading"} loadingRows={2} emptyMessage={status === "ready" ? "Không có release phù hợp." : "Chưa có release được chọn."} onRowClick={(row) => setSelectedId(row.id)} /><div className="rom-library-detail">{selectedId && <><span className="eyebrow">SELECTED RELEASE</span><strong>{releases.find((item) => item.id === selectedId)?.version}</strong><div className="rom-library-actions"><Button size="sm" variant="outline" onClick={() => void resolve()} disabled={resolving}>{resolving ? <RefreshCw size={14} className="spin" /> : <ArrowUpRight size={14} />} {resolving ? "Resolving…" : "Resolve source"}</Button><Button size="sm" onClick={() => { const release = releases.find((item) => item.id === selectedId); if (release?.sourceUrl) onUseSource(release.sourceUrl); }}>Dùng trong Studio</Button></div>{resolvedUrl && <code className="mono rom-resolved-url">{resolvedUrl}</code>}</>}</div></section>;
}
