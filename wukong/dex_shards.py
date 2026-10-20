"""Recover DEX reference-table overflow without dropping or duplicating classes."""
from pathlib import Path
import os
import re
import shutil
import tempfile


def _reference_overflow(error):
    messages, seen = [], set()
    while error is not None and id(error) not in seen:
        seen.add(id(error))
        messages.append(str(error))
        for field in ('diagnostic_tail', 'stderr', 'stdout'):
            value = getattr(error, field, '') or ''
            messages.append(value.decode('utf-8', 'replace') if isinstance(value, bytes) else str(value))
        error = error.__cause__
    text = '\n'.join(messages)
    values = re.findall(r'Unsigned short value out of range: (\d+)', text)
    return 'InstructionWriter.write' in text and any(int(value) > 65535 for value in values)


def assemble_dex_shards(source, output, *, build, allocate_name):
    """Try the original tree first; split whole classes only on reference overflow.

    ``build`` must validate a fresh output and fail on assembler errors. Original
    smali stays unchanged; callers must invalidate reuse of its old DEX layout
    when additional DEX files are returned. No partially built JAR is published.
    """
    source, output = Path(source).resolve(), Path(output).resolve()
    try:
        build(source, output)
        return {output.name: output}
    except Exception as error:
        if not _reference_overflow(error):
            raise
        files = sorted(source.rglob('*.smali'))
        if len(files) < 2:
            raise

    output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='.dex-shards-', dir=output.parent) as temporary:
        serial = 0

        def assemble_group(files, name):
            nonlocal serial
            folder = Path(temporary) / str(serial)
            serial += 1
            folder.mkdir()
            for index, original in enumerate(files):
                linked = folder / f'{index}.smali'
                try:
                    os.link(original, linked)
                except OSError:
                    shutil.copy2(original, linked)
            target = output.parent / name
            try:
                build(folder, target)
                return {name: target}
            except Exception as error:
                if not _reference_overflow(error) or len(files) < 2:
                    raise
                return split_group(files, name)

        def split_group(files, name):
            middle = len(files) // 2
            print(f'[*] {name}: DEX reference limit reached; splitting {len(files)} classes', flush=True)
            result = assemble_group(files[:middle], name)
            result.update(assemble_group(files[middle:], allocate_name()))
            return result

        return split_group(files, output.name)
