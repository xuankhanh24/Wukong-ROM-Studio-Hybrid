"""Check actual DEX definitions and cross-DEX helper calls before installation."""
from collections import Counter
import json
from pathlib import Path
import struct
import zipfile
from .paths import ROOT
from .dex import validate_class_data_ownership


def dex_metadata(data):
    def u32(offset):
        return struct.unpack_from('<I', data, offset)[0]

    def uleb(offset):
        value, shift = 0, 0
        while True:
            byte = data[offset]
            offset += 1
            value |= (byte & 127) << shift
            if byte < 128:
                return value, offset
            shift += 7

    strings = []
    for i in range(u32(0x38)):
        _, start = uleb(u32(u32(0x3c) + i * 4))
        strings.append(data[start:data.index(0, start)].decode('utf-8', errors='replace'))
    types = [strings[u32(u32(0x44) + i * 4)] for i in range(u32(0x40))]
    protos = []
    for i in range(u32(0x48)):
        offset = u32(0x4c) + i * 12
        params_offset = u32(offset + 8)
        params = []
        if params_offset:
            params = [types[struct.unpack_from('<H', data, params_offset + 4 + n * 2)[0]] for n in range(u32(params_offset))]
        protos.append('(' + ''.join(params) + ')' + types[u32(offset + 4)])
    references = []
    for i in range(u32(0x58)):
        class_idx, proto_idx, name_idx = struct.unpack_from('<HHI', data, u32(0x5c) + i * 8)
        references.append(types[class_idx] + '->' + strings[name_idx] + protos[proto_idx])
    field_references = []
    for i in range(u32(0x50)):
        class_idx, type_idx, name_idx = struct.unpack_from('<HHI', data, u32(0x54) + i * 8)
        field_references.append(types[class_idx] + '->' + strings[name_idx] + ':' + types[type_idx])
    field_definitions = set()
    classes, definitions, parents, abstracts, interfaces = set(), set(), {}, set(), {}
    for i in range(u32(0x60)):
        offset = u32(0x64) + i * 32
        owner = types[u32(offset)]
        classes.add(owner)
        parent = u32(offset + 8)
        parents[owner] = types[parent] if parent != 0xffffffff else None
        interface_offset = u32(offset + 12)
        interfaces[owner] = [types[struct.unpack_from('<H', data, interface_offset + 4 + n * 2)[0]] for n in range(u32(interface_offset))] if interface_offset else []
        pos = u32(offset + 24)
        if not pos:
            continue
        counts = []
        for _ in range(4):
            value, pos = uleb(pos)
            counts.append(value)
        for count in counts[:2]:
            index = 0
            for _ in range(count):
                diff, pos = uleb(pos)
                index += diff
                _, pos = uleb(pos)
                field_definitions.add(field_references[index])
        for count in counts[2:]:
            index = 0
            for _ in range(count):
                diff, pos = uleb(pos)
                index += diff
                access, pos = uleb(pos)
                _, pos = uleb(pos)
                definitions.add(references[index])
                if access & 0x400:
                    abstracts.add(references[index])
    return classes, definitions, set(references), parents, set(field_references), field_definitions, abstracts, interfaces


def verify_recents_resume_cleanup(apk):
    """Reject the retired helper that restores Home alpha during app -> Recents."""
    obsolete = ('Lcom/android/launcher/settings/WorkspacePullDownHelper;'
                '->onResume(Ljava/lang/Object;)V')
    with zipfile.ZipFile(apk) as archive:
        affected = [name for name in archive.namelist()
                    if name.endswith('.dex') and obsolete in dex_metadata(archive.read(name))[2]]
    if affected:
        raise ValueError(f'Obsolete Recents resume cleanup remains in {affected}: {obsolete}')
    return {'obsolete_recents_resume_cleanup': []}


def verify(apk, stock_apk=None):
    with zipfile.ZipFile(apk) as archive:
        dexes = {}
        for name in archive.namelist():
            if name.endswith('.dex'):
                data = archive.read(name)
                validate_class_data_ownership(data)
                dexes[name] = dex_metadata(data)
    owners = Counter(owner for item in dexes.values() for owner in item[0])
    duplicate = sorted(owner for owner, count in owners.items() if count != 1)
    definitions = set().union(*(item[1] for item in dexes.values()))
    references = set().union(*(item[2] for item in dexes.values()))
    # Discover helper owners wherever the packager placed them.
    helper_names = {'L' + str(path.relative_to(ROOT / 'src_helpers')).replace('\\', '/')[:-5] + ';'
                    for path in (ROOT / 'src_helpers').rglob('*.java')}
    helper_names.add('Landroid/preference/BuildFeatures;')
    helper_classes = {owner for owner in owners if any(owner == name or owner.startswith(name[:-1] + '$') for name in helper_names)}
    parents = {owner: parent for item in dexes.values() for owner, parent in item[3].items()}

    def resolves(reference, available=definitions):
        owner, signature = reference.split('->', 1)
        visited = set()
        while owner and owner not in visited:
            visited.add(owner)
            if owner + '->' + signature in available:
                return True
            if owner not in parents:
                if owner == 'Ljava/lang/Object;':
                    return signature in {'<init>()V', 'equals(Ljava/lang/Object;)Z', 'hashCode()I', 'toString()Ljava/lang/String;',
                                         'getClass()Ljava/lang/Class;', 'clone()Ljava/lang/Object;', 'finalize()V',
                                         'notify()V', 'notifyAll()V', 'wait()V', 'wait(J)V', 'wait(JI)V'}
                return owner.startswith(('Landroid/', 'Ljava/', 'Ljavax/'))
            owner = parents[owner]
        return False

    unresolved = sorted(reference for reference in references if reference.split('->', 1)[0] in helper_classes and not resolves(reference))
    helper_dexes = [item for item in dexes.values() if item[0] & helper_classes]
    helper_native_refs = set().union(*(item[2] for item in helper_dexes))
    stock_references = set()
    stock_field_references = set()
    if stock_apk:
        with zipfile.ZipFile(stock_apk) as archive:
            stock_items = [dex_metadata(archive.read(name)) for name in archive.namelist() if name.endswith('.dex')]
            stock_references = set().union(*(item[2] for item in stock_items))
            stock_field_references = set().union(*(item[4] for item in stock_items))
    unresolved_native_apis = sorted(reference for reference in helper_native_refs
                                    if reference.split('->', 1)[0] not in helper_classes and reference not in stock_references and not resolves(reference))
    abstracts = set().union(*(item[6] for item in dexes.values()))
    interfaces = {owner: values for item in dexes.values() for owner, values in item[7].items()}
    missing_callbacks = []
    for owner in helper_classes:
        for interface in interfaces.get(owner, []):
            for reference in abstracts:
                if reference.startswith(interface + '->'):
                    callback = owner + '->' + reference.split('->', 1)[1]
                    if not resolves(callback):
                        missing_callbacks.append(callback)
    manifest = json.loads((ROOT / 'patches/coloros_a17_classes1.json').read_text(encoding='utf-8'))
    patched_classes = {'L' + item['path'][:-6] + ';' for item in manifest['classes']}
    fields = set().union(*(item[5] for item in dexes.values()))
    field_refs = set().union(*(item[4] for item in dexes.values()))
    wrong_fields = sorted(reference for reference in field_refs if reference.split('->', 1)[0] in (patched_classes | helper_classes) and not resolves(reference, fields))
    helper_field_refs = set().union(*(item[4] for item in helper_dexes))
    wrong_helper_native_fields = sorted(reference for reference in helper_field_refs if reference not in stock_field_references and not resolves(reference, fields))
    # These callbacks caused actual recovery crashes; check their exact signatures.
    wrong_launcher_callbacks = sorted(reference for reference in references if reference.startswith('Lcom/android/launcher/Launcher;->getBlurScrimWindowController(') and reference not in definitions)
    result = {'dex_count': len(dexes), 'class_count': len(owners), 'duplicate_classes': duplicate, 'unresolved_helper_methods': unresolved, 'unresolved_helper_native_apis': unresolved_native_apis, 'wrong_launcher_callbacks': wrong_launcher_callbacks, 'unresolved_patched_fields': wrong_fields, 'unresolved_helper_native_fields': wrong_helper_native_fields, 'missing_helper_interface_callbacks': sorted(missing_callbacks)}
    if duplicate or unresolved or unresolved_native_apis or wrong_launcher_callbacks or wrong_fields or wrong_helper_native_fields or missing_callbacks:
        raise ValueError(json.dumps(result, indent=2))
    return result


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description='Verify cross-DEX classes, helpers and native ABI')
    parser.add_argument('apk', help='Patched APK')
    parser.add_argument('stock', nargs='?', help='Original stock APK for OEM reference comparison')
    args = parser.parse_args()
    print(json.dumps(verify(args.apk, stock_apk=args.stock), indent=2))
