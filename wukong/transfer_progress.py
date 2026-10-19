"""Thread-safe byte measurements; resumed bytes never inflate network speed."""
from threading import Lock
import time


class TransferMeter:
    def __init__(self, callback=None, *, total=None, initial=0, clock=None, interval=1.0, started_at=None):
        self.callback = callback
        self.total = total if total is not None and total >= 0 else None
        self.completed = initial
        self.clock = clock or time.monotonic
        self.interval = interval
        self._sample_at = self.clock() if started_at is None else started_at
        self._sample_bytes = initial
        self._speed = None
        self._lock = Lock()
        self._report(force=True, initial=True)

    def advance(self, count):
        with self._lock:
            self.completed += count
            self._report()

    def finish(self):
        with self._lock:
            if self.total is None:
                self.total = self.completed
            self._report(force=True, complete=True)

    def _report(self, *, force=False, complete=False, initial=False):
        if self.callback is None:
            return
        now = self.clock()
        elapsed = now - self._sample_at
        if not force and elapsed < self.interval:
            return
        if not initial and elapsed > 0 and (not complete or self.completed != self._sample_bytes):
            self._speed = max(0, self.completed - self._sample_bytes) / elapsed
        percent = min(100.0, self.completed * 100 / self.total) if self.total else (100.0 if complete else None)
        remaining = max(0, self.total - self.completed) if self.total is not None else None
        self.callback({
            'bytes': self.completed, 'totalBytes': self.total, 'percent': percent,
            'speedBytesPerSecond': self._speed,
            'etaSeconds': 0.0 if complete else remaining / self._speed if remaining is not None and self._speed else None,
            'status': 'complete' if complete else 'transferring',
        })
        if not initial:
            self._sample_at, self._sample_bytes = now, self.completed
