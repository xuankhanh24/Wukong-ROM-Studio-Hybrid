import test from 'node:test';
import assert from 'node:assert/strict';
import { sourceErrorKey } from '../lib/source-errors.js';

test('analysis and resolve distinguish origin failures, rate limits and authentication', () => {
  assert.equal(sourceErrorKey({status: 502, code: 'source_unreachable'}), 'probeTransportFailed');
  assert.equal(sourceErrorKey({status: 429}), 'probeRateLimited');
  assert.equal(sourceErrorKey({status: 503}), 'probeServiceUnavailable');
  assert.equal(sourceErrorKey({status: 401}), 'probeSessionRequired');
  assert.equal(sourceErrorKey({status: 403}), 'probeAccessDenied');
  assert.equal(sourceErrorKey({status: 400, sourceRejected: true}), 'probeFailed');
  assert.equal(sourceErrorKey({code: 'source_signed_url_expired'}), 'probeSignedExpired');
  assert.equal(sourceErrorKey({code: 'request_timeout'}), 'requestTimedOut');
  assert.equal(sourceErrorKey({connectionFailed: true}), 'apiOfflineMessage');
  assert.equal(sourceErrorKey({}), 'probeDeferred');
});
