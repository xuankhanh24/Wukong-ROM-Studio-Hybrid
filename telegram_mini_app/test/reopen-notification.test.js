import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';
import vm from 'node:vm';

async function harness() {
  const source = await readFile(new URL('../modules/admin-panel.js', import.meta.url), 'utf8');
  const fragment = source.slice(source.indexOf("let reopenNotificationVersion"), source.indexOf('async function updateMaintenance'));
  const nodes = new Map();
  const $ = id => {
    if (!nodes.has(id)) nodes.set(id, {
      value: '', textContent: '', hidden: false, disabled: false,
      classList: { toggle() {} }, querySelector() { return this; }, focus() { this.focused = true; }
    });
    return nodes.get(id);
  };
  const requests = [];
  const context = {
    $, state: { me: { role: 'admin' }, maintenance: { enabled: false, updatedAt: 'reopen-1' } },
    runtime: {}, t: key => key, toast() {}, window: { confirm: () => true },
    apiRequest: async (url, options) => { requests.push({ url, body: JSON.parse(options.body) }); return { queued: 3 }; }
  };
  vm.runInNewContext(fragment, context);
  context.confirmReopenNotification = async () => true;
  context.renderMaintenanceAdmin();
  return { context, $, requests };
}

test('reopening reveals a composer without sending and preserves the edited message', async () => {
  const { context, $, requests } = await harness();
  assert.equal($('#reopen-notification').hidden, false);
  assert.equal(requests.length, 0);
  $('#reopen-notification-message').value = 'Nội dung của admin';
  context.renderMaintenanceAdmin();
  assert.equal($('#reopen-notification-message').value, 'Nội dung của admin');
  await context.sendReopenNotification();
  assert.deepEqual(requests, [{ url: '/v1/system/reopen-notification',
    body: { message: 'Nội dung của admin', updatedAt: 'reopen-1' } }]);
  assert.equal($('#reopen-notification-send').disabled, true);
  await context.sendReopenNotification();
  assert.equal(requests.length, 1);
});

test('cancel, empty text, closed maintenance, and non-admin do not send', async () => {
  const { context, $, requests } = await harness();
  context.confirmReopenNotification = async () => false;
  await context.sendReopenNotification();
  assert.equal(requests.length, 0);
  context.confirmReopenNotification = async () => true;
  $('#reopen-notification-message').value = '   ';
  await context.sendReopenNotification();
  assert.equal($('#reopen-notification-message').focused, true);
  $('#reopen-notification-message').value = 'Ready';
  context.state.maintenance.enabled = true;
  context.renderMaintenanceAdmin();
  assert.equal($('#reopen-notification').hidden, true);
  await context.sendReopenNotification();
  context.state.maintenance.enabled = false;
  context.state.me.role = 'user';
  await context.sendReopenNotification();
  assert.equal(requests.length, 0);
});

test('failed requests keep the draft and allow retry; a new reopening resets the composer', async () => {
  const { context, $, requests } = await harness();
  $('#reopen-notification-message').value = 'Giữ nội dung';
  const send = context.apiRequest;
  context.apiRequest = async () => { throw new Error('Offline'); };
  await context.sendReopenNotification();
  assert.equal($('#reopen-notification-message').value, 'Giữ nội dung');
  assert.equal($('#reopen-notification-send').disabled, false);
  assert.equal($('#reopen-notification-status').textContent, 'Offline');
  context.apiRequest = send;
  await context.sendReopenNotification();
  assert.equal(requests.length, 1);
  context.state.maintenance.updatedAt = 'reopen-2';
  context.renderMaintenanceAdmin();
  assert.equal($('#reopen-notification-send').disabled, false);
  assert.equal($('#reopen-notification-message').value, 'reopenNotificationDefault');
});
