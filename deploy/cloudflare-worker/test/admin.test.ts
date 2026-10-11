import { SELF, env } from "cloudflare:test";
import { describe, expect, it } from "vitest";
import { tmaHeaders } from "./helpers";
import { issueLaunchToken } from "../src/auth";

describe("admin user management", () => {
  it("shows complete user identity, approves access, and updates Build Allowance", async () => {
    const pendingHeaders = await tmaHeaders(88001, {
      username: "rom_user",
      first_name: "ROM",
      last_name: "User",
      photo_url: "https://cdn.example/avatar.jpg"
    });
    await SELF.fetch("https://worker.example/v1/session/open", {
      method: "POST",
      headers: pendingHeaders
    });
    const adminHeaders = {
      ...(await tmaHeaders(1678823419)),
      "Content-Type": "application/json"
    };
    const listed = await SELF.fetch(
      "https://worker.example/v1/admin/users?query=rom_user&status=pending",
      { headers: adminHeaders }
    );
    expect(listed.status).toBe(200);
    await expect(listed.json()).resolves.toMatchObject({
      total: 1,
      statusCounts: {
        approved: 1,
        pending: 1,
        revoked: 0
      },
      users: [{
        telegramId: "88001",
        username: "rom_user",
        displayName: "ROM User",
        photoUrl: "https://cdn.example/avatar.jpg",
        accessStatus: "pending"
      }]
    });

    const approved = await SELF.fetch(
      "https://worker.example/v1/admin/users/88001/approve",
      {
        method: "POST",
        headers: adminHeaders,
        body: JSON.stringify({ reason: "Approved for ROM testing" })
      }
    );
    expect(approved.status).toBe(200);
    await expect(approved.json()).resolves.toMatchObject({
      user: { accessStatus: "approved", buildCredits: 1, concurrentJobLimit: 1 }
    });

    const concurrency = await SELF.fetch(
      "https://worker.example/v1/admin/users/88001/allowance",
      {
        method: "POST",
        headers: adminHeaders,
        body: JSON.stringify({ operation: "concurrency", value: 3, reason: "Parallel ROM testing" })
      }
    );
    expect(concurrency.status).toBe(200);
    await expect(concurrency.json()).resolves.toMatchObject({
      user: { concurrentJobLimit: 3 }
    });

    const allowance = await SELF.fetch(
      "https://worker.example/v1/admin/users/88001/allowance",
      {
        method: "POST",
        headers: adminHeaders,
        body: JSON.stringify({ operation: "add", value: 3, reason: "Test batch" })
      }
    );
    await expect(allowance.json()).resolves.toMatchObject({
      user: { buildCredits: 4, lifetimeGranted: 4 }
    });

    const me = await SELF.fetch("https://worker.example/v1/me", { headers: pendingHeaders });
    await expect(me.json()).resolves.toMatchObject({
      user: { accessStatus: "approved", buildCredits: 4 }
    });
  });

  it("rejects invalid per-user concurrent job limits", async () => {
    const adminHeaders = {
      ...(await tmaHeaders(1678823419)),
      "Content-Type": "application/json"
    };
    const response = await SELF.fetch(
      "https://worker.example/v1/admin/users/88001/allowance",
      {
        method: "POST",
        headers: adminHeaders,
        body: JSON.stringify({ operation: "concurrency", value: 0, reason: "invalid" })
      }
    );
    expect(response.status).toBe(409);
  });

  it("does not allow the configured admin to be revoked", async () => {
    const response = await SELF.fetch(
      "https://worker.example/v1/admin/users/1678823419/revoke",
      {
        method: "POST",
        headers: {
          ...(await tmaHeaders(1678823419)),
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ reason: "should fail" })
      }
    );
    expect(response.status).toBe(409);
  });

  it("paginates the access audit with an opaque cursor and no duplicate events", async () => {
    const subject = "88002";
    const pendingHeaders = await tmaHeaders(Number(subject), {
      username: "audit_user",
      first_name: "Audit",
      last_name: "User"
    });
    for (let index = 0; index < 105; index += 1) {
      await SELF.fetch("https://worker.example/v1/session/open", {
        method: "POST",
        headers: {
          ...pendingHeaders,
          "X-Wukong-Session-Id": `audit-page-${index}`
        }
      });
    }
    const adminHeaders = await tmaHeaders(1678823419);
    const detail = await SELF.fetch(
      `https://worker.example/v1/admin/users/${subject}`,
      { headers: adminHeaders }
    );
    const firstPage = await detail.json() as {
      events: Array<{ eventId: string; telegramId: string }>;
      eventsHasMore: boolean;
      eventsNextCursor: string;
    };
    expect(firstPage.events).toHaveLength(100);
    expect(firstPage.eventsHasMore).toBe(true);
    expect(firstPage.eventsNextCursor).not.toBe("");
    expect(firstPage.events.every((event) => event.telegramId === subject)).toBe(true);

    const next = await SELF.fetch(
      `https://worker.example/v1/admin/users/${subject}/events?cursor=${encodeURIComponent(firstPage.eventsNextCursor)}&limit=100`,
      { headers: adminHeaders }
    );
    const secondPage = await next.json() as {
      events: Array<{ eventId: string }>;
      hasMore: boolean;
      nextCursor: string;
    };
    expect(secondPage.events.length).toBeGreaterThan(0);
    expect(secondPage.hasMore).toBe(false);
    expect(secondPage.nextCursor).toBe("");
    expect(
      secondPage.events.some((event) =>
        firstPage.events.some((first) => first.eventId === event.eventId)
      )
    ).toBe(false);

    const invalid = await SELF.fetch(
      `https://worker.example/v1/admin/users/${subject}/events?cursor=not-a-cursor`,
      { headers: adminHeaders }
    );
    expect(invalid.status).toBe(400);
  }, 30_000);
  it("resets access without losing history and requests approval once on the next visit", async () => {
    const subject = "88009";
    const userHeaders = await tmaHeaders(Number(subject), { first_name: "Reset User" });
    const adminHeaders = { ...(await tmaHeaders(1678823419)), "Content-Type": "application/json" };
    const action = (id: string, name: string, payload: Record<string, unknown>) => SELF.fetch(
      `https://worker.example/v1/admin/users/${id}/${name}`,
      { method: "POST", headers: adminHeaders, body: JSON.stringify(payload) }
    );
    await SELF.fetch("https://worker.example/v1/session/open", { method: "POST", headers: userHeaders });
    await action(subject, "approve", { reason: "initial approval" });
    await action(subject, "allowance", { operation: "unlimited", unlimited: true, reason: "test unlimited" });
    await action(subject, "allowance", { operation: "concurrency", value: 5 });
    await env.DB.prepare(
      "UPDATE wukong_telegram_users SET job_count=7, lifetime_used=3, last_job_id='historical-job', last_job_status='succeeded' WHERE subject=?"
    ).bind(subject).run();
    const before = await env.DB.prepare("SELECT * FROM wukong_telegram_user_events WHERE subject=?").bind(subject).all();
    expect((await action(subject, "reset-access", {})).status).toBe(400);
    const denied = await SELF.fetch(`https://worker.example/v1/admin/users/${subject}/reset-access`, {
      method: "POST", headers: { ...userHeaders, "Content-Type": "application/json" }, body: JSON.stringify({ reason: "unauthorized" })
    });
    expect(denied.status).toBe(403);
    expect((await action("1678823419", "reset-access", { reason: "protected admin" })).status).toBe(409);
    expect((await action("999999999", "reset-access", { reason: "missing user" })).status).toBe(409);
    const reset = await action(subject, "reset-access", { reason: "start over" });
    expect(reset.status).toBe(200);
    await expect(reset.json()).resolves.toMatchObject({ user: {
      accessStatus: "pending", role: "user", buildCredits: 0, unlimited: false, concurrentJobLimit: 1,
      approvedAt: "", revokedAt: "", jobCount: 7, lifetimeUsed: 3, lifetimeGranted: 1,
      lastJobId: "historical-job", lastJobStatus: "succeeded", displayName: "Reset User"
    } });
    const after = await env.DB.prepare("SELECT * FROM wukong_telegram_user_events WHERE subject=?").bind(subject).all();
    expect(after.results).toEqual(expect.arrayContaining(before.results));
    expect(after.results).toEqual(expect.arrayContaining([expect.objectContaining({ event_type: "access_reset", actor_subject: "1678823419", reason: "start over" })]));
    expect(await env.DB.prepare("SELECT * FROM wukong_telegram_access WHERE subject=?").bind(subject).first()).toBeNull();
    const launchHeaders = { ...userHeaders, Authorization: `wla ${await issueLaunchToken(subject, "123456789:fixture_bot_secret_value")}` };
    expect((await SELF.fetch("https://worker.example/v1/jobs", { headers: launchHeaders })).status).toBe(403);
    for (let i = 0; i < 2; i++) {
      const me = await SELF.fetch("https://worker.example/v1/me", { headers: userHeaders });
      await expect(me.json()).resolves.toMatchObject({ user: { accessStatus: "pending" } });
    }
    const notifications = await env.DB.prepare(
      "SELECT dedupe_key FROM wukong_telegram_notification_outbox WHERE dedupe_key LIKE 'access-request-reset:%' AND payload_json LIKE '%88009%'"
    ).all();
    expect(notifications.results).toHaveLength(1);
    const reapproved = await action(subject, "approve", { reason: "fresh approval" });
    await expect(reapproved.json()).resolves.toMatchObject({ user: { accessStatus: "approved", buildCredits: 1, jobCount: 7, lifetimeGranted: 2 } });
    await action(subject, "revoke", { reason: "revoke then reset" });
    await action(subject, "reset-access", { reason: "second cycle" });
    await SELF.fetch("https://worker.example/v1/me", { headers: userHeaders });
    const nextCycle = await env.DB.prepare(
      "SELECT dedupe_key FROM wukong_telegram_notification_outbox WHERE dedupe_key LIKE 'access-request-reset:%' AND payload_json LIKE '%88009%'"
    ).all();
    expect(nextCycle.results).toHaveLength(2);
  });


});
