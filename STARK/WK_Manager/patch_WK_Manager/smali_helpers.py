"""Relocated legacy patch code; existing function bodies are unchanged."""
from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path
from textwrap import dedent
from typing import Callable


ROOT_DIR = Path(__file__).resolve().parents[3]


DEFAULT_STARK_DIR = ROOT_DIR / "STARK"


class WkManagerPatchError(RuntimeError):
    pass


def _write_text_lf(path: Path, content: str) -> None:
    normalized = content.replace("\r\n", "\n").replace("\r", "\n")
    path.write_bytes(normalized.encode("utf-8"))


@dataclass
class PatchReport:
    jar: str
    patchedMethods: int = 0
    importedSmali: int = 0


DISABLE_FLAG_SECURE_MARKER = "# WK_STUDIO_DISABLE_FLAG_SECURE"


def _code(value: str) -> str:
    return dedent(value).strip("\n")


def _smali_anchor(value: str) -> str:
    return "\n".join(f"    {line}" if line else "" for line in _code(value).splitlines())


def _find_smali(decoded: Path, class_name: str) -> Path:
    import sys
    stark_root = str(Path(__file__).resolve().parents[2])
    if stark_root not in sys.path:
        sys.path.insert(0, stark_root)
    from patch_common import find_smali_matches
    relative = Path(*class_name.split(".")).with_suffix(".smali")
    matches = find_smali_matches(decoded, relative)
    if len(matches) != 1:
        raise WkManagerPatchError(
            f"{class_name}: expected one smali file, found {len(matches)}"
        )
    return matches[0]


def _method_pattern(signature: str) -> re.Pattern[str]:
    return re.compile(
        r"(?ms)^\.method[^\n]*" + re.escape(signature) + r"[ \t]*\n.*?^\.end method[ \t]*$"
    )


def _method_name_pattern(name: str) -> re.Pattern[str]:
    return re.compile(
        r"(?ms)^\.method[^\n]*\s" + re.escape(name) + r"\([^)]*\)[^\n]*\n.*?^\.end method[ \t]*$"
    )


def _edit_method(
    decoded: Path,
    class_name: str,
    signature: str,
    marker: str,
    editor: Callable[[str], str],
) -> bool:
    path = _find_smali(decoded, class_name)
    content = path.read_text(encoding="utf-8")
    matches = list(_method_pattern(signature).finditer(content))
    if len(matches) != 1:
        raise WkManagerPatchError(
            f"{class_name}.{signature}: expected one method, found {len(matches)}"
        )
    method = matches[0].group(0)
    if marker in method:
        return False
    updated = editor(method)
    if updated == method:
        raise WkManagerPatchError(f"{class_name}.{signature}: patch made no change")
    _write_text_lf(path, content[: matches[0].start()] + updated + content[matches[0].end() :])
    return True


def _edit_method_by_name(
    decoded: Path,
    class_name: str,
    method_name: str,
    marker: str,
    editor: Callable[[str], str],
) -> bool:
    path = _find_smali(decoded, class_name)
    content = path.read_text(encoding="utf-8")
    matches = list(_method_name_pattern(method_name).finditer(content))
    if len(matches) != 1:
        raise WkManagerPatchError(
            f"{class_name}.{method_name}: expected one method, found {len(matches)}"
        )
    method = matches[0].group(0)
    if marker in method:
        return False
    updated = editor(method)
    if updated == method:
        raise WkManagerPatchError(f"{class_name}.{method_name}: patch made no change")
    _write_text_lf(path, content[: matches[0].start()] + updated + content[matches[0].end() :])
    return True


def _replace_once(content: str, anchor: str, replacement: str, label: str) -> str:
    count = content.count(anchor)
    if count != 1:
        raise WkManagerPatchError(f"{label}: expected one anchor, found {count}")
    return content.replace(anchor, replacement, 1)


def _insert_before(content: str, anchor: str, snippet: str, label: str) -> str:
    return _replace_once(content, anchor, snippet + "\n\n" + anchor, label)


def _insert_after(content: str, anchor: str, snippet: str, label: str) -> str:
    return _replace_once(content, anchor, anchor + "\n\n" + snippet, label)


def _insert_after_regex(content: str, pattern: str, snippet: str, label: str) -> str:
    matches = list(re.finditer(pattern, content, flags=re.MULTILINE))
    if len(matches) != 1:
        raise WkManagerPatchError(f"{label}: expected one regex anchor, found {len(matches)}")
    match = matches[0]
    return content[: match.end()] + "\n\n" + snippet + content[match.end() :]


def _insert_before_return_after_trace(
    content: str,
    trace_registers: str,
    return_register: str,
    snippet: str,
    label: str,
) -> str:
    pattern = re.compile(
        rf"(?m)"
        rf"(^[ \t]*invoke-static \{{{re.escape(trace_registers)}\}}, "
        rf"Landroid/os/Trace;->traceEnd\(J\)V[ \t]*\n"
        rf"(?:(?:[ \t]*\n)|(?:[ \t]*\.line [^\n]+\n))*)"
        rf"([ \t]*return-object {re.escape(return_register)}[ \t]*$)"
    )
    matches = list(pattern.finditer(content))
    if len(matches) != 1:
        raise WkManagerPatchError(f"{label}: expected one anchor, found {len(matches)}")
    match = matches[0]
    return (
        content[: match.start()]
        + match.group(1)
        + "\n"
        + snippet
        + "\n\n"
        + match.group(2)
        + content[match.end() :]
    )


def _replace_method(
    decoded: Path,
    class_name: str,
    signature: str,
    marker: str,
    replacement: str,
) -> bool:
    return _edit_method(decoded, class_name, signature, marker, lambda _method: replacement)


def _add_local_registers(method: str, count: int, parameter_words: int) -> tuple[str, int]:
    locals_match = re.search(r"(?m)^([ \t]*)\.locals ([0-9]+)[ \t]*$", method)
    if locals_match:
        base = int(locals_match.group(2))
        updated = (
            method[: locals_match.start()]
            + f"{locals_match.group(1)}.locals {base + count}"
            + method[locals_match.end() :]
        )
        return updated, base
    registers_match = re.search(r"(?m)^([ \t]*)\.registers ([0-9]+)[ \t]*$", method)
    if not registers_match:
        raise WkManagerPatchError("method has no .locals or .registers directive")
    registers = int(registers_match.group(2))
    base = registers - parameter_words
    if base < 0:
        raise WkManagerPatchError("method register count is lower than its parameter count")
    updated = (
        method[: registers_match.start()]
        + f"{registers_match.group(1)}.registers {registers + count}"
        + method[registers_match.end() :]
    )
    return updated, base


def _patch_before(
    decoded: Path,
    class_name: str,
    signature: str,
    anchor: str,
    snippet: str,
    marker: str,
) -> bool:
    return _edit_method(
        decoded,
        class_name,
        signature,
        marker,
        lambda method: _insert_before(method, anchor, snippet, f"{class_name}.{signature}"),
    )


def _patch_after(
    decoded: Path,
    class_name: str,
    signature: str,
    anchor: str,
    snippet: str,
    marker: str,
) -> bool:
    return _edit_method(
        decoded,
        class_name,
        signature,
        marker,
        lambda method: _insert_after(method, anchor, snippet, f"{class_name}.{signature}"),
    )


def _patch_after_directive(
    decoded: Path,
    class_name: str,
    signature: str,
    directive_pattern: str,
    snippet: str,
    marker: str,
) -> bool:
    return _edit_method(
        decoded,
        class_name,
        signature,
        marker,
        lambda method: _insert_after_regex(
            method,
            directive_pattern,
            snippet,
            f"{class_name}.{signature}",
        ),
    )


def _patch_after_directive_if_present(
    decoded: Path,
    class_name: str,
    signature: str,
    directive_pattern: str,
    snippet: str,
    marker: str,
) -> bool:
    """Patch an API that newer framework releases may remove entirely.

    This remains fail-fast when the class is missing or the signature is
    ambiguous.  A cleanly absent method is the only accepted no-op.
    """
    path = _find_smali(decoded, class_name)
    content = path.read_text(encoding="utf-8")
    matches = list(_method_pattern(signature).finditer(content))
    if not matches:
        return False
    if len(matches) != 1:
        raise WkManagerPatchError(
            f"{class_name}.{signature}: expected at most one method, found {len(matches)}"
        )
    return _patch_after_directive(
        decoded,
        class_name,
        signature,
        directive_pattern,
        snippet,
        marker,
    )


def _patch_after_directive_first_present(
    decoded: Path,
    class_name: str,
    candidates: tuple[tuple[str, str], ...],
    snippet: str,
    marker: str,
) -> bool:
    """Patch exactly one known signature variant of a framework method."""
    path = _find_smali(decoded, class_name)
    content = path.read_text(encoding="utf-8")
    present = [
        (signature, directive)
        for signature, directive in candidates
        if _method_pattern(signature).search(content)
    ]
    if len(present) != 1:
        raise WkManagerPatchError(
            f"{class_name}: expected one known method variant, found {len(present)}"
        )
    signature, directive = present[0]
    return _patch_after_directive(
        decoded,
        class_name,
        signature,
        directive,
        snippet,
        marker,
    )


def _replace_method_after_directive(
    decoded: Path,
    class_name: str,
    signature: str,
    directive_pattern: str,
    snippet: str,
    marker: str,
) -> bool:
    """Replace a method body while retaining its smali header/directives.

    The disable-flag-secure guide intentionally drops every original
    instruction after the last method directive and returns the safe value.
    Keeping the header, register declaration, parameters, and annotations
    makes the patch valid across apktool output variants.
    """
    path = _find_smali(decoded, class_name)
    content = path.read_text(encoding="utf-8")
    matches = list(_method_pattern(signature).finditer(content))
    if len(matches) != 1:
        raise WkManagerPatchError(
            f"{class_name}.{signature}: expected one method, found {len(matches)}"
        )
    method = matches[0].group(0)
    if marker in method:
        return False
    lines = method.splitlines()
    directive_matches = [
        index
        for index, line in enumerate(lines)
        if re.search(directive_pattern, line)
    ]
    if len(directive_matches) != 1:
        raise WkManagerPatchError(
            f"{class_name}.{signature}: expected one directive anchor, found {len(directive_matches)}"
        )
    prefix = "\n".join(lines[: directive_matches[0] + 1]).rstrip()
    updated = f"{prefix}\n\n{_code(snippet)}\n{DISABLE_FLAG_SECURE_MARKER}\n.end method"
    _write_text_lf(path, content[: matches[0].start()] + updated + content[matches[0].end() :])
    return True

