"""Decode affected DEX files by source metadata, then apply independent patches."""
import json
import hashlib
import re
from pathlib import Path
import struct
import tempfile
import zipfile
from .engine import apply_profile, load_profile, plan_patch, remap, select_profile

from .paths import ROOT
from .paths import stock_apk
from .toolchain import run_tool, find_tool


def choose_profile(apk):
    # Exact stock fingerprint selects reviewed OEM variants. Never adapt an
    # unknown instruction graph automatically or lower compatibility coverage.
    with open(apk, 'rb') as stream:
        apk_digest = hashlib.file_digest(stream, 'sha256').hexdigest()
    for path in sorted((ROOT / 'patches').glob('*/profile.json')):
        metadata = json.loads(path.read_text(encoding='utf-8'))
        if metadata.get('apk_sha256') == apk_digest:
            return path
    with zipfile.ZipFile(apk) as archive:
        inventory = {owner: source for name in archive.namelist() if name.endswith('.dex')
                     for owner, source in dex_inventory(archive.read(name)).items()}
    if 'Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;' in inventory:
        return ROOT / 'patches/a16/profile.json'
    if 'OplusGridRecentsConfig.kt' in inventory.values():
        return ROOT / 'patches/a17/profile.json'
    raise ValueError('No recognized grid API family; supply a reviewed profile explicitly')


def adapt_helper_abi(apk, directory):
    from .verify import dex_metadata
    with zipfile.ZipFile(apk) as archive:
        items = [dex_metadata(archive.read(name)) for name in archive.namelist() if name.endswith('.dex')]
    owners = set().union(*(item[0] for item in items))
    definitions = set().union(*(item[1] for item in items))
    aliases = {}
    method_bindings = []
    holder = 'Landroidx/preference/PreferenceViewHolder;'
    if holder not in owners:
        candidates = [m.split('(', 1)[1].split(')', 1)[0] for m in definitions
                      if m.startswith('Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(')]
        if len(candidates) != 1 or candidates[0] not in owners:
            raise ValueError('Cannot bind native PreferenceViewHolder callback ABI uniquely')
        aliases[holder] = candidates[0]
    listener = 'Landroidx/preference/Preference$OnPreferenceClickListener;'
    if listener not in owners:
        candidates = [m.split('(', 1)[1].split(')', 1)[0] for m in definitions
                      if m.startswith('Landroidx/preference/Preference;->setOnPreferenceClickListener(')]
        if len(candidates) != 1 or candidates[0] not in owners:
            raise ValueError('Cannot bind native preference click listener uniquely')
        actual = candidates[0]
        aliases[listener] = actual
        callbacks = [m.split('->', 1)[1] for m in definitions if m.startswith(actual + '->') and m.endswith('(Landroidx/preference/Preference;)Z')]
        if len(callbacks) != 1:
            raise ValueError('Ambiguous native preference click callback')
        method_bindings.append((actual, 'onPreferenceClick(Landroidx/preference/Preference;)Z', callbacks[0]))
    for path in Path(directory).rglob('*.smali'):
        content = path.read_text(encoding='utf-8')
        patched = remap(content, aliases)
        for owner, original, actual in method_bindings:
            if '.implements ' + owner in patched:
                patched = re.sub(r'(?m)(^\.method [^\n]* )' + re.escape(original) + r'$', lambda m: m[1] + actual, patched)
        if content != patched:
            path.write_text(patched, encoding='utf-8')
    return aliases


def dex_inventory(data):
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
    classes = {}
    for i in range(u32(0x60)):
        offset = u32(0x64) + i * 32
        source = u32(offset + 16)
        classes[types[u32(offset)]] = strings[source] if source != 0xffffffff else None
    return classes


def decode_for_profile(apk, baksmali, profile):
    (ROOT / 'scratch').mkdir(exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='launcher-profile-', dir=ROOT / 'scratch'))
    sources, dex_owners = {}, {}
    with zipfile.ZipFile(apk) as archive:
        for name in archive.namelist():
            if name.endswith('.dex'):
                for owner, source in dex_inventory(archive.read(name)).items():
                    dex_owners[owner] = name
                    if source and source != 'SourceFile':
                        sources.setdefault(source, []).append(owner)
        # Some releases retain descriptive class names but strip .source metadata.
        # Match the source basename to a unique descriptor before giving up.
        for source in profile.get('type_sources', {}).values():
            if source not in sources:
                basename = source.rsplit('.', 1)[0]
                candidates = [owner for owner in dex_owners if owner.endswith('/' + basename + ';')]
                if len(candidates) == 1:
                    sources[source] = candidates
        affected = {}
        for feature in profile['features']:
            for entry in feature['classes']:
                candidates = [entry['owner']] if entry['owner'] in dex_owners else sources.get(entry['source'], [])
                if len(candidates) == 1:
                    affected.setdefault(dex_owners[candidates[0]], set()).add(candidates[0])
        for name in sorted(affected):
            (work / name).write_bytes(archive.read(name))
            run_tool([find_tool('java'), '-jar', str(baksmali), 'd', str(work / name), '--classes', ','.join(sorted(affected[name])), '-o', str(work / name[:-4])], check=True)
    roots = {name: work / name[:-4] for name in sorted(affected)}
    return work, roots, sources


def inspect_profile(roots, profile, sources):
    rows = []
    for feature in profile['features']:
        for entry in feature['classes']:
            for rule in entry['methods']:
                candidate = {**profile, 'features': [{'id': feature['id'], 'classes': [{**entry, 'methods': [rule], 'fields': []}]}]}
                try:
                    plan_patch(roots.values(), candidate, sources)
                    status, reason = 'matched', None
                except ValueError as error:
                    status, reason = 'unsupported', str(error)
                rows.append({'feature': feature['id'], 'owner': entry['owner'], 'method': (rule['before'] or rule['after']).splitlines()[0], 'status': status, 'reason': reason})
    return {'matched': sum(x['status'] == 'matched' for x in rows), 'total': len(rows), 'rules': rows}


def prepare_patches(apk, baksmali, profile_path=None, selected=None):
    profile = select_profile(load_profile(profile_path or choose_profile(apk)), selected)
    work, roots, sources = decode_for_profile(apk, baksmali, profile)
    (work / 'selection.json').write_text(json.dumps({
        'profile': profile['id'], 'requested_features': sorted(selected) if selected is not None else None,
        'resolved_features': [feature['id'] for feature in profile['features']],
    }, indent=2), encoding='utf-8')
    coverage = inspect_profile(roots, profile, sources)
    (work / 'compatibility.json').write_text(json.dumps(coverage, indent=2), encoding='utf-8')
    if coverage['matched'] != coverage['total']:
        raise ValueError(f"Unsupported APK: {coverage['matched']}/{coverage['total']} rules matched; details: {work / 'compatibility.json'}")
    report = apply_profile(roots.values(), profile, sources, report_path=work / 'patch_report.json')
    print(f"Applied {report['modified_methods']} method patches, {report['added_methods']} added methods in {report['modified_classes']} classes", flush=True)
    return work, roots


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('apk')
    parser.add_argument('--baksmali', help='Override the configured baksmali JAR')
    parser.add_argument('--profile')
    parser.add_argument('--features', help='Comma-separated mod IDs; default: all')
    args = parser.parse_args()
    args.apk = stock_apk(args.apk)
    args.baksmali = args.baksmali or find_tool('baksmali')
    from .features import parse_features, FEATURE_IDS
    selected = parse_features(args.features) if args.features is not None else FEATURE_IDS
    profile = select_profile(load_profile(args.profile or choose_profile(args.apk)), selected)
    work, roots, sources = decode_for_profile(args.apk, args.baksmali, profile)
    report = inspect_profile(roots, profile, sources)
    (work / 'compatibility.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(f"Matched {report['matched']}/{report['total']}: {work / 'compatibility.json'}", flush=True)
