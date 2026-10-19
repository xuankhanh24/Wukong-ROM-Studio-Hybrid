"""Sanitize diagnostics before persisting them as downloadable build artifacts."""
from __future__ import annotations

import os
import re
from urllib.parse import urlsplit, urlunsplit


class LogRedactor:
    def __init__(self, environ=None):
        environ = os.environ if environ is None else environ
        self.secrets = sorted({value for name, value in environ.items()
                               if any(key in name.upper() for key in ('SECRET', 'TOKEN', 'PASSWORD', 'CONFIG_B64'))
                               and len(value) >= 8}, key=len, reverse=True)

    def __call__(self, value: str) -> str:
        for secret in self.secrets:
            value = value.replace(secret, '[REDACTED]')
        def clean_url(match):
            raw = match.group(0)
            try:
                url = urlsplit(raw)
                host = url.netloc.rsplit('@', 1)[-1]
                return urlunsplit((url.scheme, host, url.path,
                                   'REDACTED' if url.query else '', ''))
            except ValueError:
                return '[REDACTED URL]'
        value = re.sub(r'https?://[^\s<>\"\']+', clean_url, value)
        value = re.sub(r'(?i)(authorization\s*[:=]\s*)(?:bearer|basic)\s+\S+',
                       r'\1[REDACTED]', value)
        return value
