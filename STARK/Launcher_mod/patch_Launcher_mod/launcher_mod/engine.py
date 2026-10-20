"""Method-scoped patches: unique semantic matches, no offsets or debug-line anchors.

Profiles describe verified transformations. Matching tolerates debug metadata,
branch-label changes, method renaming and local register renumbering. A changed
instruction graph is rejected rather than guessed. All matches are planned before
any source is written.
"""
from dataclasses import dataclass
import copy
import json
from pathlib import Path
import re

METHOD = re.compile(r'(?ms)^\.method [^\n]+\n.*?^\.end method\b')
TOKEN = re.compile(r'"(?:\\.|[^"\\])*"|(?<![\w]):[A-Za-z_][\w]*|(?<![\w/>])v\d+\b')
DEBUG = ('.line ', '.local ', '.end local ', '.restart local ', '.prologue', '.epilogue')


def compact(text):
    lines = [line.strip() for line in text.splitlines()
             if line.strip() and not line.strip().startswith(('#', *DEBUG))]
    return '\n'.join(lines) + '\n' if lines else ''


def signature(text):
    return text.splitlines()[0].split()[-1]


def semantic(text, ignore_name=True):
    text = compact(text)
    if ignore_name:
        text = re.sub(r'(^\.method [^\n]* )[^\s(]+(\()', r'\1METHOD\2', text)
    labels, registers = {}, {}

    def replace(match):
        token = match.group()
        if token.startswith('"'):
            return token
        table = labels if token.startswith(':') else registers
        prefix = ':label' if token.startswith(':') else 'v'
        return table.setdefault(token, prefix + str(len(table)))

    return TOKEN.sub(replace, text)


def remap(text, aliases):
    # DEX descriptors must be replaced as complete tokens (never string literals).
    return re.sub(r'"(?:\\.|[^"\\])*"|(?<![\w$])L[\w$-]+(?:/[\w$-]+)*;',
                  lambda m: m.group() if m.group().startswith('"') else aliases.get(m.group(), m.group()), text)


@dataclass
class Match:
    path: Path
    start: int
    end: int
    replacement: str
    feature: str
    method: str


def select_profile(profile, selected=None):
    """Resolve internal dependencies and variants before decoding or preflight."""
    valid = {feature['id'] for feature in profile['features']}
    if selected is not None:
        selected = set(selected)
        if selected - valid:
            raise ValueError(f'Unknown features: {selected - valid}')
        pending = list(selected)
        while pending:
            feature = pending.pop()
            for dependency in profile.get('dependencies', {}).get(feature, []):
                if dependency not in valid:
                    raise ValueError(f'Unknown dependency: {dependency}')
                if dependency not in selected:
                    selected.add(dependency)
                    pending.append(dependency)
    else:
        selected = valid
    result = copy.deepcopy(profile)
    result['features'] = [feature for feature in result['features'] if feature['id'] in selected]
    for feature in result['features']:
        for entry in feature['classes']:
            for rule in entry['methods']:
                for choice in [rule] + rule.get('alternatives', []):
                    variants = choice.pop('variants', {})
                    active = [name for name in variants if name in selected]
                    if len(active) > 1:
                        raise ValueError(f'Ambiguous method variants: {active}')
                    if active:
                        choice['after'] = variants[active[0]]
    return result


def plan_patch(roots, profile, source_index=None, selected=None):
    profile = select_profile(profile, selected)
    source_index = source_index or {}
    files = {}
    aliases = {}
    entries = []
    root_paths = [Path(root) for root in (roots.values() if isinstance(roots, dict) else roots)]
    for feature in profile['features']:
        for entry in feature['classes']:
            owner = entry['owner']
            candidates = source_index.get(entry['source'], []) if entry['source'] else []
            exact = [root / (owner[1:-1] + '.smali') for root in root_paths]
            exact = [path for path in exact if path.is_file()]
            if exact:
                paths = exact
            else:
                paths = [root / (candidate[1:-1] + '.smali') for candidate in candidates for root in root_paths]
                paths = [path for path in paths if path.is_file()]
            if len(paths) > 1:
                required = [rule for rule in entry['methods'] if rule.get('before') and not rule.get('optional')]
                compatible = []
                for candidate in paths:
                    candidate_text = candidate.read_text(encoding='utf-8')
                    candidate_owner = re.search(r'(?m)^\.class .* (L[^;]+;)', candidate_text)[1]
                    local_aliases = {**aliases, owner: candidate_owner}
                    bodies = list(METHOD.finditer(candidate_text))
                    if required and all(any(
                        semantic(body.group()) == semantic(choice['before'] if choice.get('raw') else remap(choice['before'], local_aliases))
                        for choice in [rule] + rule.get('alternatives', []) if choice.get('before')
                        for body in bodies
                    ) for rule in required):
                        compatible.append(candidate)
                paths = compatible
            if len(paths) != 1:
                raise ValueError(f"{feature['id']}: class {entry['source'] or owner} has {len(paths)} candidates")
            path = paths[0]
            content = files.setdefault(path, path.read_text(encoding='utf-8'))
            actual_owner = re.search(r'(?m)^\.class .* (L[^;]+;)', content)[1]
            aliases[owner] = actual_owner
            entries.append((feature['id'], entry, path))
    # Bind referenced obfuscated class descriptors through unique source metadata.
    for owner, source in profile.get('type_sources', {}).items():
        candidates = source_index.get(source, [])
        if owner in candidates:
            aliases.setdefault(owner, owner)
        elif len(candidates) == 1:
            aliases.setdefault(owner, candidates[0])
    matches, additions, seen, members = [], {}, set(), {}
    for feature, entry, path in entries:
        content = files[path]
        methods = list(METHOD.finditer(content))
        for rule in entry['methods']:
            choices = []
            for choice in [rule] + rule.get('alternatives', []):
                expected = choice['before'] if choice.get('raw') else remap(choice['before'], aliases)
                if not expected:
                    choices.append((choice, None))
                    continue
                candidates = [m for m in methods if semantic(m.group()) == semantic(expected)]
                if len(candidates) > 1:
                    candidates = [m for m in candidates if signature(m.group()) == signature(expected)]
                if len(candidates) > 1:
                    raise ValueError(f"{feature}: {path.name} has ambiguous semantic matches")
                if candidates:
                    choices.append((choice, candidates[0]))
            if not choices:
                if rule.get('optional'):
                    continue
                raise ValueError(f"{feature}: {path.name}::{signature(rule['before'])} has 0 semantic matches")
            if len(choices) != 1:
                raise ValueError(f"{feature}: {path.name} has ambiguous semantic alternatives")
            choice, match = choices[0]
            before, after = ((choice['before'], choice['after']) if choice.get('raw') else
                             (remap(choice['before'], aliases), remap(choice['after'], aliases)))
            if not before:
                if any(signature(m.group()) == signature(after) for m in methods):
                    raise ValueError(f"{feature}: added method already exists: {signature(after)}")
                additions.setdefault(path, []).append(after)
                continue
            old_registers = re.search(r'(?m)^\s*\.registers (\d+)', before)
            new_registers = re.search(r'(?m)^\s*\.registers (\d+)', after)
            # Keeping stock instructions while reducing locals can alias p0 with
            # a temporary v register and produce an ART VerifyError.
            if old_registers and new_registers and int(new_registers[1]) < int(old_registers[1]):
                stock_body = before[old_registers.end():].strip()
                if stock_body in after:
                    raise ValueError(f"{feature}: preserved stock body loses local registers: {signature(before)}")
            key = (path, match.start())
            if key in seen:
                raise ValueError(f'Overlapping patch: {path}::{signature(before)}')
            seen.add(key)
            members[remap(entry['owner'], aliases) + '->' + signature(before)] = remap(entry['owner'], aliases) + '->' + signature(match.group())
            # Keep actual method declaration: visibility, flags, name, prototype.
            after = match.group().splitlines()[0] + '\n' + after.split('\n', 1)[1]
            matches.append(Match(path, match.start(), match.end(), after.rstrip(), feature, signature(match.group())))
        for field in entry.get('fields', []):
            field = remap(field, aliases)
            field_name = field.split()[-1].split(':')[0]
            if re.search(r'(?m)^\.field .*\b' + re.escape(field_name) + ':', content):
                raise ValueError(f'Added field already exists: {path}::{field_name}')
            additions.setdefault(path, []).append(field)
    def bind_members(text):
        return re.sub(r'L[^;\s]+;->[^\s,(]+\([^\s]*', lambda m: members.get(m.group(), m.group()), text)
    for match in matches:
        match.replacement = bind_members(match.replacement)
    additions = {path: [bind_members(text) for text in extra] for path, extra in additions.items()}
    return files, matches, additions, aliases


def apply_profile(roots, profile, source_index=None, selected=None, report_path=None):
    files, matches, additions, aliases = plan_patch(roots, profile, source_index, selected)
    for path, original in files.items():
        result = original
        for match in sorted((m for m in matches if m.path == path), key=lambda m: m.start, reverse=True):
            result = result[:match.start] + match.replacement + result[match.end:]
        extra = additions.get(path, [])
        fields = [x for x in extra if x.startswith('.field ')]
        methods = [x for x in extra if x.startswith('.method ')]
        if fields:
            first_method = METHOD.search(result)
            if not first_method:
                raise ValueError(f'Cannot insert fields into {path}')
            position = first_method.start()
            result = result[:position] + '\n'.join(fields) + '\n\n' + result[position:]
        if methods:
            result += '\n\n' + '\n\n'.join(methods) + '\n'
        path.write_text(result, encoding='utf-8')
    report = {'profile': profile['id'], 'modified_classes': len(files),
              'modified_methods': len(matches), 'added_methods': sum(x.startswith('.method ') for v in additions.values() for x in v),
              'matches': [{'feature': m.feature, 'class': str(m.path), 'method': m.method} for m in matches], 'type_bindings': aliases}
    if report_path:
        Path(report_path).write_text(json.dumps(report, indent=2), encoding='utf-8')
    return report


def load_profile(path):
    path = Path(path)
    profile = json.loads(path.read_text(encoding='utf-8'))
    if profile.get('extends'):
        base = load_profile(path.parent / profile['extends'])
        for override in profile['overrides']:
            target_signatures = {override['method'], signature(override['before'])}
            rules = [rule for feature in base['features'] if feature['id'] == override['feature']
                     for entry in feature['classes'] if entry['owner'] == override['owner']
                     for rule in entry['methods'] if rule['before'] and signature(rule['before']) in target_signatures]
            if len(rules) != 1:
                raise ValueError('Reviewed profile override must bind exactly one base rule')
            rules[0].update(before=override['before'], after=override['after'], variants=override.get('variants', {}))
            # Exact-fingerprint overrides must not inherit generic OEM alternatives.
            rules[0].pop('alternatives', None)
        return {**base, **{key: value for key, value in profile.items() if key not in {'extends', 'overrides'}}}
    profile['features'] = [json.loads((path.parent / feature).read_text(encoding='utf-8')) for feature in profile['features']]
    return profile
