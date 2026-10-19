/** Safe localized messages shared by source analysis and library Resolve. */
export function sourceErrorKey(error = {}) {
  if (error.code === 'source_signed_url_expired') return 'probeSignedExpired';
  if (error.status === 429) return 'probeRateLimited';
  if (error.status === 401) return 'probeSessionRequired';
  if (error.status === 403) return 'probeAccessDenied';
  if (error.code === 'request_timeout') return 'requestTimedOut';
  if (error.connectionFailed) return 'apiOfflineMessage';
  if (error.status === 502 || error.status === 504) return 'probeTransportFailed';
  if (error.status === 503) return 'probeServiceUnavailable';
  if (error.sourceRejected) return 'probeFailed';
  return 'probeDeferred';
}
