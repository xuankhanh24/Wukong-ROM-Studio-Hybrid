import { lazy, Suspense, useEffect, useMemo, useReducer, useRef, useState, type CSSProperties, type HTMLAttributes, type ReactNode } from "react";
import { AnimatePresence, motion } from "motion/react";
import { useTheme } from "next-themes";
import { miniApi, MiniAppApiError } from "./api/client";
import { serializeRecipePayload } from "./api/recipe";
import type { AccountProfile, CatalogPayload, Job, JobsPayload, SessionPayload, SourceProbeResult, SystemHealth, ThemePreference } from "./api/types";
import { translator } from "./i18n/translator";
import type { MessageKey } from "./i18n/messages";
import { initialAppState, appReducer, type View } from "./state/app-state";
import { navigate as navigateAction, setLanguage as setLanguageAction, setTheme as setThemeAction } from "./state/actions";
import { parseView } from "./state/selectors";
import { applyTelegramTheme, closeTelegram, hasTelegramIdentity, initializeTelegram, openTelegramLink, storeLaunchToken, telegramWebApp } from "./telegram/adapter";
import { bindTelegramViewport } from "./telegram/viewport";
import { Button as JolyButton } from "./components/ui/button";
import { AnimatedTable as JolyAnimatedTable, type ColumnDef } from "./components/ui/animated-table";
import { CommandPalette as JolyCommandPalette, type CommandGroup } from "./components/ui/command-palette";
import { CodeBlock as JolyCodeBlock } from "./components/ui/code-block";
import { FileTree as JolyFileTree, type TreeNode } from "./components/ui/file-tree";
import { HighlightText as JolyHighlightText } from "./components/ui/highlight-text";
import { NumberCounter as JolyNumberCounter } from "./components/ui/number-counter";
import { AnimatedTooltip as JolyAnimatedTooltip } from "./components/ui/animated-tooltip";
import { useAnimatedToast } from "./components/ui/animated-toast";
import SegmentedButton from "./components/ui/segmented-button";
import { DateWheelPicker } from "./components/ui/date-wheel-picker";
import { AnimatedThemeToggle as JolyAnimatedThemeToggle } from "./components/ui/animated-theme-toggle";
import { VercelTabs } from "./components/ui/vercel-tabs";
import { RomLibrary, type RomLibraryFallbackDevice } from "./features/catalog/RomLibrary";
import { LiquidDock } from "./components/liquid-dock/LiquidDock";
import {
  Activity,
  AlertCircle,
  ArrowRight,
  ArrowUpRight,
  BookOpen,
  CalendarDays,
  Check,
  ChevronDown,
  ChevronRight,
  CircleHelp,
  CirclePause,
  ClipboardList,
  Cloud,
  Code2,
  Command,
  Copy,
  Cpu,
  Database,
  Download,
  FileArchive,
  FileCode2,
  FileText,
  Filter,
  Folder,
  Gauge,
  Globe2,
  HardDrive,
  HeartPulse,
  Info,
  KeyRound,
  Layers3,
  Library,
  Link2,
  LockKeyhole,
  MapPin,
  Menu,
  Moon,
  MoreHorizontal,
  PackageCheck,
  Pause,
  Play,
  RefreshCw,
  Search,
  Server,
  Settings2,
  ShieldCheck,
  Sparkles,
  Star,
  Sun,
  Terminal,
  UploadCloud,
  UserRound,
  Users,
  Video,
  WandSparkles,
  Workflow,
  Zap,
} from "lucide-react";

type SourceState = "idle" | "analyzing" | "ready" | "invalid";
type JobState = "none" | "queued" | "verifying" | "building" | "packaging" | "completed" | "failed" | "cancelled";
type CatalogModel = CatalogPayload & {
  modVersions?: string[];
  modReleaseVersions?: Record<string, string>;
  modsByVersion?: Record<string, string[]>;
  presetDefaultsByVersion?: Record<string, Record<string, string[]>>;
  defaultDebloatPaths?: string[];
  pipelineSteps?: Array<{ id: string; label: string; default?: boolean }>;
};

const LazyLab = lazy(() => import("./features/lab/Lab"));
const LazyAdminConsole = lazy(() => import("./features/system/AdminConsole"));

const editionButtons = ["Lite", "Plus", "Both", "Custom"].map((id) => ({ id, label: id }));

const mockSource = {
  product: "PKG110",
  device: "OP5D2BL1",
  version: "PKG110_16.0.9.400(CN01)",
  android: "16",
  size: "4.82 GB",
  host: "component-ota-cn.allawntech.com",
  patch: "2026-07-05",
  uri: "https://component-ota-cn.allawntech.com/downloadCheck?c=fixture-component&p=fixture-product&d=fixture-device",
};

const modOptions = [
  { id: "gapps", name: "GApps Minimal", detail: "Google services · 186 MB", tone: "blue" },
  { id: "camera", name: "Camera Tuning", detail: "HDR pipeline · 24 MB", tone: "violet" },
  { id: "dolby", name: "Dolby Atmos", detail: "Audio profile · 12 MB", tone: "orange" },
  { id: "debloat", name: "Wukong Debloat", detail: "System cleanup · 38 paths", tone: "green" },
  { id: "thermal", name: "Thermal Profile", detail: "Balanced scheduler", tone: "slate" },
  { id: "vendor", name: "Vendor Fixes", detail: "Compatibility layer · 9 MB", tone: "cyan" },
];

const jobStages = [
  { label: "Queued", detail: "Runner đang nhận job", icon: ClipboardList },
  { label: "Verified", detail: "Source và recipe hợp lệ", icon: ShieldCheck },
  { label: "Building", detail: "Đang xử lý MOD và pipeline", icon: Cpu },
  { label: "Packaging", detail: "Đang tạo ZIP flashable", icon: FileArchive },
  { label: "Completed", detail: "Artifact đã sẵn sàng", icon: PackageCheck },
];

const pipelineTree: TreeNode[] = [{
  id: "flashable",
  name: "flashable.zip",
  type: "folder",
  children: [
    { id: "vendor-boot", name: "vendor_boot.img", type: "file" },
    { id: "system-ext", name: "system_ext.img", type: "file" },
    { id: "metadata", name: "metadata.json", type: "file" },
  ],
}];

const mockJobs = [
  { id: "wk-8f21", name: "PKG110 · Plus", status: "Running", stage: "Building", progress: 68, time: "2 phút trước", owner: "Bạn" },
  { id: "wk-8d09", name: "CPH2669 · Lite", status: "Completed", stage: "Artifact ready", progress: 100, time: "Hôm qua", owner: "Bạn" },
  { id: "wk-8b31", name: "OP5D2BL1 · Custom", status: "Failed", stage: "Source verify", progress: 34, time: "Hôm qua", owner: "Bạn" },
  { id: "wk-81c3", name: "PKG110 · Lite + Plus", status: "Completed", stage: "Artifact ready", progress: 100, time: "12/09/2026", owner: "Bạn" },
];

const catalogItems = [
  { name: "PKG110", title: "OnePlus 13 CN", android: "Android 16", release: "16.0.9.400", sourceUrl: "", status: "Verified", type: "Device" },
  { name: "OP5D2BL1", title: "OnePlus 13R", android: "Android 16", release: "16.0.8.210", sourceUrl: "", status: "Verified", type: "Device" },
  { name: "Wukong MOD V5.1", title: "Stable release", android: "16 / 15", release: "V5.1", sourceUrl: "", status: "Private pack", type: "MOD Pack" },
  { name: "Wukong MOD V4.8", title: "Legacy release", android: "15 / 14", release: "V4.8", sourceUrl: "", status: "Archived", type: "MOD Pack" },
];

function Mark({ id, children, className = "", ...props }: { id: string; children: ReactNode; className?: string } & HTMLAttributes<HTMLDivElement>) {
  return <div data-joly-component={id} className={className} {...props}>{children}</div>;
}

function Button({ children, variant = "default", onClick, disabled = false, className = "", type = "button" }: { children: ReactNode; variant?: "default" | "outline" | "ghost" | "danger"; onClick?: () => void; disabled?: boolean; className?: string; type?: "button" | "submit" }) {
  return (
    <JolyButton type={type} disabled={disabled} onClick={onClick} variant={variant === "danger" ? "destructive" : variant} className={`j-button j-button-${variant} ${className}`} data-joly-component="button">
      {children}
    </JolyButton>
  );
}

function StatusPill({ children, tone = "neutral" }: { children: ReactNode; tone?: "neutral" | "success" | "warning" | "danger" | "blue" }) {
  return <span className={`status-pill status-${tone}`}><i />{children}</span>;
}

function NumberCounter({ value, label, tone = "blue" }: { value: string; label: string; tone?: string }) {
  return (
    <Mark id="number-counter" className={`stat-readout stat-${tone}`}>
      <strong><JolyNumberCounter value={Number(value.replace(/[^0-9.]/g, "")) || 0} formatFn={() => value} duration={0.45} /></strong><span>{label}</span>
    </Mark>
  );
}

function TextMorph({ children }: { children: ReactNode }) {
  return <span className="text-morph">{children}</span>;
}

function TopBar({ view, theme, onTheme, onNavigate, onCommand, language, onLanguage, account, t }: { view: View; theme: "light" | "dark"; onTheme: () => void; onNavigate: (view: View) => void; onCommand: () => void; language: "vi" | "en"; onLanguage: () => void; account?: AccountProfile | null; t: (key: MessageKey) => string }) {
  const displayName = String(account?.displayName || account?.username || "Wukong");
  return (
    <header className="topbar">
      <button className="brand" onClick={() => onNavigate("studio")} aria-label="Về Studio">
        <img src="/WukongStudio.svg" alt="" /><span><b>WUKONG</b><small>ROM STUDIO</small></span>
      </button>
      <div className="topbar-center"><span className="live-dot" /> <span>{t("greeting")}, <b>{displayName}</b></span><span className="topbar-context">/ {t(view)}</span></div>
      <div className="topbar-actions">
        <button className="command-trigger" onClick={onCommand} aria-label={t("quickActions")}><Command size={15} /><span>{t("quickActions")}</span><kbd>⌘ K</kbd></button>
        <Mark id="animated-theme-toggle"><JolyAnimatedThemeToggle className="icon-button" /></Mark>
        <button className="language-toggle" onClick={onLanguage} aria-label="Đổi ngôn ngữ">{t("switchLanguage")}</button>
        <button className="avatar" onClick={() => onNavigate("profile")} aria-label="Mở profile">WK</button>
      </div>
    </header>
  );
}

function SectionTitle({ eyebrow, title, detail, action }: { eyebrow?: string; title: string; detail?: string; action?: ReactNode }) {
  return <div className="section-title"><div>{eyebrow && <span className="eyebrow">{eyebrow}</span>}<h2>{title}</h2>{detail && <p>{detail}</p>}</div>{action}</div>;
}

function Studio({ source, setSource, sourceState, setSourceState, mods, setMods, preset, setPreset, onToast, onCreateJob, jobState, live = false, sourceInfo, onAnalyze, catalog, device, setDevice, execution, setExecution, modVersion, setModVersion, releaseLabel, setReleaseLabel, customEditionLabel, setCustomEditionLabel, debloatPaths, setDebloatPaths, pipelineSteps, setPipelineSteps, packageArtifact, setPackageArtifact, publishArtifact, setPublishArtifact, notifyTelegram, setNotifyTelegram, submitBusy = false, submitUncertain = false, onConfirmSubmission, t }: { source: string; setSource: (value: string) => void; sourceState: SourceState; setSourceState: (value: SourceState) => void; mods: string[]; setMods: (value: string[]) => void; preset: string; setPreset: (value: string) => void; onToast: (message: string) => void; onCreateJob: () => void; jobState: JobState; live?: boolean; sourceInfo?: SourceProbeResult | null; onAnalyze?: (uri: string) => Promise<void>; catalog?: CatalogModel | null; device: string; setDevice: (value: string) => void; execution: string; setExecution: (value: string) => void; modVersion: string; setModVersion: (value: string) => void; releaseLabel: string; setReleaseLabel: (value: string) => void; customEditionLabel: string; setCustomEditionLabel: (value: string) => void; debloatPaths: string; setDebloatPaths: (value: string) => void; pipelineSteps: string[]; setPipelineSteps: (value: string[]) => void; packageArtifact: boolean; setPackageArtifact: (value: boolean) => void; publishArtifact: boolean; setPublishArtifact: (value: boolean) => void; notifyTelegram: boolean; setNotifyTelegram: (value: boolean) => void; submitBusy?: boolean; submitUncertain?: boolean; onConfirmSubmission?: () => void; t: (key: MessageKey) => string }) {
  const [modQuery, setModQuery] = useState("");
  const [releaseEditorOpen, setReleaseEditorOpen] = useState(false);
  const ready = sourceState === "ready";
  const analyze = () => {
    if (!source.trim()) { setSourceState("invalid"); onToast("Hãy dán link ROM hoặc dùng ROM mẫu."); return; }
    if (onAnalyze) { void onAnalyze(source); return; }
    setSourceState("analyzing");
    window.setTimeout(() => { setSourceState("ready"); onToast("Đã nhận diện PKG110 · metadata fixture sẵn sàng."); }, 750);
  };
  const detected = (sourceInfo || mockSource) as SourceProbeResult & typeof mockSource;
  const useSample = () => { setSource(mockSource.uri); setSourceState("idle"); onToast("Đã điền ROM fixture PKG110."); };
  const catalogMods = catalog?.modsByVersion?.[modVersion] || [];
  const availableMods = catalogMods.length ? catalogMods.map((id) => ({ id, name: id, detail: "Registry MOD · catalog", tone: "slate" })) : modOptions;
  const visibleMods = availableMods.filter((mod) => `${mod.name} ${mod.detail}`.toLowerCase().includes(modQuery.trim().toLowerCase()));
  const toggleMod = (id: string) => setMods(mods.includes(id) ? mods.filter((item) => item !== id) : [...mods, id]);
  const selectModVersion = (value: string) => {
    setModVersion(value);
    const defaults = catalog?.presetDefaultsByVersion?.[value]?.[preset.toLowerCase()] || [];
    if (defaults.length) setMods(defaults);
  };
  const togglePipelineStep = (id: string) => setPipelineSteps(pipelineSteps.includes(id) ? pipelineSteps.filter((item) => item !== id) : [...pipelineSteps, id]);
  return (
    <div className="screen studio-screen">
      <div className="screen-heading"><div><span className="eyebrow">BUILD CONTROL LEDGER</span><h1>{t("studioTitle")}</h1><p>{t("studioDescription")}</p></div><div className="heading-actions"><StatusPill tone="success">{live ? "API connected" : "Preview local-only"}</StatusPill><Button variant="outline" onClick={useSample}><Sparkles size={15} /> {t("useSample")}</Button></div></div>
      <div className="bento-grid studio-grid">
        <section className="panel source-panel bento-large">
          <SectionTitle eyebrow="01 / SOURCE" title={t("sourceTitle")} detail={t("sourceDescription")} action={<StatusPill tone={ready ? "success" : "neutral"}>{ready ? "Ready" : "Chờ nguồn"}</StatusPill>} />
          <div className="prompt-box">
            <div className="prompt-head"><label htmlFor="source-url">Smart Source</label><span><Mark id="animated-tooltip"><JolyAnimatedTooltip content="Dùng URL fixture cục bộ, không gửi request thật."><span className="tooltip-help" aria-label="Thông tin fixture"><CircleHelp size={14} /></span></JolyAnimatedTooltip></Mark><button className="inline-action" onClick={useSample}><Sparkles size={13} /> Fixture</button><button className="inline-action" onClick={() => { navigator.clipboard?.writeText(source); onToast("Đã sao chép URL fixture."); }}><Copy size={13} /> Sao chép</button></span></div>
            <textarea id="source-url" value={source} onChange={(event) => { setSource(event.target.value); if (sourceState === "invalid") setSourceState("idle"); }} placeholder="https://component-ota-cn.allawntech.com/downloadCheck?..." rows={3} spellCheck={false} />
            <div className="prompt-foot"><span>URL tạm thời không xuất hiện trong log.</span><Button onClick={analyze} disabled={sourceState === "analyzing"}>{sourceState === "analyzing" ? <><RefreshCw size={15} className="spin" /> {t("analyzing")}</> : <><Zap size={15} /> {t("analyzeRom")}</>}</Button></div>
          </div>
          <AnimatePresence mode="wait">
            {sourceState === "analyzing" && <motion.div key="analyzing" className="source-result analyzing" initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}><div className="result-icon"><RefreshCw className="spin" size={19} /></div><div><span>TYPEWRITER SOURCE CHECK</span><strong>Đang đọc metadata ROM…</strong><p>Kiểm tra host và nhận diện gói fixture.</p></div></motion.div>}
            {sourceState === "idle" && <motion.div key="idle" className="source-result idle" initial={{ opacity: 0 }} animate={{ opacity: 1 }}><div className="result-icon"><Link2 size={19} /></div><div><span>WAITING FOR INPUT</span><strong>Dán link để nhận diện</strong><p>Thiết bị, phiên bản và dung lượng sẽ xuất hiện ở đây.</p></div></motion.div>}
            {sourceState === "invalid" && <motion.div key="invalid" className="source-result invalid" initial={{ opacity: 0 }} animate={{ opacity: 1 }}><div className="result-icon"><AlertCircle size={19} /></div><div><span>URL NOT READY</span><strong>Chưa có URL hợp lệ</strong><p>Dùng link fixture để tiếp tục bản demo.</p></div></motion.div>}
            {ready && <motion.div key="ready" className="source-ready" initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}><div className="source-ready-head"><div><span>ROM KHẢ DỤNG · {live ? "LIVE" : "DEMO"}</span><strong>{String(detected.productName || detected.product || "PKG110")} · Android {String(detected.androidVersion || detected.android || "16")}</strong></div><StatusPill tone="success">{live ? "Verified" : "14/14 metadata"}</StatusPill></div><div className="metadata-grid">{[["Product", detected.productName || "—"], ["Thiết bị", detected.device || "—"], ["Phiên bản", detected.version || "—"], ["Dung lượng", typeof detected.sizeBytes === "number" ? `${(detected.sizeBytes / (1024 ** 3)).toFixed(2)} GB` : String(detected.size || "—")], ["Bản vá", detected.securityPatch || "—"], ["Host", detected.host || "—"]].map(([label, value]) => <div key={label}><span>{label}</span><b>{value}</b></div>)}</div></motion.div>}
          </AnimatePresence>
        </section>

        <section className="panel recipe-panel bento-side">
          <SectionTitle eyebrow="02 / RECIPE" title={t("recipeTitle")} detail={t("recipeDescription")} />
          <div className="control-stack"><label>Device<select value={device} onChange={(event) => setDevice(event.target.value)} aria-label="Device"><option value="">Chọn thiết bị</option>{(catalog?.devices || []).map((item) => <option key={String(item.product || item.name)} value={String(item.product || item.name)}>{String(item.product || item.name)} · {String(item.name || item.title || "Device")}</option>)}{!catalog?.devices?.length && <option value="PKG110">PKG110 · OnePlus Ace 5</option>}</select></label><label>Runner<select value={execution} onChange={(event) => setExecution(event.target.value)} aria-label="Runner"><option value="github-auto">GitHub Auto</option><option value="github-hosted">GitHub Hosted</option><option value="self-hosted-linux">Self-hosted Linux</option></select></label><label>MOD version<select value={modVersion} onChange={(event) => selectModVersion(event.target.value)} aria-label="MOD version"><option value="">Chọn nền MOD</option>{(catalog?.modVersions || []).map((version) => <option key={version} value={version}>{version} · {catalog?.modReleaseVersions?.[version] || version}</option>)}{!catalog?.modVersions?.length && <><option value="ColorOS_16.0.9">ColorOS 16.0.9 · V5.0</option><option value="V5.1">V5.1 · Stable</option></>}</select></label></div>
          <Mark id="segmented-button" className="segmented"><span>Edition</span><SegmentedButton buttons={editionButtons} defaultActive={preset} onChange={setPreset} className="edition-segmented" /></Mark>
          <div className="release-row"><div><span>Release label</span><strong>{releaseLabel || catalog?.modReleaseVersions?.[modVersion] || (preset === "Custom" ? "Limited" : "V5.1 · 2026.09")}</strong></div><button aria-label="Chỉnh release label" onClick={() => setReleaseEditorOpen(true)}><MoreHorizontal size={17} /></button></div>
          {preset === "Custom" && <label className="custom-label-field">Custom edition label<input value={customEditionLabel} onChange={(event) => setCustomEditionLabel(event.target.value)} placeholder="Ví dụ: Daily driver" maxLength={64} /></label>}
          <details className="mod-disclosure">
            <summary><span><strong>Tùy chỉnh MOD</strong><small>{mods.length}/{availableMods.length} đang bật</small></span><ChevronDown size={16} /></summary>
            <label className="mod-search"><Search size={15} /><input value={modQuery} onChange={(event) => setModQuery(event.target.value)} placeholder="Tìm MOD…" aria-label="Tìm MOD" /></label>
            <div className="mod-list">{visibleMods.map((mod) => <label key={mod.id} className={mods.includes(mod.id) ? "selected" : ""}><input type="checkbox" checked={mods.includes(mod.id)} onChange={() => toggleMod(mod.id)} /><span className={`mod-dot ${mod.tone}`} /><span><strong>{mod.name}</strong><small>{mod.detail}</small></span><i>{mods.includes(mod.id) ? <Check size={14} /> : null}</i></label>)}</div>
          </details>
          <details className="recipe-advanced"><summary>Advanced delivery</summary><div className="advanced-grid"><label>Debloat paths<textarea value={debloatPaths} onChange={(event) => setDebloatPaths(event.target.value)} placeholder="Một path mỗi dòng" rows={4} /></label><div className="pipeline-options"><span>Pipeline stages</span>{(catalog?.pipelineSteps || [{ id: "inspect_rom", label: "Inspect ROM" }, { id: "extract_payload", label: "Extract payload" }, { id: "debloat", label: "Remove bloatware" }, { id: "apply_mod", label: "Apply MOD" }, { id: "package_zip", label: "Package ROM ZIP" }]).map((step) => <label key={step.id}><input type="checkbox" checked={pipelineSteps.includes(step.id)} onChange={() => togglePipelineStep(step.id)} />{step.label}</label>)}</div></div><div className="delivery-switches"><label><input type="checkbox" checked={packageArtifact} onChange={(event) => setPackageArtifact(event.target.checked)} /> Package ZIP</label><label><input type="checkbox" checked={publishArtifact} onChange={(event) => setPublishArtifact(event.target.checked)} /> Publish artifact</label><label><input type="checkbox" checked={notifyTelegram} onChange={(event) => setNotifyTelegram(event.target.checked)} /> Notify Telegram</label></div></details>
          <Mark id="file-tree" className="mini-tree"><div className="tree-head"><span>PIPELINE PREVIEW</span><button aria-label="Mở pipeline preview" onClick={() => onToast("Pipeline preview đã mở.")}><ChevronRight size={15} /></button></div><JolyFileTree data={pipelineTree} defaultExpandedIds={["flashable"]} onSelect={(node) => onToast(`${node.name} đã được chọn trong pipeline.`)} /></Mark>
        </section>

        <section className="panel review-panel bento-review">
          <div className="review-header"><div><span className="eyebrow">03 / REVIEW</span><h2>Recipe <Mark id="highlight-text"><JolyHighlightText color="accent" style={{ "--highlight-accent": "0 0% 9%" } as CSSProperties}>sẵn sàng</JolyHighlightText></Mark></h2></div><div className="readiness"><strong>{ready ? "4/4" : "1/4"}</strong><span>điều kiện</span></div></div>
          <div className="review-route"><div className="route-node"><div className={`route-icon ${ready ? "done" : ""}`}><Globe2 size={18} /></div><span>Source</span><small>{ready ? "PKG110 verified" : "Chưa phân tích"}</small></div><div className="route-line" /><div className="route-node"><div className={`route-icon ${ready ? "done" : ""}`}><Workflow size={18} /></div><span>Recipe</span><small>{preset} · {mods.length} MOD</small></div><div className="route-line" /><div className="route-node"><div className="route-icon"><UploadCloud size={18} /></div><span>Runner</span><small>GitHub Auto</small></div></div>
          <div className="review-note"><Info size={15} /><span>{live ? "Request sẽ đi qua Telegram auth và orchestration core." : "Đây là local demo. Job sẽ chạy bằng fixture và không chạm orchestration core."}</span></div>
           <div className="dispatch-button-wrap"><Button className="dispatch-button" disabled={!ready || jobState !== "none" || submitBusy} onClick={onCreateJob}>{submitBusy ? "Đang gửi…" : jobState !== "none" ? "Đã tạo job demo" : t("createBuild")}<ArrowRight size={17} /></Button>{submitUncertain && <div className="submit-recovery" role="alert"><span>Submit chưa xác định; dùng cùng idempotency key để kiểm tra lại.</span><Button variant="outline" disabled={submitBusy} onClick={onConfirmSubmission}>Xác nhận lại</Button></div>}</div>
        </section>
      </div>
      {releaseEditorOpen && <dialog open className="joly-confirm-dialog" aria-labelledby="release-label-title"><form onSubmit={(event) => { event.preventDefault(); setReleaseEditorOpen(false); }}><h2 id="release-label-title">Chỉnh release label</h2><label>Release label<input autoFocus value={releaseLabel} onChange={(event) => setReleaseLabel(event.target.value)} placeholder={catalog?.modReleaseVersions?.[modVersion] || "V5.1"} maxLength={64} /></label><div className="profile-actions"><Button variant="ghost" onClick={() => setReleaseEditorOpen(false)}>Hủy</Button><Button type="submit">Lưu</Button></div></form></dialog>}
      <div className="screen-footer"><span>Preview build-control-ledger</span><span>Last sync just now</span></div>
    </div>
  );
}

function JobStatus({ status }: { status: string }) {
  const normalized = status.toLowerCase();
  const tone = ["completed", "succeeded", "success", "artifact ready"].includes(normalized) ? "success" : ["failed", "cancelled", "canceled", "error"].includes(normalized) ? "danger" : ["running", "building", "queued", "verifying", "packaging"].includes(normalized) ? "blue" : "neutral";
  return <StatusPill tone={tone}>{status}</StatusPill>;
}

function sanitizeEventText(value: unknown): string {
  return String(value || "event")
    .replace(/(authorization|token|secret|credential|password|initData)\s*[:=]\s*[^\s,;]+/gi, "$1: [redacted]")
    .replace(/https?:\/\/[^\s]+/gi, "[external-url-redacted]");
}

type JobRow = { id: string; name: string; status: string; stage: string; progress: number; time: string; owner: string };

function Jobs({ jobState, stage, onAdvance, onToast, onNavigate, realJobs = [], selectedJob, selectedJobId, jobsLoading = false, onSelectJob, onRefresh, onAction, onLoadMoreEvents, jobEvents = [], eventsHasMore = false, onArtifact, onMirrorRepair, t }: { jobState: JobState; stage: number; onAdvance: () => void; onToast: (message: string) => void; onNavigate: (view: View) => void; realJobs?: Job[]; selectedJob?: Job | null; selectedJobId?: string; jobsLoading?: boolean; onSelectJob?: (id: string) => void; onRefresh?: () => void; onAction?: (action: "cancel" | "resume", id: string) => void; onLoadMoreEvents?: () => void; jobEvents?: Array<Record<string, unknown>>; eventsHasMore?: boolean; onArtifact?: (id: string, index: number) => void; onMirrorRepair?: (id: string) => void; t: (key: MessageKey) => string }) {
  const [tab, setTab] = useState("Active");
  const [search, setSearch] = useState("");
  const [dateFilter, setDateFilter] = useState<Date | null>(null);
  const [dateOpen, setDateOpen] = useState(false);
  const progress = jobState === "none" ? 0 : jobState === "completed" ? 100 : [12, 32, 68, 86, 100][stage] ?? 12;
  const displayStatus = jobState === "none" ? "Running" : jobState === "completed" ? "Completed" : "Running";
  const rows: JobRow[] = realJobs.length ? realJobs.map((job) => {
    const id = String(job.job_id || job.jobId || "job");
    const status = String(job.status || "queued");
    const normalized = status.charAt(0).toUpperCase() + status.slice(1);
    return { id, name: `${job.device || job.product || "ROM"} · ${job.preset || "Build"}`, status: normalized, stage: String(job.stage || status), progress: Number(job.progress || (status === "succeeded" ? 100 : 0)), time: String(job.updated_at || job.updatedAt || job.created_at || "—"), owner: "Telegram" };
  }) : mockJobs;
  const visibleRows = rows.filter((row) => `${row.id} ${row.name} ${row.status} ${row.stage}`.toLowerCase().includes(search.toLowerCase())).filter((row) => tab === "Active" ? ["running", "queued", "building", "verifying", "packaging"].includes(row.status.toLowerCase()) || !realJobs.length : tab === "History" ? !["running", "queued", "building", "verifying", "packaging"].includes(row.status.toLowerCase()) : true).filter((row) => !dateFilter || Number.isNaN(Date.parse(row.time)) || new Date(row.time).toDateString() === dateFilter.toDateString());
  const columns: ColumnDef<JobRow>[] = [
    { id: "job", header: "Job", cell: (job) => <div className="job-name"><span className="job-id">{job.id}</span><strong>{job.name}</strong></div> },
    { id: "status", header: "Status", cell: (job) => <JobStatus status={job.status} /> },
    { id: "stage", header: "Stage", cell: (job) => <span className="stage-text">{job.stage}</span> },
    { id: "progress", header: "Progress", cell: (job) => <div className="table-progress"><i style={{ width: `${Math.max(0, Math.min(100, job.progress))}%` }} /><span>{job.progress}%</span></div> },
    { id: "updated", header: "Updated", cell: (job) => <span className="muted-cell">{job.time}</span> },
    { id: "actions", header: "", align: "right", cell: (job) => <button className="row-more" aria-label={`Mở ${job.id}`} onClick={(event) => { event.stopPropagation(); onSelectJob?.(job.id); }}><MoreHorizontal size={17} /></button> },
  ];
  const selectedId = String(selectedJob?.job_id || selectedJob?.jobId || selectedJobId || "");
  const activeRow = rows.find((row) => row.id === selectedId) || visibleRows[0];
  const detailStatus = String(selectedJob?.status || activeRow?.status || displayStatus);
  const detailName = selectedJob ? `${selectedJob.device || selectedJob.product || "PKG110"} · ${selectedJob.preset || "Plus"}` : activeRow?.name || "PKG110 · Plus";
  const detailProgress = Number(selectedJob?.progress ?? activeRow?.progress ?? progress);
  const detailStage = String(selectedJob?.stage || activeRow?.stage || (jobState === "completed" ? "Artifact ready" : jobStages[stage]?.label ?? "Queued"));
  return (
    <div className="screen jobs-screen">
      <div className="screen-heading"><div><span className="eyebrow">OBSERVABILITY / JOBS</span><h1>{t("jobsTitle")}</h1><p>{t("jobsDescription")}</p></div><Button variant="outline" onClick={() => onNavigate("studio")}><ArrowRight size={15} className="rotate-180" /> {t("createAnotherJob")}</Button></div>
      <div className="job-metrics"><NumberCounter value="03" label="lượt build còn lại" /><NumberCounter value="02" label="đã dùng hôm nay" tone="green" /><NumberCounter value="01" label="đang chạy" tone="violet" /><NumberCounter value="99.2%" label="runner uptime" tone="orange" /></div>
      <div className="jobs-toolbar"><div className="tabs"><button className={tab === "Active" ? "active" : ""} onClick={() => setTab("Active")}>Active <b>{realJobs.length ? realJobs.filter((job) => !["succeeded", "failed", "cancelled"].includes(String(job.status).toLowerCase())).length : 1}</b></button><button className={tab === "History" ? "active" : ""} onClick={() => setTab("History")}>History <b>{realJobs.length ? realJobs.filter((job) => ["succeeded", "failed", "cancelled"].includes(String(job.status).toLowerCase())).length : 3}</b></button><button className={tab === "Saved" ? "active" : ""} onClick={() => setTab("Saved")}>Saved recipes <b>4</b></button></div><div className="toolbar-right"><div className="date-filter"><button className="toolbar-button" aria-expanded={dateOpen} onClick={() => setDateOpen((open) => !open)}><CalendarDays size={15} /> {dateFilter ? dateFilter.toLocaleDateString("vi-VN") : "Chọn ngày"}</button>{dateOpen && <div className="date-wheel-popover"><DateWheelPicker value={dateFilter || new Date()} onChange={(next) => { setDateFilter(next); setDateOpen(false); }} size="sm" locale="vi-VN" aria-label="Ngày lọc job" /><button className="date-clear" onClick={() => { setDateFilter(null); setDateOpen(false); }}>Xóa bộ lọc</button></div>}</div><label className="search-field"><Search size={15} /><input aria-label="Tìm job" value={search} onChange={(event) => setSearch(event.target.value)} placeholder="Tìm job…" /></label><button className="toolbar-button" onClick={onRefresh}><RefreshCw size={15} /> Refresh</button></div></div>
      <div className="job-layout">
        <Mark id="animated-table" className="jobs-table-wrap"><JolyAnimatedTable data={visibleRows} columns={columns} loading={jobsLoading} loadingRows={4} stickyHeader onRowClick={(row) => onSelectJob?.(row.id)} emptyMessage="Không có job phù hợp." /></Mark>
        <section className="panel active-job-panel"><div className="active-job-top"><div><span className="eyebrow">{selectedId ? "SELECTED JOB" : "LIVE PREVIEW"}</span><h2>{detailName}</h2><p><span className="mono">{selectedId || "wk-demo-8f21"}</span> · {String(selectedJob?.runner || "GitHub Auto")}</p></div><JobStatus status={detailStatus} /></div><div className="job-progress-readout"><strong>{detailProgress}%</strong><span><TextMorph>{detailStage}</TextMorph></span></div><div className="big-progress"><i style={{ transform: `scaleX(${Math.max(0, Math.min(100, detailProgress)) / 100})` }} /></div><div className="beam-line"><div className="beam-track" />{jobStages.map((item, index) => { const Icon = item.icon; const done = ["succeeded", "completed"].includes(detailStatus.toLowerCase()) || index < stage; const current = index === stage && !done; return <div key={item.label} className={`beam-node ${done ? "done" : ""} ${current ? "current" : ""}`}><div><Icon size={16} /></div><span>{item.label}</span></div>; })}</div><div className="job-detail-actions">{selectedId && onAction && !["succeeded", "completed", "failed", "cancelled"].includes(detailStatus.toLowerCase()) ? <Button variant="outline" onClick={() => onAction("cancel", selectedId)}><Pause size={15} /> Cancel</Button> : <Button onClick={selectedId ? () => onArtifact?.(selectedId, 0) : jobState === "completed" ? () => onToast("Artifact đã sẵn sàng tải xuống.") : onAdvance}>{selectedId ? <><Download size={15} /> Artifact</> : jobState === "completed" ? <><Download size={15} /> Download artifact</> : <><Play size={15} /> Advance fixture</>}</Button>}{selectedId && ["failed", "cancelled"].includes(detailStatus.toLowerCase()) && onAction ? <Button variant="outline" onClick={() => onAction("resume", selectedId)}><RefreshCw size={15} /> Resume</Button> : null}{selectedId && onMirrorRepair ? <Button variant="outline" onClick={() => onMirrorRepair(selectedId)}><RefreshCw size={15} /> Repair mirror</Button> : null}<Button variant="outline" onClick={() => onToast("Log sanitized đã mở trong panel bên dưới.")}><Terminal size={15} /> View log</Button></div>{selectedId && <div className="job-events"><div className="panel-head"><span className="eyebrow">EVENTS</span><span className="mono">{jobEvents.length} loaded · max 500/page</span></div>{jobEvents.length ? jobEvents.map((event, index) => <article key={String(event.sequence || index)}><time className="mono">{String(event.timestamp || "—")}</time><span>{sanitizeEventText(event.message || event.error || event.warning || event.type || event.stage || "event")}</span></article>) : <p className="muted-cell">Chưa có event.</p>}{eventsHasMore && <Button variant="ghost" onClick={onLoadMoreEvents}>Load more events</Button>}</div>}</section>
      </div>
      <Mark id="code-block" className="log-strip"><div className="log-head"><span><Terminal size={14} /> Sanitized event stream</span><span className="mono">No credentials</span></div><JolyCodeBlock code={sanitizedLog(stage)} language="text" theme="github" variant="minimal" animation="none" copyable maxHeight="180px" showLineNumbers={false} /></Mark>
    </div>
  );
}

function modsLabelFor(stage: number) {
  return stage >= 2 ? "applying 6 selected modules" : "waiting for runner checkpoint";
}

function sanitizedLog(stage: number): string {
  return [
    "09:42:18  INFO  source.verify  PKG110 metadata matched fixture",
    `09:43:06  STEP  build.mods     ${modsLabelFor(stage)}`,
    "09:43:17  WAIT  runner.queue   heartbeat received · no secrets",
  ].join("\n");
}

function Catalog({ onToast, live = false, catalog: appCatalog, onUseSource, t }: { onToast: (message: string) => void; live?: boolean; catalog?: CatalogModel | null; onUseSource?: (uri: string) => void; t: (key: MessageKey) => string }) {
  const [query, setQuery] = useState("");
  const [versionFilter, setVersionFilter] = useState("all");
  const [visibleCount, setVisibleCount] = useState(8);
  const [remoteCatalog, setRemoteCatalog] = useState<CatalogModel | null>(appCatalog || null);
  useEffect(() => {
    const controller = new AbortController();
    if (appCatalog) { setRemoteCatalog(appCatalog); return () => controller.abort(); }
    const load = async () => {
      try {
        const localResponse = await fetch("./catalog.json", { cache: "no-store", signal: controller.signal });
        if (localResponse.ok) setRemoteCatalog(await localResponse.json() as CatalogModel);
      } catch { /* local fixture remains available when API/catalog is offline */ }
    };
    void load();
    return () => controller.abort();
  }, [appCatalog]);
  const remoteItems = remoteCatalog?.devices?.map((item) => ({ name: String(item.product || item.name || "Device"), title: String(item.title || item.name || "ROM device"), android: String(item.android || item.androidVersion || "—"), release: String(item.release || item.version || "—"), sourceUrl: String(item.sourceUrl || item.source_url || ""), status: String(item.status || "Verified"), type: "Device" })) || [];
  const versionItems = (remoteCatalog?.modVersions || []).map((version) => ({ name: version, title: "MOD registry version", android: version.split("_").at(-1) || "—", release: remoteCatalog?.modReleaseVersions?.[version] || version, sourceUrl: "", status: "Verified", type: "Version" }));
  const modItems = remoteCatalog?.mods?.length ? remoteCatalog.mods.map((item) => ({ name: String(item.name || item.id || "MOD"), title: String(item.title || item.description || "MOD registry"), android: String(item.android || "—"), release: String(item.version || item.release || "—"), sourceUrl: String(item.sourceUrl || ""), status: String(item.status || "Private pack"), type: "MOD Pack" })) : versionItems.map((item) => ({ ...item, type: "MOD Pack" }));
  const allItems = (remoteItems.length || modItems.length ? [...remoteItems, ...modItems] : catalogItems).filter((item) => `${item.name} ${item.title} ${item.type} ${item.release}`.toLowerCase().includes(query.toLowerCase())).filter((item) => versionFilter === "all" || item.name === versionFilter || item.release === versionFilter);
  const deviceCount = remoteItems.length || catalogItems.filter((item) => item.type === "Device").length;
  const packCount = modItems.length || catalogItems.filter((item) => item.type === "MOD Pack").length;
  const renderCatalogTable = (entries: typeof allItems) => <><div className="catalog-table"><div className="catalog-head"><span>Entry</span><span>Type</span><span>Release</span><span>Status</span><span /></div>{entries.slice(0, visibleCount).map((item) => <div className="catalog-row" key={`${item.type}-${item.name}`}><div className="catalog-name"><div className={`catalog-icon ${item.type === "Device" ? "device" : "pack"}`}>{item.type === "Device" ? <HardDrive size={18} /> : <Layers3 size={18} />}</div><div><strong>{item.name}</strong><small>{item.title} · {item.android}</small></div></div><span className="type-label">{item.type}</span><span className="mono">{item.release}</span><StatusPill tone={item.status === "Archived" ? "neutral" : "success"}>{item.status}</StatusPill><button className="row-more" onClick={() => item.sourceUrl && onUseSource ? onUseSource(item.sourceUrl) : onToast(`${item.name} đã mở ở chế độ read-only.`)} aria-label={item.sourceUrl ? `Dùng ${item.name} trong Studio` : `Mở ${item.name}`}><ArrowUpRight size={16} /></button></div>)}</div>{entries.length > visibleCount && <div className="catalog-more"><span>Đang hiển thị {visibleCount}/{entries.length}</span><Button variant="outline" onClick={() => setVisibleCount((count) => count + 8)}>Xem thêm</Button></div>}</>;
  const catalogTabs = [
    { label: `All · ${allItems.length}`, value: "all", content: renderCatalogTable(allItems) },
    { label: `Devices · ${deviceCount}`, value: "devices", content: renderCatalogTable(allItems.filter((item) => item.type === "Device")) },
    { label: `MOD Packs · ${packCount}`, value: "packs", content: renderCatalogTable(allItems.filter((item) => item.type === "MOD Pack" || item.type === "Version")) },
  ];
  return (
    <div className="screen catalog-screen">
      <div className="screen-heading"><div><span className="eyebrow">READ-ONLY REGISTRY</span><h1>{t("catalogTitle")}</h1><p>{t("catalogDescription")}</p></div><StatusPill tone="success">Synced 2m ago</StatusPill></div>
      <RomLibrary live={live} fallbackDevices={(remoteCatalog?.devices || []) as RomLibraryFallbackDevice[]} onToast={onToast} onUseSource={(uri) => onUseSource?.(uri)} />
      <div className="catalog-summary"><div><span>Verified devices</span><strong>{deviceCount}</strong><small>Catalog registry</small></div><div><span>Private MOD packs</span><strong>{String(packCount).padStart(2, "0")}</strong><small>{remoteCatalog?.modVersions?.length || 0} versions</small></div><div><span>Last release</span><strong>{remoteCatalog?.modReleaseVersions?.[remoteCatalog.modVersions?.at(-1) || ""] || "V5.1"}</strong><small>registry labels</small></div></div>
      <div className="catalog-toolbar"><select className="catalog-version-filter" aria-label="Lọc phiên bản" value={versionFilter} onChange={(event) => { setVersionFilter(event.target.value); setVisibleCount(8); }}><option value="all">Tất cả versions</option>{(remoteCatalog?.modVersions || []).map((version) => <option key={version} value={version}>{version}</option>)}</select><label className="search-field"><Search size={16} /><input value={query} onChange={(event) => { setQuery(event.target.value); setVisibleCount(8); }} placeholder="Tìm device, pack, release…" /></label></div>
      <Mark id="vercel-tabs" className="catalog-joly-tabs"><VercelTabs tabs={catalogTabs} defaultTab="all" /></Mark>
    </div>
  );
}

function System({ onToast, onNavigate, live = false, account, t }: { onToast: (message: string) => void; onNavigate: (view: View) => void; live?: boolean; account?: AccountProfile | null; t: (key: MessageKey) => string }) {
  const [health, setHealth] = useState<SystemHealth | null>(null);
  useEffect(() => {
    const controller = new AbortController();
    if (live) void miniApi.get<SystemHealth>("/v1/diagnostics", controller.signal).then(setHealth).catch(() => setHealth(null));
    return () => controller.abort();
  }, [live]);
  const refreshHealth = () => {
    if (!live) { onToast("System health đã được refresh trong fixture."); return; }
    void miniApi.get<SystemHealth>("/v1/diagnostics").then((payload) => { setHealth(payload); onToast("System health đã được refresh."); }).catch((error) => onToast(error instanceof Error ? error.message : "Không thể tải diagnostics."));
  };
  return (
    <div className="screen system-screen">
      <div className="screen-heading"><div><span className="eyebrow">RUNTIME / HEALTH</span><h1>{t("systemTitle")}</h1><p>{t("systemDescription")}</p></div><Button variant="outline" onClick={refreshHealth}><RefreshCw size={15} /> {t("refresh")}</Button></div>
      <div className="system-grid"><div className="health-hero"><div className="health-orbit"><HeartPulse size={22} /></div><div><h2>Control plane {health ? "đã xác minh" : live ? "đang kết nối" : "preview"}</h2><p>{health ? "Đã nhận diagnostics từ orchestration core" : live ? "Đang chờ diagnostics" : "Không gửi request trong preview"}</p></div><StatusPill tone={health || !live ? "success" : "warning"}>{health ? "Operational" : live ? "Checking" : "Local"}</StatusPill></div><div className="health-metric"><span>Queue depth</span><strong>{String(health?.queueDepth ?? "—")}</strong><small>Giá trị từ diagnostics</small></div><div className="health-metric"><span>Runner load</span><strong>{String(health?.runnerLoad ?? "—")}</strong><small>Giá trị từ diagnostics</small></div><div className="health-metric"><span>API latency</span><strong>{String(health?.apiLatency ?? "—")}</strong><small>Giá trị từ diagnostics</small></div></div>
      <div className="system-two-col"><section className="panel service-status"><div className="panel-head"><h2>Kết nối dịch vụ</h2></div><div className="service-row"><span>Telegram session</span><StatusPill tone={account ? "success" : "neutral"}>{account ? "Authenticated" : "Preview"}</StatusPill></div><div className="service-row"><span>Wukong API</span><StatusPill tone={health ? "success" : live ? "warning" : "neutral"}>{health ? "Connected" : live ? "Checking" : "Local"}</StatusPill></div><div className="service-row"><span>Quyền truy cập</span><strong>{account?.role || "demo"}</strong></div></section><section className="panel system-tools"><div className="panel-head"><h2>Công cụ vận hành</h2><Settings2 size={18} /></div><button onClick={refreshHealth}><RefreshCw size={17} /><span><strong>Tải lại diagnostics</strong><small>Đọc trạng thái mới nhất từ server</small></span><ChevronRight size={16} /></button><button onClick={() => onToast("Quyền truy cập luôn được kiểm tra lại ở server.")}><LockKeyhole size={17} /><span><strong>Access policy</strong><small>{account?.role === "admin" ? "Admin server-gated" : "Owned jobs only"}</small></span><ChevronRight size={16} /></button>{(import.meta.env.DEV || account?.role === "admin") && <button onClick={() => onNavigate("lab")}><WandSparkles size={17} /><span><strong>Component Lab</strong><small>Chỉ dành cho development và admin</small></span><ArrowRight size={16} /></button>}</section></div>
      {account?.role === "admin" && <Suspense fallback={<section className="panel admin-console"><span className="mono">Loading admin controls…</span></section>}><LazyAdminConsole live={live} health={health} onToast={onToast} /></Suspense>}
    </div>
  );
}

function Profile({ onToast, onTheme, onReconnect, onClose, account, t }: { onToast: (message: string) => void; onTheme: () => void; onReconnect?: () => void; onClose?: () => void; account?: AccountProfile | null; t: (key: MessageKey) => string }) {
  const name = String(account?.displayName || account?.username || "Wukong User");
  const username = account?.username ? `@${account.username}` : "Telegram account";
  const credits = account?.unlimited ? "Unlimited" : `${Number(account?.buildCredits || 0)} remaining`;
  const jobCount = Number(account?.jobCount || 0);
  const role = String(account?.role || "user");
  const platform = [account?.platform, account?.appVersion].filter(Boolean).join(" · ") || "Telegram WebApp";
  return (
    <div className="screen profile-screen"><div className="screen-heading"><div><span className="eyebrow">ACCOUNT / PREFERENCES</span><h1>{t("profileTitle")}</h1><p>{t("profileDescription")}</p></div><div className="profile-big-avatar">WK</div></div><div className="profile-grid profile-grid-compact"><section className="panel profile-card"><div className="profile-card-top"><div className="profile-avatar-large">WK</div><div><h2>{name}</h2><p>{username} · Telegram ID {String(account?.telegramId || account?.userId || "—")}</p><StatusPill tone="success">{account?.role === "admin" ? "Admin" : "Approved user"}</StatusPill></div></div><div className="profile-facts"><div><span>Build allowance</span><strong>{credits}</strong></div><div><span>Jobs created</span><strong>{jobCount}</strong></div><div><span>Role / access</span><strong>{role}</strong></div><div><span>Client</span><strong>{platform}</strong></div><div><span>Language</span><strong>Tiếng Việt <small>/ English</small></strong></div><div><span>Last seen</span><strong>{String(account?.lastSeenAt || "—")}</strong></div></div><div className="profile-actions"><Button variant="outline" onClick={onTheme}><Moon size={15} /> Toggle theme</Button><Button variant="outline" onClick={() => onToast("Thông tin quyền được tải từ Telegram session.")}><KeyRound size={15} /> Access details</Button>{onReconnect && <Button variant="outline" onClick={onReconnect}><RefreshCw size={15} /> Reconnect</Button>}{onClose && <Button variant="ghost" onClick={onClose}>Close</Button>}</div></section></div></div>
  );
}

function CommandPalette({ open, onClose, onNavigate, onTheme, onToast, allowLab }: { open: boolean; onClose: () => void; onNavigate: (view: View) => void; onTheme: () => void; onToast: (message: string) => void; allowLab: boolean }) {
  const groups: CommandGroup[] = [
    { id: "navigate", heading: "Navigate", items: [
      { id: "studio", label: "Open Studio", description: "Build control ledger", icon: WandSparkles, onSelect: () => onNavigate("studio") },
      { id: "jobs", label: "View Jobs", description: "Monitor current builds", icon: ClipboardList, onSelect: () => onNavigate("jobs") },
      ...(allowLab ? [{ id: "lab", label: "Open Component Lab", description: "Review all JolyUI surfaces", icon: Sparkles, onSelect: () => onNavigate("lab") }] : []),
    ] },
    { id: "preferences", heading: "Preferences", items: [
      { id: "theme", label: "Toggle theme", description: "Light / dark", icon: Moon, onSelect: onTheme },
      { id: "preview", label: "Preview mode", description: "Show the current local fixture state", icon: Info, onSelect: () => onToast("Command Palette đang ở preview mode.") },
    ] },
  ];
  return <Mark id="command-palette"><JolyCommandPalette open={open} onOpenChange={(next) => { if (!next) onClose(); }} groups={groups} placeholder="Tìm action, screen, fixture…" /></Mark>;
}

type GateReason = "unauthenticated" | "pending" | "revoked" | "maintenance" | "error";

function AccessGate({ loading, pairing, error, reason = "unauthenticated", onRetry, onPair }: { loading: boolean; pairing: { botLink?: string; expiresIn?: number } | null; error: string; reason?: GateReason; onRetry: () => void; onPair: () => void }) {
  const pairingActive = Boolean(pairing);
  const canPair = reason === "unauthenticated" || reason === "error";
  const title = loading ? "Đang xác thực phiên" : pairingActive ? "Đang chờ ghép Telegram" : reason === "pending" ? "Đang chờ cấp quyền" : reason === "revoked" ? "Quyền truy cập đã bị thu hồi" : reason === "maintenance" ? "Studio đang tạm đóng" : "Mở Mini App từ Telegram";
  const message = loading ? "Đang đọc hồ sơ Telegram đã ký trước khi mở Studio." : pairingActive ? "Mở bot Telegram ở tab mới, bấm Start rồi quay lại đây. Mini App sẽ tự kiểm tra trạng thái ghép." : reason === "pending" ? "Tài khoản Telegram đã nhận diện nhưng đang chờ quản trị viên phê duyệt." : reason === "revoked" ? "Tài khoản này hiện không được phép tạo hoặc theo dõi job. Hãy liên hệ quản trị viên." : reason === "maintenance" ? error || "Hệ thống đang được bảo trì. Các job đang chạy vẫn được xử lý an toàn." : error || "Mini App cần một phiên Telegram hợp lệ để bảo vệ job và dữ liệu của bạn.";
  return <main className={`access-gate-react access-reason-${reason}`} aria-live="polite"><section className="panel access-card-react"><div className="profile-avatar-large">WK</div><span className="eyebrow">WUKONG / TELEGRAM SESSION</span><h1>{title}</h1><p>{message}</p><div className="access-actions">{pairingActive ? <Button onClick={() => pairing?.botLink && openTelegramLink(pairing.botLink)}><SendIcon /> Mở bot Telegram</Button> : canPair ? <Button onClick={onPair} disabled={loading}><Link2 size={15} /> Ghép Telegram</Button> : null}<Button variant="outline" onClick={onRetry} disabled={loading || pairingActive}><RefreshCw size={15} className={loading ? "spin" : ""} /> Kiểm tra lại</Button><Button variant="ghost" onClick={closeTelegram}>Đóng</Button></div><small className="mono">Auth: tma / wla · Không hiển thị token hoặc initData</small></section></main>;
}

function SendIcon() { return <ArrowUpRight size={15} />; }

function LabFallback() {
  return <div className="screen lab-screen"><div className="screen-heading"><div><span className="eyebrow">REGISTRY EXPLORER / JOLYUI</span><h1>Component <span>Lab</span></h1><p>Đang tải registry source đã pin…</p></div><span className="status-pill status-neutral"><i />Loading</span></div></div>;
}

export function App() {
  const { addToast } = useAnimatedToast();
  const nextTheme = useTheme();
  const [ui, dispatch] = useReducer(appReducer, undefined, () => initialAppState(parseView(window.location.hash), (localStorage.getItem("wukong-language") as "vi" | "en") || "vi", (localStorage.getItem("wukong-theme") as ThemePreference) || "system"));
  const { view, language, themePreference } = ui;
  const [theme, setTheme] = useState<"light" | "dark">(() => applyTelegramTheme(themePreference));
  const [account, setAccount] = useState<AccountProfile | null>(null);
  const [maintenance, setMaintenance] = useState<SessionPayload["maintenance"]>(null);
  const [sessionState, setSessionState] = useState<"preview" | "loading" | "ready" | "unauthenticated" | "pairing" | "error">(miniApi.configured ? "loading" : "preview");
  const [sessionError, setSessionError] = useState("");
  const [pairing, setPairing] = useState<{ pairId?: string; pairSecret?: string; botLink?: string; expiresIn?: number } | null>(() => { try { return JSON.parse(sessionStorage.getItem("wukong-telegram-pairing") || "null"); } catch { return null; } });
  const [source, setSource] = useState("");
  const [sourceState, setSourceState] = useState<SourceState>("idle");
  const [sourceInfo, setSourceInfo] = useState<SourceProbeResult | null>(null);
  const [mods, setMods] = useState(["gapps", "camera", "debloat"]);
  const [preset, setPreset] = useState("Plus");
  const [catalog, setCatalog] = useState<CatalogModel | null>(null);
  const [device, setDevice] = useState("PKG110");
  const [execution, setExecution] = useState("github-auto");
  const [modVersion, setModVersion] = useState("ColorOS_16.0.9");
  const [releaseLabel, setReleaseLabel] = useState("");
  const [customEditionLabel, setCustomEditionLabel] = useState("");
  const [debloatPaths, setDebloatPaths] = useState("");
  const [pipelineSteps, setPipelineSteps] = useState<string[]>([]);
  const [packageArtifact, setPackageArtifact] = useState(true);
  const [publishArtifact, setPublishArtifact] = useState(true);
  const [notifyTelegram, setNotifyTelegram] = useState(true);
  const [submitBusy, setSubmitBusy] = useState(false);
  const [submitUncertain, setSubmitUncertain] = useState(false);
  const [jobState, setJobState] = useState<JobState>("none");
  const [stage, setStage] = useState(0);
  const [realJobs, setRealJobs] = useState<Job[]>([]);
  const [selectedJobId, setSelectedJobId] = useState(() => localStorage.getItem("wukong-active-job") || "");
  const [selectedJob, setSelectedJob] = useState<Job | null>(null);
  const [jobEvents, setJobEvents] = useState<Array<Record<string, unknown>>>([]);
  const [eventsHasMore, setEventsHasMore] = useState(false);
  const [jobsLoading, setJobsLoading] = useState(false);
  const [jobActionBusy, setJobActionBusy] = useState(false);
  const [commandOpen, setCommandOpen] = useState(false);
  const sessionLoadStarted = useRef(false);
  const jobsRequest = useRef<AbortController | null>(null);
  const live = miniApi.configured;
  const allowLab = import.meta.env.DEV || account?.role === "admin";
  const t = translator(language);
  const setNav = (next: View) => { dispatch(navigateAction(next)); window.location.hash = next === "studio" ? "build" : next; window.scrollTo({ top: 0, behavior: "auto" }); };
  const notify = (message: string) => { addToast({ message, type: "default", duration: 2800 }); };
  const toggleTheme = () => { const next = themePreference === "dark" ? "light" : themePreference === "light" ? "system" : "dark"; dispatch(setThemeAction(next)); nextTheme.setTheme(next); };
  const toggleLanguage = () => dispatch(setLanguageAction(language === "vi" ? "en" : "vi"));

  useEffect(() => {
    const controller = new AbortController();
    const loadCatalog = async () => {
      try {
        const localResponse = await fetch("./catalog.json", { cache: "no-store", signal: controller.signal });
        const local = localResponse.ok ? await localResponse.json() as CatalogModel : {};
        if (live && hasTelegramIdentity()) {
          try {
            const remote = await miniApi.get<CatalogModel>("/v1/rom-catalog", controller.signal);
            setCatalog({ ...local, ...remote, devices: remote.devices || local.devices });
            return;
          } catch { /* the signed local catalog remains usable during reconnect */ }
        }
        setCatalog(local);
      } catch { /* the screens keep their safe fixture fallbacks */ }
    };
    void loadCatalog();
    return () => controller.abort();
  }, [live]);

  useEffect(() => {
    if (!catalog) return;
    const versions = catalog.modVersions || [];
    const nextVersion = versions.includes(modVersion) ? modVersion : versions.at(-1) || modVersion;
    if (nextVersion !== modVersion) setModVersion(nextVersion);
    if (!debloatPaths && catalog.defaultDebloatPaths?.length) setDebloatPaths(catalog.defaultDebloatPaths.join("\n"));
    if (!pipelineSteps.length && catalog.pipelineSteps?.length) setPipelineSteps(catalog.pipelineSteps.filter((step) => step.default !== false).map((step) => step.id));
    const defaults = catalog.presetDefaultsByVersion?.[nextVersion]?.[preset.toLowerCase()];
    if (defaults?.length) setMods(defaults);
  }, [catalog]);

  const loadSession = async () => {
    if (!live) { setSessionState("preview"); return; }
    if (!hasTelegramIdentity()) { setSessionState("unauthenticated"); setSessionError("Không tìm thấy initData hoặc launch token của Telegram."); return; }
    setSessionState("loading"); setSessionError("");
    try {
      const payload = await miniApi.post<SessionPayload>("/v1/session/open");
      setAccount(payload.user || null); setMaintenance(payload.maintenance || null); setSessionState(payload.user ? "ready" : "error");
      if (payload.user) {
        try {
          const draft = await miniApi.get<{ uri?: string }>("/v1/drafts/source");
          if (!source && draft.uri) { setSource(String(draft.uri)); setSourceState("idle"); }
        } catch { /* a missing draft is a normal first-run state */ }
        try {
          const pending = JSON.parse(localStorage.getItem("wukong-submit-request") || "null") as { subject?: string; body?: string; key?: string } | null;
          setSubmitUncertain(Boolean(pending?.subject === String(payload.user.telegramId || payload.user.userId || "") && pending.body && pending.key));
        } catch { setSubmitUncertain(false); }
      }
      if (!payload.user) setSessionError("Phiên không trả về hồ sơ được cấp quyền.");
    } catch (error) {
      setSessionState("error");
      setSessionError(error instanceof MiniAppApiError ? error.message : "Không thể kết nối Mini App API.");
    }
  };

  const startPairing = async () => {
    if (!live || pairing) return;
    setSessionError("");
    try {
      const next = await miniApi.publicPost<{ pairId: string; pairSecret: string; botLink: string; expiresIn?: number }>("/v1/session/pair");
      sessionStorage.setItem("wukong-telegram-pairing", JSON.stringify(next));
      setPairing(next); setSessionState("pairing");
      openTelegramLink(next.botLink);
    } catch (error) { setSessionError(error instanceof Error ? error.message : "Không thể tạo phiên pairing."); }
  };

  useEffect(() => {
    if (!pairing?.pairId || !pairing.pairSecret) return;
    let cancelled = false;
    const poll = async () => {
      try {
        const next = await miniApi.publicPost<{ status?: string; launchToken?: string }>("/v1/session/pair/status", { pairId: pairing.pairId, pairSecret: pairing.pairSecret });
        if (cancelled) return;
        if (next.launchToken && storeLaunchToken(next.launchToken)) {
          sessionStorage.removeItem("wukong-telegram-pairing"); setPairing(null); setSessionState("loading"); await loadSession(); return;
        }
      } catch (error) { if (!cancelled) setSessionError(error instanceof Error ? error.message : "Pairing chưa sẵn sàng."); }
      if (!cancelled) window.setTimeout(() => void poll(), 3500);
    };
    const timer = window.setTimeout(() => void poll(), 1000);
    return () => { cancelled = true; window.clearTimeout(timer); };
  }, [pairing?.pairId, pairing?.pairSecret]);

  useEffect(() => { if (sessionLoadStarted.current) return; sessionLoadStarted.current = true; if (!window.location.hash || !["#build", "#studio", "#jobs", "#catalog", "#system", "#profile", "#lab"].includes(window.location.hash)) window.location.hash = "build"; initializeTelegram(); void loadSession(); }, []);
  useEffect(() => bindTelegramViewport(), []);
  useEffect(() => {
    const app = telegramWebApp();
    const back = app?.BackButton;
    if (!back) return;
    const goBack = () => setNav("studio");
    if (view === "studio") back.hide?.();
    else { back.show?.(); back.onClick?.(goBack); }
    return () => back.offClick?.(goBack);
  }, [view]);
  useEffect(() => {
    const syncTheme = () => setTheme(applyTelegramTheme(themePreference));
    syncTheme();
    localStorage.setItem("wukong-theme", themePreference);
    const app = telegramWebApp();
    app?.onEvent?.("themeChanged", syncTheme);
    const media = window.matchMedia?.("(prefers-color-scheme: dark)");
    media?.addEventListener?.("change", syncTheme);
    return () => { app?.offEvent?.("themeChanged", syncTheme); media?.removeEventListener?.("change", syncTheme); };
  }, [themePreference]);
  useEffect(() => {
    if (nextTheme.theme === "system" || nextTheme.theme === "light" || nextTheme.theme === "dark") {
      if (nextTheme.theme !== themePreference) dispatch(setThemeAction(nextTheme.theme));
    }
  }, [nextTheme.theme, themePreference]);
  useEffect(() => { localStorage.setItem("wukong-language", language); document.documentElement.lang = language; }, [language]);
  useEffect(() => { const syncHash = () => dispatch(navigateAction(parseView(window.location.hash))); window.addEventListener("hashchange", syncHash); return () => window.removeEventListener("hashchange", syncHash); }, []);
  useEffect(() => { const key = (event: KeyboardEvent) => { if ((event.metaKey || event.ctrlKey) && event.key.toLowerCase() === "k") { event.preventDefault(); setCommandOpen(true); } if (event.key === "Escape") setCommandOpen(false); }; window.addEventListener("keydown", key); return () => window.removeEventListener("keydown", key); }, []);
  useEffect(() => { if (jobState === "none" || jobState === "completed" || live) return; const timer = window.setTimeout(() => { if (stage < 4) { setStage((current) => current + 1); setJobState(stage >= 3 ? "completed" : (["queued", "verifying", "building", "packaging"] as JobState[])[stage + 1]); } }, 2200); return () => window.clearTimeout(timer); }, [jobState, stage, live]);
  useEffect(() => { if (!live || sessionState !== "ready" || view !== "jobs") { jobsRequest.current?.abort(); return; } void refreshJobs(true); const timer = window.setInterval(() => { if (!document.hidden) void refreshJobs(true); }, 10000); const onVisibility = () => { if (!document.hidden) void refreshJobs(true); }; document.addEventListener("visibilitychange", onVisibility); return () => { window.clearInterval(timer); document.removeEventListener("visibilitychange", onVisibility); jobsRequest.current?.abort(); }; }, [live, sessionState, view]);
  useEffect(() => { if (view === "lab" && !allowLab) setNav("studio"); }, [view, allowLab]);

  const refreshJobs = async (silent = false) => {
    if (!live || sessionState !== "ready") return;
    setJobsLoading(true);
    jobsRequest.current?.abort();
    const controller = new AbortController();
    jobsRequest.current = controller;
    try {
      const payload = await miniApi.get<JobsPayload>("/v1/sync?includeHistory=1", controller.signal);
      const jobs = payload.jobs || [];
      setRealJobs(jobs);
      const preferredId = selectedJobId || String(payload.activeJob?.job_id || payload.activeJob?.jobId || jobs[0]?.job_id || jobs[0]?.jobId || "");
      if (preferredId) {
        const next = payload.activeJob && String(payload.activeJob.job_id || payload.activeJob.jobId) === preferredId ? payload.activeJob : jobs.find((job) => String(job.job_id || job.jobId) === preferredId) || null;
        setSelectedJob(next);
        if (!selectedJobId) { setSelectedJobId(preferredId); localStorage.setItem("wukong-active-job", preferredId); }
        if (Array.isArray(payload.events) && String(payload.activeJob?.job_id || payload.activeJob?.jobId || "") === preferredId) { setJobEvents(payload.events as Array<Record<string, unknown>>); setEventsHasMore(Boolean(payload.eventsHasMore)); }
      }
    } catch (error) {
      if (!silent && !(error instanceof MiniAppApiError && error.code === "ABORTED")) notify(error instanceof Error ? error.message : "Không thể refresh jobs.");
    } finally { if (jobsRequest.current === controller) { jobsRequest.current = null; setJobsLoading(false); } }
  };

  const selectJob = async (id: string, append = false) => {
    setSelectedJobId(id); localStorage.setItem("wukong-active-job", id);
    const local = realJobs.find((job) => String(job.job_id || job.jobId) === id);
    if (local) setSelectedJob(local);
    if (!live) return;
    const after = append ? Math.max(0, ...jobEvents.map((event) => Number(event.sequence || 0))) : 0;
    jobsRequest.current?.abort();
    const controller = new AbortController();
    jobsRequest.current = controller;
    try {
      const payload = await miniApi.get<JobsPayload>(`/v1/sync?includeHistory=0&jobId=${encodeURIComponent(id)}&after=${after}&limit=500`, controller.signal);
      if (payload.activeJob) setSelectedJob(payload.activeJob);
      const incoming = Array.isArray(payload.events) ? payload.events as Array<Record<string, unknown>> : [];
      setJobEvents((current) => append ? [...current, ...incoming] : incoming);
      setEventsHasMore(Boolean(payload.eventsHasMore));
    } catch (error) { if (!(error instanceof MiniAppApiError && error.code === "ABORTED")) notify(error instanceof Error ? error.message : "Không thể tải job detail."); }
    finally { if (jobsRequest.current === controller) { jobsRequest.current = null; setJobsLoading(false); } }
  };

  const runJobAction = async (action: "cancel" | "resume", id: string) => {
    if (!live) { notify(action === "cancel" ? "Job fixture đã được pause." : "Job fixture đã được resume."); return; }
    setJobActionBusy(true);
    try { await miniApi.post<Job>(`/v1/jobs/${encodeURIComponent(id)}/${action}`); await refreshJobs(true); await selectJob(id); notify(action === "cancel" ? "Job đã được cancel." : "Job đã được resume."); }
    catch (error) { notify(error instanceof Error ? error.message : `Không thể ${action} job.`); }
    finally { setJobActionBusy(false); }
  };

  const downloadArtifact = async (id: string, index: number) => {
    if (!live) { notify("Artifact fixture đã sẵn sàng tải xuống."); return; }
    try {
      const payload = await miniApi.get<{ url?: string; downloadUrl?: string; artifactUrl?: string }>(`/v1/jobs/${encodeURIComponent(id)}/artifacts/${index}/dccloud-download`);
      const url = payload.url || payload.downloadUrl || payload.artifactUrl;
      if (url) window.open(url, "_blank", "noopener,noreferrer");
      else notify("Artifact chưa có URL tải xuống.");
    } catch (error) { notify(error instanceof Error ? error.message : "Không thể tải artifact."); }
  };
  const repairMirror = async (id: string) => {
    if (!live) { notify("Mirror repair fixture đã được ghi nhận."); return; }
    try { await miniApi.post(`/v1/jobs/${encodeURIComponent(id)}/mirror-repair`, {}); notify("Đã gửi yêu cầu repair mirror."); }
    catch (error) { notify(error instanceof Error ? error.message : "Không thể repair mirror."); }
  };

  const analyzeSource = async (uri: string) => {
    setSourceState("analyzing");
    try { const payload = await miniApi.post<SourceProbeResult>("/v1/sources/probe", { uri }); setSourceInfo(payload); setSourceState("ready"); notify("Nguồn ROM đã được API xác thực."); }
    catch (error) { setSourceState("invalid"); notify(error instanceof Error ? error.message : "Không thể phân tích nguồn ROM."); }
  };
  const submitSerializedRecipe = async (body: string, key: string) => {
    setSubmitBusy(true);
    try {
      const job = await miniApi.request<Job>("/v1/jobs", { method: "POST", headers: { "Content-Type": "application/json", "Idempotency-Key": key }, body });
      const id = job?.job_id || job?.jobId;
      if (!id) { const uncertain = new MiniAppApiError("Submission status is uncertain"); uncertain.code = "UNCERTAIN_SUBMISSION"; throw uncertain; }
      localStorage.removeItem("wukong-submit-request");
      setSubmitUncertain(false);
      setRealJobs((current) => [job, ...current]);
      setJobState("queued"); setStage(0); setNav("jobs"); notify("Đã tạo job build qua orchestration core.");
    } catch (error) {
      const uncertain = error instanceof MiniAppApiError && (error.code === "TIMEOUT" || error.connectionFailed || error.code === "UNCERTAIN_SUBMISSION" || Number(error.status) >= 500);
      setSubmitUncertain(uncertain);
      if (!uncertain) localStorage.removeItem("wukong-submit-request");
      notify(uncertain ? "Submit chưa xác định. Bạn có thể xác nhận lại bằng cùng idempotency key." : error instanceof Error ? error.message : "Không thể tạo job.");
    } finally { setSubmitBusy(false); }
  };

  const confirmPendingSubmission = () => {
    try {
      const pending = JSON.parse(localStorage.getItem("wukong-submit-request") || "null") as { body?: string; key?: string } | null;
      if (!pending?.body || !pending.key) { setSubmitUncertain(false); notify("Không còn submission đang chờ xác nhận."); return; }
      void submitSerializedRecipe(pending.body, pending.key);
    } catch { setSubmitUncertain(false); notify("Submission recovery không hợp lệ."); }
  };

  const createJob = () => {
    if (!live) { setJobState("queued"); setStage(0); setNav("jobs"); notify("Job demo đã được tạo · runner đang nhận."); return; }
    const recipe = { schemaVersion: 1, task: "build", device: String(device || sourceInfo?.device || "OP5D2BL1"), source: { kind: "url", uri: source }, execution: { target: execution }, storage: { remote: "wukong-gdrive", publishArtifact }, build: { preset: preset.toLowerCase(), modVersion, mods, editionLabels: preset === "Custom" && customEditionLabel ? { custom: customEditionLabel } : {}, modReleaseVersion: releaseLabel || catalog?.modReleaseVersions?.[modVersion] || modVersion, enabledSteps: pipelineSteps, debloatPaths: debloatPaths.split(/\r?\n/).map((item) => item.trim()).filter(Boolean), package: packageArtifact, notifyTelegram } };
    try {
      const body = serializeRecipePayload(recipe);
      const subject = String(account?.telegramId || account?.userId || "");
      let pending: { subject?: string; body?: string; key?: string } | null = null;
      try { pending = JSON.parse(localStorage.getItem("wukong-submit-request") || "null"); } catch { pending = null; }
      const key = pending?.subject === subject && pending.body === body && pending.key ? pending.key : crypto.randomUUID();
      localStorage.setItem("wukong-submit-request", JSON.stringify({ subject, body, key }));
      void submitSerializedRecipe(body, key);
    } catch (error) { notify(error instanceof Error ? error.message : "Payload không hợp lệ."); }
  };
  const advanceJob = () => { if (jobState === "completed") return; if (stage >= 4) { setJobState("completed"); return; } setStage((current) => current + 1); setJobState(stage >= 3 ? "completed" : (["queued", "verifying", "building", "packaging"] as JobState[])[stage + 1]); };
  const screen = useMemo(() => {
    if (view === "studio") return <Studio source={source} setSource={setSource} sourceState={sourceState} setSourceState={setSourceState} mods={mods} setMods={setMods} preset={preset} setPreset={setPreset} onToast={notify} onCreateJob={createJob} jobState={jobState} live={live} sourceInfo={sourceInfo} onAnalyze={live ? analyzeSource : undefined} catalog={catalog} device={device} setDevice={setDevice} execution={execution} setExecution={setExecution} modVersion={modVersion} setModVersion={setModVersion} releaseLabel={releaseLabel} setReleaseLabel={setReleaseLabel} customEditionLabel={customEditionLabel} setCustomEditionLabel={setCustomEditionLabel} debloatPaths={debloatPaths} setDebloatPaths={setDebloatPaths} pipelineSteps={pipelineSteps} setPipelineSteps={setPipelineSteps} packageArtifact={packageArtifact} setPackageArtifact={setPackageArtifact} publishArtifact={publishArtifact} setPublishArtifact={setPublishArtifact} notifyTelegram={notifyTelegram} setNotifyTelegram={setNotifyTelegram} submitBusy={submitBusy} submitUncertain={submitUncertain} onConfirmSubmission={confirmPendingSubmission} t={t} />;
    if (view === "jobs") return <Jobs jobState={jobState} stage={stage} onAdvance={advanceJob} onToast={notify} onNavigate={setNav} realJobs={realJobs} selectedJob={selectedJob} selectedJobId={selectedJobId} jobsLoading={jobsLoading || jobActionBusy} onSelectJob={(id) => void selectJob(id)} onRefresh={() => void refreshJobs(false)} onAction={(action, id) => void runJobAction(action, id)} onLoadMoreEvents={() => selectedJobId && void selectJob(selectedJobId, true)} jobEvents={jobEvents} eventsHasMore={eventsHasMore} onArtifact={downloadArtifact} onMirrorRepair={repairMirror} t={t} />;
    if (view === "catalog") return <Catalog onToast={notify} live={live} catalog={catalog} onUseSource={(uri) => { setSource(uri); setSourceState("idle"); setNav("studio"); notify("Đã đưa source từ Catalog về Studio."); }} t={t} />;
    if (view === "system") return <System onToast={notify} onNavigate={setNav} live={live} account={account} t={t} />;
    if (view === "profile") return <Profile onToast={notify} onTheme={toggleTheme} onReconnect={() => void loadSession()} onClose={closeTelegram} account={account} t={t} />;
    if (view === "lab" && allowLab) return <Suspense fallback={<LabFallback />}><LazyLab onToast={notify} /></Suspense>;
    return <Studio source={source} setSource={setSource} sourceState={sourceState} setSourceState={setSourceState} mods={mods} setMods={setMods} preset={preset} setPreset={setPreset} onToast={notify} onCreateJob={createJob} jobState={jobState} live={live} sourceInfo={sourceInfo} onAnalyze={live ? analyzeSource : undefined} catalog={catalog} device={device} setDevice={setDevice} execution={execution} setExecution={setExecution} modVersion={modVersion} setModVersion={setModVersion} releaseLabel={releaseLabel} setReleaseLabel={setReleaseLabel} customEditionLabel={customEditionLabel} setCustomEditionLabel={setCustomEditionLabel} debloatPaths={debloatPaths} setDebloatPaths={setDebloatPaths} pipelineSteps={pipelineSteps} setPipelineSteps={setPipelineSteps} packageArtifact={packageArtifact} setPackageArtifact={setPackageArtifact} publishArtifact={publishArtifact} setPublishArtifact={setPublishArtifact} notifyTelegram={notifyTelegram} setNotifyTelegram={setNotifyTelegram} submitBusy={submitBusy} submitUncertain={submitUncertain} onConfirmSubmission={confirmPendingSubmission} t={t} />;
  }, [view, source, sourceState, sourceInfo, mods, preset, jobState, stage, live, realJobs, account, language, selectedJob, selectedJobId, jobsLoading, jobActionBusy, jobEvents, eventsHasMore, catalog, device, execution, modVersion, releaseLabel, customEditionLabel, debloatPaths, pipelineSteps, packageArtifact, publishArtifact, notifyTelegram, submitBusy, submitUncertain, allowLab]);
  if (live && sessionState !== "ready") return <AccessGate loading={sessionState === "loading"} pairing={pairing} error={sessionError} reason={sessionState === "unauthenticated" ? "unauthenticated" : "error"} onRetry={() => void loadSession()} onPair={() => void startPairing()} />;
  if (live && account && account.accessStatus && account.accessStatus !== "approved") return <AccessGate loading={false} pairing={null} error={sessionError} reason={account.accessStatus === "revoked" ? "revoked" : "pending"} onRetry={() => void loadSession()} onPair={() => void startPairing()} />;
  if (live && maintenance?.enabled && account?.role !== "admin") return <AccessGate loading={false} pairing={null} error={maintenance.message || ""} reason="maintenance" onRetry={() => void loadSession()} onPair={() => void startPairing()} />;
  return <div className="app-shell"><TopBar view={view} theme={theme} onTheme={toggleTheme} onNavigate={setNav} onCommand={() => setCommandOpen(true)} language={language} onLanguage={toggleLanguage} account={account} t={t} /><main><AnimatePresence mode="wait"><motion.div key={view} initial={{ opacity: 0, y: 9 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -5 }} transition={{ duration: 0.22 }}>{screen}</motion.div></AnimatePresence></main><LiquidDock view={view} onNavigate={setNav} account={account} language={language} /><CommandPalette open={commandOpen} onClose={() => setCommandOpen(false)} onNavigate={setNav} onTheme={toggleTheme} onToast={notify} allowLab={allowLab} /></div>;
}
