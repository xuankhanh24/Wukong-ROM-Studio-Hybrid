"""Authenticated GitHub API transport with method-preserving redirects."""
from urllib.error import HTTPError
from urllib.parse import urljoin, urlsplit
from urllib.request import HTTPRedirectHandler, Request, build_opener


class _NoRedirect(HTTPRedirectHandler):
    def redirect_request(self, req, fp, code, msg, headers, newurl):
        # urllib rejects POST 307/308 and changes POST to GET on 301/302.
        # Handle redirects explicitly so API writes keep their method/body.
        return None


_opener = build_opener(_NoRedirect())


def urlopen(request: Request, *, timeout: float):
    origin = urlsplit(request.full_url)
    for attempt in range(6):
        try:
            return _opener.open(request, timeout=timeout)
        except HTTPError as exc:
            if exc.code not in (301, 302, 307, 308):
                raise
            location = exc.headers.get('Location')
            exc.close()
            if not location:
                raise RuntimeError('GitHub API redirect is missing Location') from None
            destination = urljoin(request.full_url, location)
            target = urlsplit(destination)
            if (target.scheme != 'https' or target.hostname != origin.hostname
                    or target.port != origin.port or target.username is not None
                    or target.password is not None):
                raise RuntimeError('GitHub API redirect to an untrusted endpoint was blocked') from None
            if attempt == 5:
                raise RuntimeError('GitHub API redirect limit exceeded') from None
            request = Request(destination, data=request.data, headers=dict(request.header_items()),
                              method=request.get_method())
