"""Publish verified content snapshots without overwriting assets used by jobs.

Each operation gets a unique release. The repository index is the final commit
point; an interrupted upload never replaces the previously published catalog.
"""
from __future__ import annotations

import http.client
import json
import re
import tempfile
import time
import uuid
from datetime import datetime, timezone
from pathlib import Path
from typing import Any, Callable, Mapping
from urllib.error import HTTPError
from urllib.parse import quote, urlencode, urlsplit
from urllib.request import Request

from .adapters import SourceIntegrityError, sha256_file
from .content_packs import ContentPackManager, create_content_pack_archive, validate_content_index
from .content_sync import _atomic_write_index, discover_pack_sources, publish_index_to_github
from .github_http import urlopen

DEFAULT_REPOSITORY = "xuankhanh24/Wukong-ROM-Studio-Hybrid"
MAX_ASSET_BYTES = 1800 * 1024 * 1024
CHUNK = 1024 * 1024
Progress = Callable[[Mapping[str, object]], None]


class GitHubReleases:
    def __init__(self, repository: str, token: str) -> None:
        if not re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", repository):
            raise ValueError("GitHub repository must be owner/name")
        if not token.strip():
            raise ValueError("GitHub token with Contents write permission is required")
        self.repository = repository
        self.token = token

    def request(self, path: str, payload: Mapping[str, Any] | None = None, *, method: str | None = None) -> Any:
        request = Request(
            f"https://api.github.com/repos/{self.repository}/{path}",
            data=None if payload is None else json.dumps(payload).encode(),
            headers={"Authorization": f"Bearer {self.token}", "Accept": "application/vnd.github+json",
                     "User-Agent": "Wukong-ROM-Studio/1", "X-GitHub-Api-Version": "2022-11-28"},
            method=method,
        )
        try:
            with urlopen(request, timeout=60) as response:
                data = response.read()
                return json.loads(data) if data else None
        except HTTPError as exc:
            # Do not print request headers, tokens or raw response bodies.
            raise RuntimeError(f"GitHub {method or ('POST' if payload else 'GET')} {path}: HTTP {exc.code}") from None

    def create(self, tag: str) -> Mapping[str, Any]:
        return self.request("releases", {"tag_name": tag, "name": f"Shared content · {tag}",
            "draft": True, "prerelease": False,
            "body": "Versioned Wukong content packs. SHA-256 verified before catalog publication."})

    def upload(self, release: Mapping[str, Any], path: Path, progress: Progress | None = None) -> Mapping[str, Any]:
        expected = sha256_file(path)
        for attempt in range(3):
            if attempt:
                # A timed-out response may still mean GitHub accepted the file.
                assets = self.request(f"releases/{release['id']}/assets?per_page=100")
                for asset in assets:
                    if asset.get('name') == path.name:
                        if (asset.get('state') == 'uploaded' and asset.get('size') == path.stat().st_size
                                and asset.get('digest') == f'sha256:{expected}'):
                            return asset
                        # Only clean an incomplete asset in OUR new draft.
                        self.request(f"releases/assets/{asset['id']}", method='DELETE')
                time.sleep(attempt)
            try:
                return self._upload_once(release, path, progress)
            except (OSError, http.client.HTTPException, RuntimeError):
                if attempt == 2:
                    raise
        raise AssertionError('Unreachable')

    def _upload_once(self, release: Mapping[str, Any], path: Path, progress: Progress | None = None) -> Mapping[str, Any]:
        parsed = urlsplit(str(release["upload_url"]).split("{", 1)[0])
        if parsed.scheme != "https" or parsed.hostname != "uploads.github.com":
            raise ValueError("Unexpected GitHub upload endpoint")
        size = path.stat().st_size
        if size > MAX_ASSET_BYTES:
            raise ValueError("Asset must be split before upload")
        connection = http.client.HTTPSConnection(parsed.hostname, timeout=180)
        started = time.monotonic()
        try:
            connection.putrequest("POST", parsed.path + "?" + urlencode({"name": path.name}))
            for key, value in {"Authorization": f"Bearer {self.token}", "User-Agent": "Wukong-ROM-Studio/1",
                               "Content-Type": "application/octet-stream", "Content-Length": str(size)}.items():
                connection.putheader(key, value)
            connection.endheaders()
            sent = 0
            last_report = 0.0
            with path.open("rb") as stream:
                for chunk in iter(lambda: stream.read(CHUNK), b""):
                    connection.send(chunk)
                    sent += len(chunk)
                    elapsed = max(time.monotonic() - started, 0.001)
                    if progress and (elapsed - last_report >= 0.5 or sent == size):
                        speed = sent / elapsed
                        progress({"bytes": sent, "totalBytes": size, "percent": sent * 100 / max(size, 1),
                                  "speedBytesPerSecond": speed, "etaSeconds": (size - sent) / max(speed, 1)})
                        last_report = elapsed
            response = connection.getresponse()
            body = response.read()
            if response.status != 201:
                raise RuntimeError(f"GitHub asset upload failed: HTTP {response.status} ({path.name})")
            asset = json.loads(body)
        finally:
            connection.close()
        expected = sha256_file(path)
        # GitHub computes the digest independently, not an echoed custom header.
        if asset.get("state") != "uploaded" or asset.get("size") != size or asset.get("digest") != f"sha256:{expected}":
            raise SourceIntegrityError(f"GitHub asset verification failed: {path.name}")
        return asset

    def publish(self, release: Mapping[str, Any]) -> None:
        self.request(f"releases/{release['id']}", {"draft": False, "make_latest": "false"}, method="PATCH")


def archive_parts(path: Path, *, limit: int = MAX_ASSET_BYTES):
    """Yield bounded assets; APK contents are never unpacked or recompressed."""
    if path.stat().st_size <= limit:
        yield path
        return
    with path.open("rb") as stream:
        index = 0
        while stream.tell() < path.stat().st_size:
            index += 1
            part = path.with_name(f"{path.name}.part{index:03d}")
            try:
                with part.open("wb") as output:
                    remaining = limit
                    while remaining:
                        chunk = stream.read(min(CHUNK, remaining))
                        if not chunk:
                            break
                        output.write(chunk)
                        remaining -= len(chunk)
                yield part
            finally:
                part.unlink(missing_ok=True)


def publish_release_packs(
    install_root: Path, index_path: Path, *, repository: str, token: str,
    pack_ids: set[str] | None = None, branch: str = "main", progress: Progress | None = None,
    client: GitHubReleases | None = None,
    publish_catalog: bool = True,
) -> dict[str, Any]:
    """Stage fresh hashes, upload immutable bytes, publish index LAST.

    A selected pack can change freely between publishes. Changes during archive
    creation are rejected; checksums are never disabled to accept corrupt data.
    """
    from .content_packs import build_content_pack_record

    client = client or GitHubReleases(repository, token)
    sources = discover_pack_sources(install_root)
    selected = pack_ids if pack_ids is not None else {p for p in sources if p.startswith("MOD/")}
    if not selected or not selected.issubset(sources):
        raise ValueError("Selected content-pack source is missing or empty")
    if "STARK/common" in selected:
        raise ValueError("STARK is shared through Git commits, not Release packs")
    existing = json.loads(index_path.read_text(encoding="utf-8")) if index_path.is_file() else {"schemaVersion": 1, "packs": []}
    validate_content_index(existing)
    tag = "content-" + datetime.now(timezone.utc).strftime("%Y%m%d-%H%M%S-") + uuid.uuid4().hex[:8]
    release = client.create(tag)
    if progress:
        progress({'phase': 'release-created', 'tag': tag, 'releaseId': release['id']})
    replacements = {}
    uploaded_archives: dict[str, list[dict[str, Any]]] = {}
    work_root = install_root / "Data/ContentSync/releases"
    work_root.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="publish-", dir=work_root) as directory:
        for number, pack_id in enumerate(sorted(selected), 1):
            def report(phase: str, **values: object) -> None:
                if progress:
                    progress({"phase": phase, "packId": pack_id, "packIndex": number,
                              "packCount": len(selected), **values})
            pack = build_content_pack_record(sources[pack_id], remote=f"https://github.com/{repository}/releases/download/{tag}", pack_id=pack_id)
            archive_path = Path(directory) / (pack_id.replace("/", "-") + ".tar.zst")
            report("archive")
            record = create_content_pack_archive(sources[pack_id], pack, archive_path)
            parts = uploaded_archives.get(str(record['sha256']))
            if parts is None:
                parts = []
                for part in archive_parts(archive_path):
                    report("upload", bytes=0, totalBytes=part.stat().st_size, percent=0)
                    asset = client.upload(release, part, lambda values: report("upload", **values))
                    # Draft assets may return an /untagged-.../ URL which changes
                    # on publication. Persist the final tag/name URL instead.
                    final_uri = f"https://github.com/{repository}/releases/download/{quote(tag, safe='')}/{quote(str(asset.get('name') or part.name), safe='')}"
                    parts.append({"uri": final_uri, "sizeBytes": asset["size"],
                                  "sha256": str(asset["digest"]).removeprefix("sha256:")})
                uploaded_archives[str(record['sha256'])] = parts
            record.update(uri=parts[0]["uri"], format="tar.zst", parts=parts)
            pack["archive"] = record
            replacements[pack_id] = pack
            archive_path.unlink()
            report("complete", bytes=record["sizeBytes"], totalBytes=record["sizeBytes"], percent=100)
        packs = [pack for pack in existing["packs"] if pack["id"] not in replacements]
        packs.extend(replacements.values())
        # The Git checkout/installer owns STARK; old Drive snapshots must not
        # overwrite scripts or manager binaries shipped with that revision.
        for pack in packs:
            if pack["id"] == "STARK/common":
                pack.pop("archive", None)
                pack["source"] = "git"
        index = {"schemaVersion": 1, "generatedAt": datetime.now(timezone.utc).isoformat(),
                 "catalogUri": f"https://raw.githubusercontent.com/{repository}/{quote(branch, safe='')}/content-packs/index.json",
                 "releaseTag": tag, "packs": sorted(packs, key=lambda pack: pack["id"])}
        validate_content_index(index)
        staged = Path(directory) / "index.json"
        _atomic_write_index(staged, index)
        client.upload(release, staged)
        client.publish(release)
        # A failed publication leaves old local and remote catalogs unchanged.
        commit = publish_index_to_github(staged, repository=repository, token=token, branch=branch,
                                         merge_pack_ids=selected) if publish_catalog else ''
        if publish_catalog:
            index = json.loads(staged.read_text(encoding='utf-8'))
        _atomic_write_index(index_path, index)
    return {"tag": tag, "url": f"https://github.com/{repository}/releases/tag/{tag}",
            "commit": commit, "packs": sorted(selected)}
