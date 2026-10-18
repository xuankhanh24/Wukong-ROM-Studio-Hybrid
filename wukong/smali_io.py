"""Bounded parallel content hashing and build-scoped smali path lookup.

No size/mtime shortcuts: even same-size edits with restored timestamps are hashed.
The index caches paths only, never class content, and expires with each patch call.
"""
from concurrent.futures import ThreadPoolExecutor
from contextlib import contextmanager
from contextvars import ContextVar
import hashlib
from pathlib import Path
import re
import struct
import time
import zlib

_INDEX = ContextVar('wukong_smali_index', default=None)
_BATCH = 256


def assembly_api(decoded):
    """Use apktool's detected platform API; hidden-API flags need at least 29."""
    metadata = Path(decoded) / 'apktool.yml'
    if not metadata.is_file():
        return 29
    content = metadata.read_text(encoding='utf-8')
    match = re.search(r'''(?m)^\s+minSdkVersion:\s*['"]?(\d+)['"]?\s*$''', content)
    if not match:
        if 'minSdkVersion:' in content:
            raise ValueError('Non-numeric minSdkVersion in decoded apktool metadata')
        return 29
    return max(29, int(match[1]))


def validate_dex(path):
    """Do not trust a zero assembler exit: validate DEX header, size and hashes."""
    path = Path(path)
    size = path.stat().st_size
    with path.open('rb') as handle:
        validate_dex_stream(handle, size)


def validate_dex_stream(handle, size):
    """Validate a file or ZIP member without materializing a second DEX copy."""
    header = handle.read(112)
    if (len(header) != 112 or header[:4] != b'dex\n'
            or not header[4:7].isdigit() or header[7] != 0):
        raise ValueError('Missing or invalid DEX magic/header')
    file_size, header_size = struct.unpack_from('<II', header, 32)
    if file_size != size or header_size < 112 or header_size > size:
        raise ValueError('Invalid DEX file/header size')
    if struct.unpack_from('<I', header, 40)[0] != 0x12345678:
        raise ValueError('Invalid DEX endian tag')
    signature = hashlib.sha1(header[32:], usedforsecurity=False)
    checksum = zlib.adler32(header[12:])
    for chunk in iter(lambda: handle.read(1024 * 1024), b''):
        signature.update(chunk)
        checksum = zlib.adler32(chunk, checksum)
    if signature.digest() != header[12:32]:
        raise ValueError('Invalid DEX SHA-1 signature')
    if checksum != struct.unpack_from('<I', header, 8)[0]:
        raise ValueError('Invalid DEX Adler-32 checksum')


def _file_digest(path):
    return hashlib.sha256(path.read_bytes()).digest()


def dex_fingerprints(decoded, *, workers=8, progress=None):
    groups = []
    for folder in Path(decoded).iterdir():
        if not folder.is_dir():
            continue
        if folder.name == 'smali':
            name = 'classes.dex'
        elif match := re.fullmatch(r'smali_classes(\d+)', folder.name):
            name = f'classes{match[1]}.dex'
        else:
            continue
        groups.append((name, folder, sorted(folder.rglob('*.smali'))))
    total = sum(len(files) for _, _, files in groups)
    done = 0
    last_update = time.monotonic()
    if progress:
        progress(0, total)
    result = {}
    with ThreadPoolExecutor(max_workers=max(1, min(8, workers)), thread_name_prefix='smali-hash') as executor:
        for name, folder, files in groups:
            digest = hashlib.sha256()
            for start in range(0, len(files), _BATCH):
                batch = files[start:start + _BATCH]
                # map yields in input order, making the digest byte-identical to
                # the original serial algorithm, regardless of completion order.
                for path, content_digest in zip(batch, executor.map(_file_digest, batch)):
                    digest.update(path.relative_to(folder).as_posix().encode('utf-8') + b'\0')
                    digest.update(content_digest)
                done += len(batch)
                now = time.monotonic()
                if progress and (done == total or now - last_update >= 1):
                    progress(done, total)
                    last_update = now
            result[name] = digest.hexdigest()
    return result


@contextmanager
def index_scope(decoded):
    root = Path(decoded).resolve()
    by_name = {}
    for path in root.rglob('*.smali'):
        by_name.setdefault(path.name, []).append(path)
    token = _INDEX.set((root, by_name))
    try:
        yield
    finally:
        _INDEX.reset(token)


def find_matches(decoded, relative):
    root, relative = Path(decoded), Path(relative)
    index = _INDEX.get()
    candidates = (index[1].get(relative.name, []) if index and index[0] == root.resolve()
                  else root.rglob(relative.name))
    return [path for path in candidates
            if tuple(path.parts[-len(relative.parts):]) == relative.parts and path.is_file()]


def register_path(path):
    """Keep explicitly installed bridge classes visible during this patch scope."""
    index = _INDEX.get()
    path = Path(path).resolve()
    if index and path.is_relative_to(index[0]):
        paths = index[1].setdefault(path.name, [])
        if path not in paths:
            paths.append(path)
