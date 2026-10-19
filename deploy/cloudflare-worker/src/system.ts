const DEFAULT_MAINTENANCE_MESSAGE =
  "Hệ thống đang được bảo trì. Vui lòng quay lại sau.";
const MAX_MAINTENANCE_MESSAGE_LENGTH = 500;

interface MaintenanceRow {
  enabled: number;
  message: string;
  updated_at: string;
  updated_by: string;
}

export interface MaintenanceState {
  enabled: boolean;
  message: string;
  updatedAt: string;
  updatedBy: string;
}

function publicState(row: MaintenanceRow | null): MaintenanceState {
  return {
    enabled: row?.enabled === 1,
    message: row?.message || DEFAULT_MAINTENANCE_MESSAGE,
    updatedAt: row?.updated_at || "",
    updatedBy: row?.updated_by || ""
  };
}

export async function maintenanceState(env: Env): Promise<MaintenanceState> {
  const row = await env.DB.prepare(
    `SELECT enabled, message, updated_at, updated_by
       FROM wukong_system_maintenance
      WHERE singleton = 1`
  ).first<MaintenanceRow>();
  return publicState(row);
}

export async function setMaintenanceState(
  env: Env,
  subject: string,
  payload: Record<string, unknown>
): Promise<MaintenanceState> {
  if (typeof payload.enabled !== "boolean") {
    throw new Error("Maintenance enabled must be a boolean");
  }
  const previous = await maintenanceState(env);
  const message = String(payload.message ?? previous.message).trim();
  if (!message) throw new Error("Maintenance message is required");
  if (message.length > MAX_MAINTENANCE_MESSAGE_LENGTH) {
    throw new Error(`Maintenance message must not exceed ${MAX_MAINTENANCE_MESSAGE_LENGTH} characters`);
  }
  const updatedAt = new Date().toISOString();
  await env.DB.prepare(
    `INSERT INTO wukong_system_maintenance (
       singleton, enabled, message, updated_at, updated_by
     ) VALUES (1, ?, ?, ?, ?)
     ON CONFLICT(singleton) DO UPDATE SET
       enabled = excluded.enabled,
       message = excluded.message,
       updated_at = excluded.updated_at,
       updated_by = excluded.updated_by`
  ).bind(payload.enabled ? 1 : 0, message, updatedAt, subject).run();
  return {
    enabled: payload.enabled,
    message,
    updatedAt,
    updatedBy: subject
  };
}

export async function queueReopenNotification(
  env: Env,
  subject: string,
  payload: Record<string, unknown>
): Promise<{ queued: number }> {
  if (typeof payload.message !== 'string' || !payload.message.trim()) {
    throw new Error('Notification message is required');
  }
  const message = payload.message.trim();
  if (message.length > 2000) throw new Error('Notification message must not exceed 2000 characters');
  const current = await maintenanceState(env);
  if (current.enabled || !current.updatedAt || payload.updatedAt !== current.updatedAt) {
    throw new Error('Reopen the Mini App and refresh its status before sending a notification');
  }
  const now = new Date().toISOString();
  const messagePayload = JSON.stringify({
    text: message,
    disable_web_page_preview: true,
    reply_markup: { inline_keyboard: [[{
      text: 'Mở Wukong ROM Studio', web_app: { url: env.WUKONG_TELEGRAM_WEB_APP_URL }
    }]] }
  });
  // INSERT ... SELECT makes the recipient snapshot and per-reopening dedupe atomic.
  // Recheck maintenance in SQL so a concurrent close cannot queue stale notices.
  const results = await env.DB.batch([
    env.DB.prepare(
      `INSERT OR IGNORE INTO wukong_telegram_notification_outbox
       (notification_id, dedupe_key, chat_id, payload_json, available_at, created_at)
       SELECT lower(hex(randomblob(16))), ? || subject, subject, ?, ?, ?
       FROM wukong_telegram_users
       WHERE access_status = 'approved' AND role = 'user'
         AND EXISTS (SELECT 1 FROM wukong_system_maintenance
                     WHERE singleton = 1 AND enabled = 0 AND updated_at = ?)`
    ).bind(`miniapp-reopened:${current.updatedAt}:`, messagePayload, now, now, current.updatedAt),
    env.DB.prepare(
      `INSERT OR IGNORE INTO wukong_telegram_user_events
       (event_id, subject, event_type, actor_subject, reason, details_json, created_at)
       VALUES (?, ?, 'mini_app_reopen_notification', ?, '', ?, ?)`
    ).bind(`reopen-notification:${current.updatedAt}`, subject, subject,
           JSON.stringify({ reopenedAt: current.updatedAt, messageLength: message.length }), now)
  ]);
  return { queued: results[0]?.meta.changes ?? 0 };
}
