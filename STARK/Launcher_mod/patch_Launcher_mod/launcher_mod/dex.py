"""Relocate patched class definitions without rewriting untouched stock code.

Original string/type/method tables remain valid references across DEX files.
Only class definitions, the map count and header checksums are changed. This
avoids overflowing the 65,536 method-reference limit in nearly full stock DEX.
"""
import hashlib
import struct
import zlib


def class_data_items(data):
    def u32(offset):
        return struct.unpack_from('<I', data, offset)[0]
    def uleb(position):
        value, shift = 0, 0
        while True:
            byte = data[position]
            position += 1
            value |= (byte & 127) << shift
            if byte < 128:
                return value, position
            shift += 7
    map_offset = u32(0x34)
    for index in range(u32(map_offset)):
        record = map_offset + 4 + index * 12
        if struct.unpack_from('<H', data, record)[0] == 0x2000:
            count, position = u32(record + 4), u32(record + 8)
            items = []
            for _ in range(count):
                start, counts = position, []
                for _ in range(4):
                    number, position = uleb(position)
                    counts.append(number)
                for number, width in zip(counts, [2, 2, 3, 3]):
                    for _ in range(number * width):
                        _, position = uleb(position)
                items.append((start, position, bool(sum(counts))))
            return record, items
    return None, []


def validate_class_data_ownership(data):
    count, offset = struct.unpack_from('<II', data, 0x60)
    referenced = {struct.unpack_from('<I', data, offset + index * 32 + 24)[0] for index in range(count)}
    _, items = class_data_items(data)
    orphans = [start for start, _, nonempty in items if nonempty and start not in referenced]
    if orphans:
        raise ValueError(f'{len(orphans)} non-empty class data items have no declaring class (ART rejects this DEX)')
    return True


def remove_class_definitions(data, owners):
    result = bytearray(data)
    def u32(offset):
        return struct.unpack_from('<I', data, offset)[0]
    strings = []
    for i in range(u32(0x38)):
        position = u32(u32(0x3c) + i * 4)
        while data[position] & 128:
            position += 1
        position += 1
        strings.append(data[position:data.index(0, position)].decode('utf-8', errors='replace'))
    types = [strings[u32(u32(0x44) + i * 4)] for i in range(u32(0x40))]
    count, offset = u32(0x60), u32(0x64)
    kept, removed = [], set()
    for index in range(count):
        position = offset + index * 32
        owner = types[u32(position)]
        if owner in owners:
            removed.add(owner)
        else:
            kept.append(data[position:position + 32])
    if removed != set(owners):
        raise ValueError(f'Class relocation mismatch: {set(owners) - removed}')
    if not kept:
        raise ValueError('Relocating every class from a DEX is not supported')
    # ART also verifies class_data items not directly reached from a class_def.
    # Compact the retained records and repair their pointers, preserving all
    # method code offsets and instruction bytes exactly.
    map_record, items = class_data_items(data)
    retained_offsets = {struct.unpack_from('<I', record, 24)[0] for record in kept}
    retained_items = [(start, end) for start, end, _ in items if start in retained_offsets]
    if items:
        begin, end = items[0][0], items[-1][1]
        new_position, bindings, chunks = begin, {}, []
        for start, stop in retained_items:
            bindings[start] = new_position
            chunk = data[start:stop]
            chunks.append(chunk)
            new_position += len(chunk)
        result[begin:end] = b''.join(chunks) + bytes(end - new_position)
        struct.pack_into('<I', result, map_record + 4, len(retained_items))
        repaired = []
        for record in kept:
            record = bytearray(record)
            old_position = struct.unpack_from('<I', record, 24)[0]
            if old_position:
                struct.pack_into('<I', record, 24, bindings[old_position])
            repaired.append(bytes(record))
        kept = repaired
    result[offset:offset + count * 32] = b''.join(kept) + bytes(len(removed) * 32)
    struct.pack_into('<I', result, 0x60, len(kept))
    map_offset = u32(0x34)
    for index in range(u32(map_offset)):
        position = map_offset + 4 + index * 12
        if struct.unpack_from('<H', data, position)[0] == 0x0006:
            struct.pack_into('<I', result, position + 4, len(kept))
            break
    else:
        raise ValueError('Missing class-definition map entry')
    result[12:32] = hashlib.sha1(result[32:]).digest()
    struct.pack_into('<I', result, 8, zlib.adler32(result[12:]) & 0xffffffff)
    validate_class_data_ownership(result)
    return bytes(result)
