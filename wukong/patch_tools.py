"""Shared, transactional archive operations for in-place STARK patch scripts.

Unchanged ZIP payloads are copied verbatim; local padding maintains alignment.
Modified DEX is STORED. APK outputs still require alignment and authorized signing;
copying an OEM signing block never revalidates modified contents.
"""
from __future__ import annotations

import copy
from collections import deque
import os
from pathlib import Path
import re
import shutil
import struct
import subprocess
import tempfile
import zipfile
import hashlib
import json
import platform
import queue
import threading
import time
from functools import lru_cache
from .smali_io import find_matches as find_smali_matches, register_path as register_smali_path

__all__ = ['ToolchainError', 'toolchain_dir', 'sdk_root', 'android_jar',
           'find_tool', 'require_tool', 'java_command', 'toolchain_report',
           'run_tool', 'run_command',
           'rewrite_archive', 'align_apk', 'merge_rebuilt_archive',
           'find_smali_matches', 'register_smali_path']


class ToolchainError(RuntimeError):
    """Missing, inconsistent or modified shared build tools."""


def _tool_layout():
    location = Path(__file__).resolve().parents[1]
    runtime = location.parent if location.name == 'Scripts' and location.parent.name == 'Runtime' else None
    if not runtime and os.environ.get('WUKONG_STUDIO_INSTALL_ROOT'):
        runtime = Path(os.environ.get('WUKONG_STUDIO_APP_ROOT') or
                       Path(os.environ['WUKONG_STUDIO_INSTALL_ROOT']) / 'Runtime')
    binaries = runtime / 'Bin' if runtime else location / 'bin'
    return runtime, binaries


def toolchain_dir():
    override = os.environ.get('WUKONG_STUDIO_TOOLCHAIN_DIR')
    return Path(override).expanduser().resolve() if override else _tool_layout()[1] / 'Java'


def _tool_manifest():
    path = toolchain_dir() / 'toolchain.json'
    try:
        manifest = json.loads(path.read_text(encoding='utf-8'))
    except (OSError, ValueError) as error:
        raise ToolchainError(f'Shared Java toolchain manifest unavailable: {path}') from error
    if manifest.get('schemaVersion') != 1 or not isinstance(manifest.get('tools'), dict):
        raise ToolchainError(f'Invalid shared Java toolchain manifest: {path}')
    return manifest['tools']


@lru_cache(maxsize=32)
def _verify_jar(filename, size, modified_ns, expected):
    digest = hashlib.sha256()
    with open(filename, 'rb') as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b''):
            digest.update(chunk)
    actual = digest.hexdigest()
    if actual != expected:
        raise ToolchainError(f'Shared tool SHA-256 mismatch: {filename}')
    if not zipfile.is_zipfile(filename):
        raise ToolchainError(f'Shared tool is not a JAR: {filename}')


def _shared_jar(name):
    entry = _tool_manifest().get(name)
    if not isinstance(entry, dict) or entry.get('file') != name + '.jar':
        raise ToolchainError(f'Missing or invalid shared tool definition: {name}')
    expected = entry.get('sha256', '')
    if not re.fullmatch('[0-9a-f]{64}', expected):
        raise ToolchainError(f'Invalid SHA-256 for shared tool: {name}')
    path = toolchain_dir() / entry['file']
    try:
        stat = path.stat()
    except OSError as error:
        raise ToolchainError(f'Shared JAR missing: {path}') from error
    _verify_jar(str(path), stat.st_size, stat.st_mtime_ns, expected)
    return str(path.resolve())


def _version_key(path):
    return tuple(int(value) for value in re.findall(r'\d+', path.parent.name))


def sdk_root():
    configured = os.environ.get('ANDROID_SDK_ROOT') or os.environ.get('ANDROID_HOME')
    candidates = [Path(configured)] if configured else [
        Path.home() / 'AppData/Local/Android/Sdk', Path.home() / 'Android/Sdk',
        Path.home() / 'Library/Android/sdk',
    ]
    for path in candidates:
        if path.is_dir():
            return path.resolve()
    raise ToolchainError('Android SDK not found; set ANDROID_SDK_ROOT for SDK-dependent patches')


def android_jar():
    platforms = sorted(sdk_root().glob('platforms/android-*/android.jar'), key=_version_key)
    if not platforms:
        raise ToolchainError('Android SDK platform android.jar is missing')
    return str(platforms[-1])


def find_tool(name):
    """Resolve all patch tools centrally; never use a module-local JAR or Downloads."""
    if name in {'apktool', 'smali', 'baksmali'}:
        return _shared_jar(name)
    runtime, binaries = _tool_layout()
    extension = '.exe' if os.name == 'nt' else ''
    system = platform.system()
    machine = 'AMD64' if system == 'Windows' else platform.machine()
    if name in {'java', 'javac'}:
        if runtime:
            bundled = runtime / 'Java/bin' / (name + extension)
            if bundled.is_file():
                return str(bundled.resolve())
        if os.environ.get('JAVA_HOME'):
            configured = Path(os.environ['JAVA_HOME']) / 'bin' / (name + extension)
            if configured.is_file():
                return str(configured.resolve())
    native = binaries / system / machine / (name + extension)
    if native.is_file():
        return str(native.resolve())
    if name in {'zipalign', 'd8'}:
        try:
            filename = name + ('.bat' if name == 'd8' else '.exe') if os.name == 'nt' else name
            candidates = list(sdk_root().glob('build-tools/*/' + filename))
            stable = [path for path in candidates if '-rc' not in path.parent.name]
            candidates = sorted(stable or candidates, key=_version_key)
            if candidates:
                return str(candidates[-1].resolve())
        except ToolchainError:
            pass
    return shutil.which(name)


def require_tool(name):
    tool = find_tool(name)
    if not tool:
        raise ToolchainError(f'Required build tool is missing: {name}')
    return tool


def java_command(tool, *arguments):
    return [require_tool('java'), '-jar', require_tool(tool), *map(str, arguments)]


def run_command(command, *, capture_output=False, text=False, encoding=None,
                  errors=None, check=False, timeout=None, cwd=None, env=None):
    """Stream both channels even when legacy callers also need captured output."""
    command = list(map(str, command))
    print(f"[*] CMD: {subprocess.list2cmdline(command)}", flush=True)
    started = time.monotonic()
    process = subprocess.Popen(command, cwd=cwd, env=env, stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE,
                               creationflags=subprocess.CREATE_NO_WINDOW if os.name == 'nt' else 0)
    events = queue.Queue(maxsize=256)
    stopping = threading.Event()
    buffers = [[], []]
    diagnostic_tail = deque(maxlen=64)

    def emit(value):
        while not stopping.is_set():
            try:
                events.put(value, timeout=0.1)
                return
            except queue.Full:
                pass

    def pump(pipe, channel):
        try:
            for line in iter(pipe.readline, b''):
                emit((channel, line))
                if stopping.is_set():
                    break
        finally:
            pipe.close()
            emit((channel, None))

    threads = [threading.Thread(target=pump, args=(pipe, channel), daemon=True)
               for channel, pipe in enumerate((process.stdout, process.stderr))]
    for thread in threads:
        thread.start()
    finished = 0
    try:
        while finished < 2:
            if timeout is not None and time.monotonic() - started > timeout:
                raise subprocess.TimeoutExpired(command, timeout)
            try:
                channel, line = events.get(timeout=0.1)
            except queue.Empty:
                continue
            if line is None:
                finished += 1
            else:
                diagnostic_tail.append(line.decode(encoding or 'utf-8', errors or 'replace')[-2000:])
                if capture_output:
                    buffers[channel].append(line)
                print(line.decode(encoding or 'utf-8', errors or 'replace'), end='', flush=True)
        # A child can close both pipes and still keep running.
        remaining = None if timeout is None else max(0.001, timeout - (time.monotonic() - started))
        code = process.wait(timeout=remaining)
    except BaseException:
        stopping.set()
        process.kill()
        process.wait()
        raise
    finally:
        for thread in threads:
            thread.join(timeout=5)
        print(f"\n[*] CMD finished: {Path(command[0]).name} exit={process.returncode} "
              f"duration={time.monotonic() - started:.2f}s", flush=True)
    output = [b''.join(parts) for parts in buffers] if capture_output else [None, None]
    if text or encoding or errors:
        output = [value.decode(encoding or 'utf-8', errors or 'replace')
                  if value is not None else None for value in output]
    result = subprocess.CompletedProcess(command, code, *output)
    if check:
        try:
            result.check_returncode()
        except subprocess.CalledProcessError as exc:
            # Keep a bounded tail even when the caller did not request capture.
            exc.diagnostic_tail = ''.join(diagnostic_tail)
            raise
    return result


def _patch_command(command, cwd):
    """Normalize the pinned Java invocation and API policy at a single boundary."""
    from .smali_io import assembly_api
    command = list(map(str, command))
    if '-jar' not in command:
        return command, None
    jar_index = command.index('-jar') + 1
    operation = jar_index + 1
    if len(command) <= operation:
        raise ToolchainError('Incomplete Java patch command')
    tool = Path(command[jar_index]).stem
    if tool not in {'apktool', 'smali', 'baksmali'}:
        raise ToolchainError(f'Unmanaged patch JAR: {command[jar_index]}')
    if Path(command[jar_index]).resolve() != Path(require_tool(tool)).resolve():
        raise ToolchainError(f'Patch must use the pinned shared {tool} JAR')
    command[0] = require_tool('java')
    build = ((tool == 'smali' and command[operation] in {'a', 'assemble'}) or
             (tool == 'apktool' and command[operation] in {'b', 'build'}))
    if tool == 'smali' and build:
        args, inputs, requested = [], [], 29
        index = operation + 1
        while index < len(command):
            value = command[index]
            if value in {'-a', '--api'}:
                requested = max(requested, int(command[index + 1]))
                index += 2
                continue
            args.append(value)
            if value in {'-o', '--output', '-j', '--jobs'}:
                args.append(command[index + 1])
                index += 2
                continue
            if not value.startswith('-'):
                inputs.append(Path(cwd or Path.cwd()) / value)
            index += 1
        if not inputs:
            raise ToolchainError('Smali assembly requires an input directory')
        api = max([requested, *(assembly_api(path.parent) for path in inputs),
                   *(assembly_api(path) for path in inputs)])
        command = command[:operation + 1] + ['--api', str(api)] + args
        print(f'[*] Shared smali assembly API: {api}', flush=True)
    return command, tool if build else None


def run_tool(command, *, runner=None, **options):
    """Shared execution for every mod and ROM JAR build.

    Build to isolated scratch, validate DEX/ZIP, then atomically publish. Existing
    output is never used as evidence of success. ``runner`` adapts the ROM job's
    existing streaming logger; standalone scripts use the same live logger here.
    """
    if isinstance(command, (str, bytes)):
        raise TypeError('Patch commands must be argument lists, not shell strings')
    command, build_tool = _patch_command(command, options.get('cwd'))
    execute = runner or (lambda args: run_command(args, **options))
    if not build_tool:
        return execute(command)
    flag = next((flag for flag in ('-o', '--output') if flag in command), None)
    if flag is None:
        raise ToolchainError('Patch builds require an explicit output path')
    position = command.index(flag) + 1
    output = Path(options.get('cwd') or Path.cwd()) / command[position]
    output = output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='.patch-build-', dir=output.parent) as directory:
        staged = Path(directory) / output.name
        command[position] = str(staged)
        result = execute(command)
        if result is not None and result.returncode:
            if options.get('check'):
                result.check_returncode()
            return result
        try:
            from .smali_io import validate_dex, validate_dex_stream
            if build_tool == 'smali':
                validate_dex(staged)
            else:
                with zipfile.ZipFile(staged) as archive:
                    _entries(archive)
                    if archive.testzip():
                        raise ValueError('Rebuilt archive failed CRC validation')
                    for entry in archive.infolist():
                        if re.fullmatch(r'classes(?:\d+)?\.dex', entry.filename):
                            with archive.open(entry) as handle:
                                validate_dex_stream(handle, entry.file_size)
        except (OSError, ValueError, zipfile.BadZipFile) as error:
            kind = 'DEX' if build_tool == 'smali' else 'APK/JAR'
            raise ToolchainError(f'{build_tool} produced missing or invalid {kind}; '
                                 'existing output is unchanged. See tool diagnostics above.') from error
        os.replace(staged, output)
    return result


def toolchain_report(probe=False):
    report = {'directory': str(toolchain_dir()), 'java': require_tool('java'), 'tools': {}}
    manifest = _tool_manifest()
    for name in ('apktool', 'smali', 'baksmali'):
        path = require_tool(name)
        item = {'path': path, 'version': manifest[name]['version'], 'sha256': manifest[name]['sha256']}
        if probe:
            result = subprocess.run(java_command(name, '--version'), capture_output=True,
                                    text=True, check=True, timeout=30)
            item['probe'] = (result.stdout or result.stderr).strip()
            if item['version'] not in item['probe']:
                raise ToolchainError(f'Unexpected version reported by {name}: {item["probe"]}')
        report['tools'][name] = item
    return report


def _entries(archive):
    infos = archive.infolist()
    if len({info.filename for info in infos}) != len(infos):
        raise ValueError("Duplicate ZIP entries are not supported")
    if any(info.flag_bits & 1 for info in infos):
        raise ValueError("Encrypted ZIP entries are not supported")
    return infos


def _payload_end(source, archive):
    """Exclude any old APK signing block from the last local-record span."""
    end = archive.start_dir
    if end >= 24:
        source.seek(end - 24)
        footer = source.read(24)
        if footer[8:] == b"APK Sig Block 42":
            size = struct.unpack_from("<Q", footer)[0]
            start = end - size - 8
            if start < 0 or size < 24:
                raise ValueError("Invalid APK signing block size")
            source.seek(start)
            if source.read(8) != footer[:8]:
                raise ValueError("APK signing block sizes disagree")
            end = start
    return end


def _alignment_extra(offset, name_length, extra_length, boundary):
    base = offset + 30 + name_length + extra_length
    if base % boundary == 0:
        return b""
    size = (-base - 4) % boundary
    if extra_length + size + 4 > 65535:
        raise ValueError("ZIP extra field is too large to align safely")
    return b"\xff\xff" + struct.pack("<H", size) + bytes(size)


def _boundary(info):
    if info.compress_type != zipfile.ZIP_STORED:
        return 1
    return 16384 if info.filename.endswith('.so') else 4


def rewrite_archive(original, output, replacements, *, store_dex=True):
    """Replace selected entries; preserve every other entry's payload byte for byte.

    Values are bytes or paths. New entries are permitted. The source and existing
    destination survive any exception. No JDK jar executable is required by the
    embedded Windows JRE.
    """
    original, output = Path(original), Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    for name in replacements:
        if not name or name.startswith(("/", "\\")) or ".." in name.replace("\\", "/").split("/"):
            raise ValueError(f"Unsafe ZIP replacement name: {name}")
    fd, temporary = tempfile.mkstemp(prefix=output.name + ".", suffix=".tmp", dir=output.parent)
    os.close(fd)
    try:
        with zipfile.ZipFile(original) as stock, original.open("rb") as raw:
            infos = _entries(stock)
            ordered = sorted(infos, key=lambda info: info.header_offset)
            end = _payload_end(raw, stock)
            ends = {info.header_offset: ordered[index + 1].header_offset
                    if index + 1 < len(ordered) else end for index, info in enumerate(ordered)}
            with zipfile.ZipFile(temporary, "w", allowZip64=True) as result:
                result.comment = stock.comment
                for info in infos:
                    if info.filename in replacements:
                        value = replacements[info.filename]
                        payload = value if isinstance(value, bytes) else Path(value).read_bytes()
                        updated = copy.copy(info)
                        if store_dex and re.fullmatch(r"classes(?:\d+)?\.dex", info.filename):
                            updated.compress_type = zipfile.ZIP_STORED
                        name_bytes, _flags = updated._encodeFilenameFlags()
                        updated.extra += _alignment_extra(result.fp.tell(), len(name_bytes), len(updated.extra), _boundary(updated))
                        result.writestr(updated, payload)
                    else:
                        updated = copy.copy(info)
                        updated.header_offset = result.fp.tell()
                        raw.seek(info.header_offset)
                        remaining = ends[info.header_offset] - info.header_offset
                        if remaining < 30:
                            raise ValueError(f"Invalid local record: {info.filename}")
                        header = bytearray(raw.read(30))
                        name_length, extra_length = struct.unpack_from('<HH', header, 26)
                        name_and_extra = raw.read(name_length + extra_length)
                        extra = _alignment_extra(updated.header_offset, name_length, extra_length, _boundary(info))
                        struct.pack_into('<H', header, 28, extra_length + len(extra))
                        result.fp.write(header)
                        result.fp.write(name_and_extra)
                        result.fp.write(extra)
                        updated.extra += extra
                        remaining -= 30 + name_length + extra_length
                        if remaining < 0:
                            raise ValueError(f"Invalid local header: {info.filename}")
                        while remaining:
                            block = raw.read(min(1024 * 1024, remaining))
                            if not block:
                                raise ValueError("Truncated ZIP record")
                            result.fp.write(block)
                            remaining -= len(block)
                        result.filelist.append(updated)
                        result.NameToInfo[updated.filename] = updated
                        result.start_dir = result.fp.tell()
                        result._didModify = True
                existing = {info.filename for info in infos}
                for name, value in replacements.items():
                    if name not in existing:
                        payload = value if isinstance(value, bytes) else Path(value).read_bytes()
                        info = zipfile.ZipInfo(name)
                        name_bytes, _flags = info._encodeFilenameFlags()
                        info.extra = _alignment_extra(result.fp.tell(), len(name_bytes), 0, _boundary(info))
                        result.writestr(info, payload, compress_type=zipfile.ZIP_STORED)
        with zipfile.ZipFile(temporary) as check:
            bad = check.testzip()
            if bad:
                raise ValueError(f"ZIP CRC check failed: {bad}")
        os.replace(temporary, output)
    finally:
        Path(temporary).unlink(missing_ok=True)


def align_apk(tool, source, output):
    """Require and verify 16 KiB native-library alignment; no 4 KiB fallback."""
    if not tool:
        raise FileNotFoundError("zipalign with -P 16 support is required")
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="zipalign-", dir=output.parent) as directory:
        aligned = Path(directory) / "aligned.apk"
        run_tool([str(tool), "-P", "16", "-f", "4", str(source), str(aligned)], check=True)
        run_tool([str(tool), "-c", "-P", "16", "4", str(aligned)], check=True)
        with zipfile.ZipFile(aligned) as archive:
            if archive.testzip():
                raise ValueError("Aligned APK failed CRC validation")
        os.replace(aligned, output)


def merge_rebuilt_archive(original, rebuilt, output, *, dex_only=False, changed_dex=None):
    """Use only changed/new entries from apktool; do not rebuild OEM resources."""
    with zipfile.ZipFile(original) as stock, zipfile.ZipFile(rebuilt) as patched:
        originals = {info.filename: info for info in _entries(stock)}
        changes = {}
        for info in _entries(patched):
            is_dex = re.fullmatch(r"classes(?:\d+)?\.dex", info.filename)
            if dex_only and not is_dex:
                continue
            if is_dex and changed_dex is not None and info.filename not in changed_dex:
                continue
            old = originals.get(info.filename)
            if old is None or old.CRC != info.CRC or old.file_size != info.file_size or stock.read(info.filename) != patched.read(info.filename):
                changes[info.filename] = patched.read(info.filename)
    rewrite_archive(original, output, changes)


def main():
    import argparse
    parser = argparse.ArgumentParser(description='Verify the shared patch toolchain and its pinned SHA-256 values')
    parser.add_argument('--check-tools', action='store_true', help='Run the actual JAR version commands')
    arguments = parser.parse_args()
    try:
        print(json.dumps(toolchain_report(probe=arguments.check_tools), indent=2, ensure_ascii=False))
        return 0
    except (ToolchainError, OSError, subprocess.SubprocessError) as error:
        parser.exit(1, f'Toolchain check failed: {error}\n')


if __name__ == '__main__':
    raise SystemExit(main())
