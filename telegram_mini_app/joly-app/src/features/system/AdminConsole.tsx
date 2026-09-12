import { useEffect, useMemo, useState, type FormEvent } from "react";
import { Activity, Check, CirclePause, Database, Plus, RefreshCw, ShieldCheck, UserRound, X } from "lucide-react";
import { miniApi } from "../../api/client";
import type { AdminUser, BatchBuild, SystemHealth } from "../../api/types";
import { AnimatedTable, type ColumnDef } from "../../components/ui/animated-table";
import { Button } from "../../components/ui/button";
import { CodeBlock } from "../../components/ui/code-block";

type AdminRow = { id: string; name: string; access: string; credits: string; activity: string; raw: AdminUser };

function AccessBadge({ value }: { value: string }) {
  return <span className={`admin-access admin-access-${value.toLowerCase()}`}><i />{value}</span>;
}

export default function AdminConsole({ live, health, onToast }: { live: boolean; health: SystemHealth | null; onToast: (message: string) => void }) {
  const [users, setUsers] = useState<AdminUser[]>([]);
  const [query, setQuery] = useState("");
  const [statusFilter, setStatusFilter] = useState("");
  const [quotaFilter, setQuotaFilter] = useState("");
  const [activityFilter, setActivityFilter] = useState("");
  const [sort, setSort] = useState("lastSeenAt");
  const [offset, setOffset] = useState(0);
  const [hasMoreUsers, setHasMoreUsers] = useState(false);
  const [loading, setLoading] = useState(false);
  const [selected, setSelected] = useState<AdminUser | null>(null);
  const [busy, setBusy] = useState("");
  const [maintenanceMessage, setMaintenanceMessage] = useState(String(health?.maintenance?.message || "Hệ thống đang được bảo trì. Vui lòng quay lại sau."));
  const [batchDevices, setBatchDevices] = useState("PKG110");
  const [batchMods, setBatchMods] = useState("V5.1");
  const [batch, setBatch] = useState<BatchBuild | null>(null);
  const [batchId, setBatchId] = useState(() => localStorage.getItem("wukong-active-batch") || "");
  const [cacheSnapshot, setCacheSnapshot] = useState<unknown>(null);
  const [selectedEvents, setSelectedEvents] = useState<Array<Record<string, unknown>>>([]);
  const [selectedJobs, setSelectedJobs] = useState<Array<Record<string, unknown>>>([]);
  const [auditCursor, setAuditCursor] = useState("");
  const [auditHasMore, setAuditHasMore] = useState(false);
  const [selectedJobDetail, setSelectedJobDetail] = useState<Record<string, unknown> | null>(null);
  const [confirm, setConfirm] = useState<{ user: AdminUser; action: "approve" | "revoke" } | null>(null);
  const [createOpen, setCreateOpen] = useState(false);
  const [cacheClearOpen, setCacheClearOpen] = useState(false);
  const [newUser, setNewUser] = useState({ telegramId: "", username: "", displayName: "" });
  const [releaseLabels, setReleaseLabels] = useState<Record<string, string>>({});
  const [presetLabels, setPresetLabels] = useState<Record<string, string>>({ lite: "Lite", plus: "Plus", custom: "Custom" });
  const [selectedRelease, setSelectedRelease] = useState("");

  useEffect(() => {
    if (!confirm && !createOpen && !cacheClearOpen) return;
    const dialog = document.querySelector<HTMLDialogElement>(".joly-confirm-dialog[open]");
    if (!dialog) return;
    const previous = document.activeElement as HTMLElement | null;
    const focusable = () => [...dialog.querySelectorAll<HTMLElement>("button, input, textarea, select, [tabindex]:not([tabindex='-1'])")].filter((node) => !node.hasAttribute("disabled"));
    const focusFirst = () => focusable()[0]?.focus();
    const onKeyDown = (event: KeyboardEvent) => {
      if (event.key === "Escape") { event.preventDefault(); setConfirm(null); setCreateOpen(false); setCacheClearOpen(false); return; }
      if (event.key !== "Tab") return;
      const nodes = focusable();
      if (!nodes.length) return;
      const first = nodes[0]; const last = nodes[nodes.length - 1];
      if (event.shiftKey && document.activeElement === first) { event.preventDefault(); last.focus(); }
      else if (!event.shiftKey && document.activeElement === last) { event.preventDefault(); first.focus(); }
    };
    window.requestAnimationFrame(focusFirst);
    dialog.addEventListener("keydown", onKeyDown);
    return () => { dialog.removeEventListener("keydown", onKeyDown); previous?.focus(); };
  }, [confirm, createOpen, cacheClearOpen]);

  const reloadUsers = async (nextOffset = offset) => {
    if (!live) return;
    setLoading(true);
    try {
      const params = new URLSearchParams({ offset: String(nextOffset), limit: "25", sort });
      if (query.trim()) params.set("query", query.trim());
      if (statusFilter) params.set("status", statusFilter);
      if (quotaFilter) params.set("quota", quotaFilter);
      if (activityFilter) params.set("activity", activityFilter);
      const payload = await miniApi.get<{ users?: AdminUser[]; hasMore?: boolean }>(`/v1/admin/users?${params.toString()}`);
      setUsers(payload.users || []);
      setOffset(nextOffset); setHasMoreUsers(Boolean(payload.hasMore || (payload.users || []).length === 25));
    } catch (error) { onToast(error instanceof Error ? error.message : "Không thể tải danh sách user."); }
    finally { setLoading(false); }
  };

  const openUser = async (user: AdminUser) => {
    setSelected(user);
    setSelectedEvents([]);
    setSelectedJobs([]); setSelectedJobDetail(null); setAuditCursor(""); setAuditHasMore(false);
    if (!live) return;
    setBusy("user");
    try {
      const detail = await miniApi.get<{ user?: AdminUser; events?: Array<Record<string, unknown>>; eventsNextCursor?: string; eventsHasMore?: boolean }>(`/v1/admin/users/${encodeURIComponent(user.telegramId)}`);
      setSelected(detail.user || user);
      setSelectedEvents(Array.isArray(detail.events) ? detail.events : []);
      setAuditCursor(String(detail.eventsNextCursor || "")); setAuditHasMore(Boolean(detail.eventsHasMore));
      const jobs = await miniApi.get<{ jobs?: Array<Record<string, unknown>>; items?: Array<Record<string, unknown>> }>(`/v1/admin/users/${encodeURIComponent(user.telegramId)}/jobs?page=1`);
      setSelectedJobs(jobs.jobs || jobs.items || []);
    } catch (error) { onToast(error instanceof Error ? error.message : "Không thể tải user detail."); }
    finally { setBusy(""); }
  };

  useEffect(() => { void reloadUsers(0); }, [live, statusFilter, quotaFilter, activityFilter, sort]);
  useEffect(() => {
    if (!live) return;
    void Promise.all([
      miniApi.get<{ modReleaseVersions?: Record<string, string> }>("/v1/mod-release-versions"),
      miniApi.get<{ presetLabels?: Record<string, string> }>("/v1/preset-labels"),
    ]).then(([releasePayload, presetPayload]) => {
      const next = releasePayload.modReleaseVersions || {};
      setReleaseLabels(next); setSelectedRelease((current) => current || Object.keys(next)[0] || "");
      setPresetLabels((current) => ({ ...current, ...(presetPayload.presetLabels || {}) }));
    }).catch(() => { /* static labels remain available if the admin API is reconnecting */ });
  }, [live]);
  useEffect(() => { setMaintenanceMessage(String(health?.maintenance?.message || maintenanceMessage)); }, [health?.maintenance?.message]);
  useEffect(() => {
    if (!live || !batchId || batch) return;
    void miniApi.get<BatchBuild>(`/v1/admin/batch-builds/${encodeURIComponent(batchId)}`).then(setBatch).catch(() => {});
  }, [live, batchId, batch]);
  useEffect(() => {
    if (!live || !batch?.batchId || ["succeeded", "partial", "failed", "cancelled"].includes(String(batch.status))) return;
    const timer = window.setInterval(() => { void miniApi.get<BatchBuild>(`/v1/admin/batch-builds/${encodeURIComponent(String(batch.batchId))}`).then(setBatch).catch(() => {}); }, 10000);
    return () => window.clearInterval(timer);
  }, [live, batch?.batchId, batch?.status]);

  const rows = useMemo<AdminRow[]>(() => users.filter((user) => `${user.displayName || ""} ${user.username || ""} ${user.telegramId}`.toLowerCase().includes(query.toLowerCase())).map((user) => ({
    id: String(user.telegramId), name: String(user.displayName || user.username || user.telegramId), access: String(user.accessStatus || "pending"), credits: user.unlimited ? "Unlimited" : String(user.buildCredits ?? 0), activity: String((user.currentActivity as Record<string, unknown> | null)?.status || "idle"), raw: user,
  })), [users, query]);
  const columns: ColumnDef<AdminRow>[] = [
    { id: "user", header: "User", cell: (row) => <div className="admin-user-cell"><span className="admin-avatar"><UserRound size={15} /></span><span><strong>{row.name}</strong><small className="mono">{row.id}</small></span></div> },
    { id: "access", header: "Access", cell: (row) => <AccessBadge value={row.access} /> },
    { id: "credits", header: "Credits", cell: (row) => <span className="mono">{row.credits}</span> },
    { id: "activity", header: "Activity", cell: (row) => <span>{row.activity}</span> },
    { id: "actions", header: "", align: "right", cell: (row) => <button className="admin-row-action" onClick={(event) => { event.stopPropagation(); void openUser(row.raw); }} aria-label={`Mở user ${row.id}`}><Activity size={15} /></button> },
  ];

  const applyUserAction = async (user: AdminUser, action: "approve" | "revoke") => {
    if (!live) return;
    setBusy(`${action}:${user.telegramId}`);
    try { await miniApi.post(`/v1/admin/users/${encodeURIComponent(user.telegramId)}/${action}`, { reason: `JolyUI admin ${action}` }); onToast(action === "approve" ? "User đã được approve." : "User đã được revoke."); setConfirm(null); await reloadUsers(); }
    catch (error) { onToast(error instanceof Error ? error.message : "Admin action thất bại."); }
    finally { setBusy(""); }
  };

  const updateAllowance = async (user: AdminUser, operation: "add" | "unlimited") => {
    if (!live) return;
    setBusy(`allowance:${user.telegramId}`);
    try { await miniApi.post(`/v1/admin/users/${encodeURIComponent(user.telegramId)}/allowance`, { operation, value: operation === "add" ? 1 : undefined, unlimited: operation === "unlimited" ? !user.unlimited : undefined, reason: "JolyUI admin control" }); onToast("Allowance đã cập nhật."); await reloadUsers(); }
    catch (error) { onToast(error instanceof Error ? error.message : "Không thể cập nhật allowance."); }
    finally { setBusy(""); }
  };

  const updateMaintenance = async () => {
    if (!live) return;
    setBusy("maintenance");
    try { await miniApi.put("/v1/system/maintenance", { enabled: !Boolean(health?.maintenance?.enabled), message: maintenanceMessage.trim() }); onToast("Maintenance state đã cập nhật."); }
    catch (error) { onToast(error instanceof Error ? error.message : "Không thể cập nhật maintenance."); }
    finally { setBusy(""); }
  };

  const startBatch = async () => {
    if (!live) return;
    const devices = batchDevices.split(",").map((item) => item.trim()).filter(Boolean);
    const modVersions = batchMods.split(",").map((item) => item.trim()).filter(Boolean);
    if (!devices.length || !modVersions.length) { onToast("Nhập ít nhất một device và MOD version."); return; }
    setBusy("batch");
    try {
      const requestBody = { devices, modVersions, editions: ["lite", "plus"] };
      let pending: { body?: string; key?: string } | null = null;
      try { pending = JSON.parse(localStorage.getItem("wukong-batch-request") || "null"); } catch { pending = null; }
      const body = JSON.stringify(requestBody);
      const key = pending?.body === body && pending.key ? pending.key : crypto.randomUUID();
      localStorage.setItem("wukong-batch-request", JSON.stringify({ subject: "admin", body, key }));
      const payload = await miniApi.post<BatchBuild>("/v1/admin/batch-builds", requestBody, { "Idempotency-Key": key });
      setBatch(payload);
      const nextId = String(payload.batchId || "");
      setBatchId(nextId);
      if (nextId) localStorage.setItem("wukong-active-batch", nextId);
      onToast(`Đã tạo ${payload.itemCount || 0} cấu hình batch.`);
    }
    catch (error) { onToast(error instanceof Error ? error.message : "Không thể tạo batch build."); }
    finally { setBusy(""); }
  };

  const inspectCache = async () => {
    if (!live) return;
    setBusy("cache");
    try {
      setCacheSnapshot(await miniApi.get("/v1/cache"));
      onToast("Đã tải cache diagnostics.");
    } catch (error) { onToast(error instanceof Error ? error.message : "Không thể inspect cache."); }
    finally { setBusy(""); }
  };

  const clearCache = async () => {
    if (!live) return;
    setCacheClearOpen(false);
    setBusy("cache-clear");
    try { const payload = await miniApi.post<{ entryCount?: number }>("/v1/cache/clear"); onToast(`Đã xóa ${payload.entryCount || 0} cache entries.`); setCacheSnapshot(null); }
    catch (error) { onToast(error instanceof Error ? error.message : "Không thể clear cache."); }
    finally { setBusy(""); }
  };

  const createUser = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    if (!live || !newUser.telegramId.trim()) return;
    setBusy("create-user");
    try { await miniApi.post("/v1/admin/users", { telegramId: newUser.telegramId.trim(), username: newUser.username.trim(), displayName: newUser.displayName.trim() }); setNewUser({ telegramId: "", username: "", displayName: "" }); setCreateOpen(false); onToast("Đã tạo hồ sơ chờ duyệt."); await reloadUsers(0); }
    catch (error) { onToast(error instanceof Error ? error.message : "Không thể tạo user."); }
    finally { setBusy(""); }
  };

  const saveLabels = async () => {
    if (!live || !selectedRelease) return;
    setBusy("labels");
    try {
      await miniApi.put("/v1/mod-release-versions", { modReleaseVersions: releaseLabels });
      await miniApi.put("/v1/preset-labels", { presetLabels });
      onToast("Đã lưu release và preset labels.");
    } catch (error) { onToast(error instanceof Error ? error.message : "Không thể lưu labels."); }
    finally { setBusy(""); }
  };

  const loadMoreAudit = async () => {
    if (!live || !selected || !auditHasMore || !auditCursor) return;
    setBusy("audit");
    try {
      const page = await miniApi.get<{ events?: Array<Record<string, unknown>>; nextCursor?: string; hasMore?: boolean }>(`/v1/admin/users/${encodeURIComponent(selected.telegramId)}/events?cursor=${encodeURIComponent(auditCursor)}&limit=100`);
      setSelectedEvents((current) => [...current, ...(page.events || [])]); setAuditCursor(String(page.nextCursor || "")); setAuditHasMore(Boolean(page.hasMore));
    } catch (error) { onToast(error instanceof Error ? error.message : "Không thể tải thêm audit history."); }
    finally { setBusy(""); }
  };

  const openAdminJob = async (job: Record<string, unknown>) => {
    const id = String(job.jobId || job.job_id || "");
    if (!id || !live) return;
    setBusy("admin-job");
    try { setSelectedJobDetail(await miniApi.get<Record<string, unknown>>(`/v1/jobs/${encodeURIComponent(id)}`)); }
    catch (error) { onToast(error instanceof Error ? error.message : "Không thể tải admin job detail."); }
    finally { setBusy(""); }
  };

  return <>
    <section className="panel admin-console"><div className="panel-head"><div><span className="eyebrow">ADMIN / USERS</span><h2>User access and quota</h2></div><div className="profile-actions"><Button variant="outline" size="sm" onClick={() => setCreateOpen(true)}><Plus size={15} /> Add user</Button><Button variant="outline" size="sm" onClick={() => void reloadUsers(offset)} disabled={loading}><RefreshCw size={15} className={loading ? "spin" : ""} /> Refresh</Button></div></div><div className="admin-toolbar"><label className="search-field"><UserRound size={15} /><input aria-label="Tìm user" value={query} onChange={(event) => setQuery(event.target.value)} onKeyDown={(event) => { if (event.key === "Enter") void reloadUsers(0); }} placeholder="Search user / Telegram ID" /></label><span className="mono">{rows.length} visible · offset {offset}</span></div><div className="admin-filter-grid"><label>Status<select value={statusFilter} onChange={(event) => setStatusFilter(event.target.value)}><option value="">All</option><option value="pending">Pending</option><option value="approved">Approved</option><option value="revoked">Revoked</option></select></label><label>Quota<select value={quotaFilter} onChange={(event) => setQuotaFilter(event.target.value)}><option value="">All</option><option value="available">Available</option><option value="exhausted">Exhausted</option><option value="unlimited">Unlimited</option></select></label><label>Activity<select value={activityFilter} onChange={(event) => setActivityFilter(event.target.value)}><option value="">All</option><option value="active">Opened Mini App</option><option value="never">Never opened</option><option value="jobs">Has jobs</option></select></label><label>Sort<select value={sort} onChange={(event) => setSort(event.target.value)}><option value="lastSeenAt">Last seen</option><option value="firstSeenAt">First seen</option><option value="jobCount">Job count</option><option value="buildCredits">Build credits</option></select></label></div><AnimatedTable data={rows} columns={columns} loading={loading} loadingRows={3} searchable={false} onRowClick={(row) => void openUser(row.raw)} emptyMessage="Không có user phù hợp." /><div className="admin-pagination"><Button size="sm" variant="outline" disabled={loading || offset === 0} onClick={() => void reloadUsers(Math.max(0, offset - 25))}>← Previous</Button><span className="mono">{offset + 1}–{offset + rows.length}</span><Button size="sm" variant="outline" disabled={loading || !hasMoreUsers} onClick={() => void reloadUsers(offset + 25)}>Next →</Button></div></section>
    <section className="panel admin-console admin-label-editor"><div className="panel-head"><div><span className="eyebrow">ADMIN / CATALOG LABELS</span><h2>Release and preset labels</h2></div><Button variant="outline" size="sm" disabled={!live || busy === "labels" || !selectedRelease} onClick={() => void saveLabels()}>{busy === "labels" ? "Saving…" : "Save labels"}</Button></div><div className="admin-input-grid"><label>MOD release<select value={selectedRelease} onChange={(event) => setSelectedRelease(event.target.value)}><option value="">Chọn release</option>{Object.keys(releaseLabels).map((key) => <option key={key} value={key}>{key}</option>)}</select></label><label>Release label<input value={releaseLabels[selectedRelease] || ""} onChange={(event) => setReleaseLabels((current) => ({ ...current, [selectedRelease]: event.target.value }))} disabled={!selectedRelease} maxLength={64} /></label></div><div className="admin-input-grid"><label>Lite label<input value={presetLabels.lite || ""} onChange={(event) => setPresetLabels((current) => ({ ...current, lite: event.target.value }))} maxLength={64} /></label><label>Plus label<input value={presetLabels.plus || ""} onChange={(event) => setPresetLabels((current) => ({ ...current, plus: event.target.value }))} maxLength={64} /></label><label>Custom label<input value={presetLabels.custom || ""} onChange={(event) => setPresetLabels((current) => ({ ...current, custom: event.target.value }))} maxLength={64} /></label></div></section>
    <section className="admin-operations-grid"><div className="panel admin-operation"><div className="panel-head"><div><span className="eyebrow">MAINTENANCE</span><h2>Runtime gate</h2></div><CirclePause size={17} /></div><p>{health?.maintenance?.enabled ? "Non-admin users đang bị chặn bởi maintenance mode." : "Service đang mở cho approved users."}</p><textarea value={maintenanceMessage} onChange={(event) => setMaintenanceMessage(event.target.value)} rows={2} aria-label="Maintenance message" /><Button variant="outline" size="sm" disabled={!live || busy === "maintenance"} onClick={() => void updateMaintenance()}><ShieldCheck size={14} /> {health?.maintenance?.enabled ? "Disable maintenance" : "Enable maintenance"}</Button></div><div className="panel admin-operation"><div className="panel-head"><div><span className="eyebrow">BATCH BUILD</span><h2>Build matrix</h2></div><Database size={17} /></div><div className="admin-input-grid"><label>Devices<input value={batchDevices} onChange={(event) => setBatchDevices(event.target.value)} placeholder="PKG110, CPH2669" /></label><label>MOD versions<input value={batchMods} onChange={(event) => setBatchMods(event.target.value)} placeholder="V5.1" /></label></div><Button size="sm" disabled={!live || busy === "batch"} onClick={() => void startBatch()}><Check size={14} /> Start batch</Button>{batch && <p className="admin-batch-status"><span className="mono">{String(batch.batchId || "batch")}</span> · {String(batch.status || "queued")} · {String(batch.itemCount || batch.items?.length || 0)} items</p>}</div><div className="panel admin-operation"><div className="panel-head"><div><span className="eyebrow">CACHE / DIAGNOSTICS</span><h2>Inspect cache</h2></div><Database size={17} /></div><p>Chỉ đọc snapshot server-side; không hiển thị credential hay token.</p><div className="profile-actions"><Button variant="outline" size="sm" disabled={!live || busy === "cache"} onClick={() => void inspectCache()}><RefreshCw size={14} className={busy === "cache" ? "spin" : ""} /> Load cache</Button><Button variant="destructive" size="sm" disabled={!live || busy === "cache-clear"} onClick={() => setCacheClearOpen(true)}>Clear cache</Button></div>{cacheSnapshot !== null && <CodeBlock code={JSON.stringify(cacheSnapshot, null, 2)} language="json" theme="github" variant="minimal" animation="none" copyable maxHeight="180px" showLineNumbers={false} />}</div></section>
    {createOpen && <dialog open className="joly-confirm-dialog" aria-labelledby="create-user-title"><form onSubmit={(event) => void createUser(event)}><span className="eyebrow">NEW TELEGRAM PROFILE</span><h2 id="create-user-title">Add user</h2><label>Telegram ID<input required inputMode="numeric" value={newUser.telegramId} onChange={(event) => setNewUser((current) => ({ ...current, telegramId: event.target.value }))} /></label><label>Username<input value={newUser.username} onChange={(event) => setNewUser((current) => ({ ...current, username: event.target.value }))} /></label><label>Display name<input value={newUser.displayName} onChange={(event) => setNewUser((current) => ({ ...current, displayName: event.target.value }))} /></label><div className="profile-actions"><Button type="button" variant="ghost" onClick={() => setCreateOpen(false)}>Cancel</Button><Button type="submit" disabled={busy === "create-user"}>{busy === "create-user" ? "Creating…" : "Create pending user"}</Button></div></form></dialog>}
    {cacheClearOpen && <dialog open className="joly-confirm-dialog" aria-labelledby="cache-clear-title"><form onSubmit={(event) => { event.preventDefault(); void clearCache(); }}><span className="eyebrow">DESTRUCTIVE ADMIN ACTION</span><h2 id="cache-clear-title">Clear shared stage cache?</h2><p>Các job sau có thể phải tải và xử lý lại dữ liệu. Hành động này được gửi tới server và không thể hoàn tác từ Mini App.</p><div className="profile-actions"><Button type="button" variant="ghost" onClick={() => setCacheClearOpen(false)}>Cancel</Button><Button type="submit" variant="destructive" disabled={busy === "cache-clear"}>{busy === "cache-clear" ? "Clearing…" : "Clear cache"}</Button></div></form></dialog>}
    {selected && <section className="panel admin-user-detail"><div className="panel-head"><div><span className="eyebrow">USER DETAIL / {selected.telegramId}</span><h2>{selected.displayName || selected.username || selected.telegramId}</h2></div><button className="admin-row-action" onClick={() => setSelected(null)} aria-label="Đóng user detail"><X size={16} /></button></div><div className="admin-detail-facts"><span>Access <AccessBadge value={String(selected.accessStatus || "pending")} /></span><span>Credits <b>{selected.unlimited ? "Unlimited" : selected.buildCredits ?? 0}</b></span><span>Concurrent <b>{selected.concurrentJobLimit ?? 1}</b></span><span>Last seen <b>{selected.lastSeenAt || "—"}</b></span></div><div className="profile-actions">{selected.accessStatus === "approved" ? <><Button variant="outline" size="sm" disabled={Boolean(busy)} onClick={() => void updateAllowance(selected, "add")}><Check size={14} /> +1 credit</Button><Button variant="outline" size="sm" disabled={Boolean(busy)} onClick={() => void updateAllowance(selected, "unlimited")}>Unlimited</Button><Button variant="destructive" size="sm" disabled={Boolean(busy)} onClick={() => setConfirm({ user: selected, action: "revoke" })}><X size={14} /> Revoke</Button></> : <Button size="sm" disabled={Boolean(busy)} onClick={() => setConfirm({ user: selected, action: "approve" })}><Check size={14} /> Approve</Button>}</div><div className="admin-detail-stream"><div><span className="eyebrow">AUDIT / RECENT EVENTS</span><CodeBlock code={JSON.stringify(selectedEvents.slice(0, 20).map((event) => ({ type: event.type, createdAt: event.createdAt, message: event.message, jobId: event.jobId })), null, 2)} language="json" theme="github" variant="minimal" animation="none" copyable maxHeight="180px" showLineNumbers={false} />{auditHasMore && <Button variant="ghost" size="sm" disabled={busy === "audit"} onClick={() => void loadMoreAudit()}>{busy === "audit" ? "Loading…" : "Load more audit"}</Button>}</div><div><span className="eyebrow">JOB HISTORY</span><div className="admin-job-history-list">{selectedJobs.slice(0, 20).map((job, index) => { const id = String(job.jobId || job.job_id || `job-${index}`); return <button key={id} type="button" onClick={() => void openAdminJob(job)}><span className="mono">{id}</span><span>{String(job.status || "—")} · {String(job.stage || "—")}</span><Activity size={14} /></button>; })}</div>{selectedJobDetail && <CodeBlock code={JSON.stringify(selectedJobDetail, null, 2)} language="json" theme="github" variant="minimal" animation="none" copyable maxHeight="220px" showLineNumbers={false} />}</div></div></section>}
    {confirm && <dialog open className="joly-confirm-dialog"><form method="dialog"><span className="eyebrow">CONFIRM ADMIN ACTION</span><h2>{confirm.action === "revoke" ? "Revoke access?" : "Approve user?"}</h2><p>{confirm.user.displayName || confirm.user.telegramId} · action này được ghi vào audit history.</p><div className="profile-actions"><Button variant="ghost" onClick={() => setConfirm(null)}>Cancel</Button><Button variant={confirm.action === "revoke" ? "destructive" : "default"} disabled={Boolean(busy)} onClick={() => void applyUserAction(confirm.user, confirm.action)}>{confirm.action === "revoke" ? "Revoke" : "Approve"}</Button></div></form></dialog>}
  </>;
}
