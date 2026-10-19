import { SELF, env } from "cloudflare:test";
import { describe, expect, it } from "vitest";
import { tmaHeaders } from "./helpers";

describe("system maintenance mode", () => {
  it("queues a custom reopening notice only for approved users and deduplicates retries", async () => {
    const admin = await tmaHeaders(1678823419);
    const bindings = env as unknown as Env;
    const headers = { ...admin, 'Content-Type': 'application/json' };
    for (const [id, status] of [[77101, 'approved'], [77102, 'pending'], [77103, 'revoked']] as const) {
      await SELF.fetch('https://worker.example/v1/session/open', { method: 'POST', headers: await tmaHeaders(id) });
      await bindings.DB.prepare('UPDATE wukong_telegram_users SET access_status = ? WHERE subject = ?')
        .bind(status, String(id)).run();
    }
    const reopen = await SELF.fetch('https://worker.example/v1/system/maintenance', {
      method: 'PUT', headers, body: JSON.stringify({ enabled: false })
    });
    const { maintenance } = await reopen.json() as { maintenance: { updatedAt: string } };
    const send = (message: unknown, updatedAt = maintenance.updatedAt) => SELF.fetch(
      'https://worker.example/v1/system/reopen-notification', {
        method: 'POST', headers, body: JSON.stringify({ message, updatedAt })
      });
    expect((await send('')).status).toBe(400);
    expect((await send('x'.repeat(2001))).status).toBe(400);
    expect((await send({ text: 'not a string' })).status).toBe(400);
    expect((await send('Ready', 'stale-version')).status).toBe(400);
    const message = 'Đã mở lại Mini App. <Tùy chỉnh> & sẵn sàng!';
    expect((await send(message)).status).toBe(200);
    const rows = await bindings.DB.prepare(
      "SELECT chat_id, payload_json FROM wukong_telegram_notification_outbox WHERE dedupe_key LIKE ?"
    ).bind(`miniapp-reopened:${maintenance.updatedAt}:%`).all<{ chat_id: string; payload_json: string }>();
    expect(rows.results.map(row => row.chat_id)).toContain('77101');
    expect(rows.results.map(row => row.chat_id)).not.toContain('77102');
    expect(rows.results.map(row => row.chat_id)).not.toContain('77103');
    expect(rows.results.map(row => row.chat_id)).not.toContain('1678823419');
    const payload = JSON.parse(rows.results.find(row => row.chat_id === '77101')!.payload_json);
    expect(payload.text).toBe(message);
    expect(payload.parse_mode).toBeUndefined();
    expect(payload.reply_markup.inline_keyboard[0][0].web_app.url).toContain('https://');
    const repeated = await send('Nội dung khác nhưng cùng lần mở lại');
    expect(await repeated.json()).toMatchObject({ queued: 0 });
    await SELF.fetch('https://worker.example/v1/system/maintenance', {
      method: 'PUT', headers, body: JSON.stringify({ enabled: true })
    });
    expect((await send('Do not send while closed')).status).toBe(400);
    const next = await SELF.fetch('https://worker.example/v1/system/maintenance', {
      method: 'PUT', headers, body: JSON.stringify({ enabled: false })
    });
    const nextState = await next.json() as { maintenance: { updatedAt: string } };
    const concurrent = await Promise.all([send('New reopening', nextState.maintenance.updatedAt),
                                          send('New reopening', nextState.maintenance.updatedAt)]);
    for (const response of concurrent) expect(response.status).toBe(200);
    const duplicateCount = await bindings.DB.prepare(
      'SELECT COUNT(*) AS count FROM wukong_telegram_notification_outbox WHERE dedupe_key = ?'
    ).bind(`miniapp-reopened:${nextState.maintenance.updatedAt}:77101`).first<{ count: number }>();
    expect(duplicateCount?.count).toBe(1);
  });

  it("rejects reopening broadcasts from non-admin users", async () => {
    const response = await SELF.fetch('https://worker.example/v1/system/reopen-notification', {
      method: 'POST', headers: { ...await tmaHeaders(77104), 'Content-Type': 'application/json' },
      body: JSON.stringify({ message: 'Fake broadcast' })
    });
    expect(response.status).toBe(403);
  });
  it("locks approved users out while the configured admin keeps access", async () => {
    const adminHeaders = await tmaHeaders(1678823419, { username: "owner" });
    const userHeaders = await tmaHeaders(77011, { username: "approved_user" });

    await SELF.fetch("https://worker.example/v1/session/open", {
      method: "POST",
      headers: userHeaders
    });
    const approved = await SELF.fetch(
      "https://worker.example/v1/admin/users/77011/approve",
      {
        method: "POST",
        headers: {
          ...adminHeaders,
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ reason: "Maintenance test" })
      }
    );
    expect(approved.status).toBe(200);

    const enabled = await SELF.fetch("https://worker.example/v1/system/maintenance", {
      method: "PUT",
      headers: {
        ...adminHeaders,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        enabled: true,
        message: "Đang nâng cấp hệ thống build ROM."
      })
    });
    expect(enabled.status).toBe(200);
    await expect(enabled.json()).resolves.toMatchObject({
      maintenance: {
        enabled: true,
        message: "Đang nâng cấp hệ thống build ROM.",
        updatedBy: "1678823419"
      }
    });

    const opened = await SELF.fetch("https://worker.example/v1/session/open", {
      method: "POST",
      headers: userHeaders
    });
    expect(opened.status).toBe(200);
    await expect(opened.json()).resolves.toMatchObject({
      user: { telegramId: "77011", accessStatus: "approved" },
      maintenance: {
        enabled: true,
        message: "Đang nâng cấp hệ thống build ROM."
      }
    });

    const denied = await SELF.fetch("https://worker.example/v1/sync", {
      headers: userHeaders
    });
    expect(denied.status).toBe(503);
    await expect(denied.json()).resolves.toMatchObject({
      code: "maintenance_mode",
      maintenance: {
        enabled: true,
        message: "Đang nâng cấp hệ thống build ROM."
      }
    });

    const adminSync = await SELF.fetch("https://worker.example/v1/sync", {
      headers: adminHeaders
    });
    expect(adminSync.status).toBe(200);

    const disabled = await SELF.fetch("https://worker.example/v1/system/maintenance", {
      method: "PUT",
      headers: {
        ...adminHeaders,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ enabled: false })
    });
    expect(disabled.status).toBe(200);

    const restored = await SELF.fetch("https://worker.example/v1/sync", {
      headers: userHeaders
    });
    expect(restored.status).toBe(200);
  });

  it("does not allow a normal user to change maintenance state", async () => {
    const userHeaders = await tmaHeaders(77012);
    const response = await SELF.fetch("https://worker.example/v1/system/maintenance", {
      method: "PUT",
      headers: {
        ...userHeaders,
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ enabled: true })
    });

    expect(response.status).toBe(403);
  });
});
