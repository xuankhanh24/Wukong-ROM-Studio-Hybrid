"""Independent decoded-smali hooks. Bridge implementations live in framework.jar only.

Usage: python patch_features.py oplus-services DECODED --patch multi_window
       python patch_features.py framework DECODED --patch power_button_remap
"""
from __future__ import annotations

import argparse
import importlib.util
import json
import re
import sys
from types import SimpleNamespace
from pathlib import Path

_PATCH_DIR = str(Path(__file__).resolve().parent)
if _PATCH_DIR not in sys.path:
    sys.path.insert(0, _PATCH_DIR)
_STARK_ROOT = str(Path(__file__).resolve().parents[2])
if _STARK_ROOT not in sys.path:
    sys.path.insert(0, _STARK_ROOT)
from patch_common import find_smali_matches, register_smali_path

BRIDGES = {
    "multi_window": "WukongMultiWindowBridge",
    "power_button_remap": "WukongPowerKeyBridge",
}
PREFIX = "Lcom/wukong/manager/"
FEATURES = (
    "keybox_manager",
    "play_integrity_spoof",
    "gamespoof",
    "hma_privacy_spoof",
    "kernel_manager",
    "power_button_remap",
    "multi_window",
    "disable_flag_secure",
    "black_window",
    "multi_audio",
)

FEATURE_BRIDGES: dict[str, list[str]] = {
    "keybox_manager": [
        "com/wukong/manager/WukongFrameworkBridge.smali",
        "com/wukong/manager/WukongFrameworkBridge$1.smali",
        "com/wukong/manager/WukongFrameworkBridge$2.smali",
    ],
    "play_integrity_spoof": [
        "com/wukong/manager/WukongInstrumentationHook.smali",
        "com/wukong/manager/WukongInstrumentationHook$PropField.smali",
    ],
    "gamespoof": [
        "com/wukong/manager/WukongPackageManagerHook.smali",
        "com/wukong/manager/WukongInstrumentationHook.smali",
        "com/wukong/manager/WukongInstrumentationHook$PropField.smali",
    ],
    "hma_privacy_spoof": [
        "com/wukong/manager/WukongHmaPolicyBridge.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$1.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$HmaRule.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$PackageUpdateReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$PolicyUpdateReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$SettingReplacement.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$ShortcutHostReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$UidPackages.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$UidPolicy.smali",
    ],
    "kernel_manager": [
        "com/wukong/manager/WukongHmaPolicyBridge.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$1.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$HmaRule.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$PackageUpdateReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$PolicyUpdateReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$SettingReplacement.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$ShortcutHostReceiver.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$UidPackages.smali",
        "com/wukong/manager/WukongHmaPolicyBridge$UidPolicy.smali",
    ],
    "power_button_remap": [
        "com/wukong/manager/WukongPowerKeyBridge.smali",
    ],
    "multi_window": [
        "com/wukong/manager/WukongMultiWindowBridge.smali",
    ],
    "disable_flag_secure": [
        "android/preference/SettingsHelper.smali",
    ],
    "black_window": [
        "android/preference/SettingsHelper.smali",
    ],
    "multi_audio": [
        "android/preference/SettingsHelper.smali",
    ],
}


class PatchError(ValueError):
    pass


def _class(root, name):
    relative = Path(*name.split(".")).with_suffix(".smali")
    matches = find_smali_matches(root, relative)
    if len(matches) != 1:
        raise PatchError(f"{name}: expected one class, found {len(matches)}")
    return matches[0]


def _pattern(signature):
    return re.compile(r"(?ms)^\.method[^\n]*\s" + re.escape(signature) + r"[ \t]*\n.*?^\.end method[ \t]*$")


def _edit(text, signature, editor):
    matches = list(_pattern(signature).finditer(text))
    if len(matches) != 1:
        raise PatchError(f"{signature}: expected one method, found {len(matches)}")
    match = matches[0]
    return text[:match.start()] + editor(match.group()) + text[match.end():]


def _entry(method, snippet, parameter_words):
    """Insert outside annotations and allocate v0 only when parameters cannot shift."""
    declaration = re.search(r"(?m)^\s*\.(locals|registers)\s+(\d+)[ \t]*$", method)
    if not declaration:
        raise PatchError("Missing register declaration")
    count = int(declaration[2])
    locals_count = count if declaration[1] == "locals" else count - parameter_words
    if locals_count < 0:
        raise PatchError("Invalid register count")
    if locals_count == 0:
        # vN aliases for incoming parameters would change after allocation.
        instructions = re.sub(r'"(?:\\.|[^"\\])*"|#[^\n]*', "", method[declaration.end():])
        if re.search(r"\bv\d+\b", instructions):
            raise PatchError("Cannot safely allocate scratch register: v aliases reference parameters")
        method = method[:declaration.start(2)] + str(count + 1) + method[declaration.end(2):]
    lines = method.splitlines(keepends=True)
    depth = 0
    for index, line in enumerate(lines[1:], 1):
        stripped = line.strip()
        if stripped.startswith(".annotation"):
            depth += 1
        elif stripped.startswith(".end annotation"):
            depth -= 1
        if depth or not stripped or stripped.startswith((".", "#")):
            continue
        lines.insert(index, snippet + "\n")
        return "".join(lines)
    raise PatchError("Method has no executable body")


def _remove_legacy(method):
    pattern = re.compile(
        r'(?m)^[ \t]*const-string(?:/jumbo)? v0, "multi_window"\s*'
        r'invoke-static \{v0\}, Landroid/preference/SettingsHelper;->getIntofSettings\(Ljava/lang/String;\)I\s*'
        r'move-result v0\s*if-eqz v0, (?P<label>:\w+)\s*'
        r'const/(?:4|16) v0, 0x(?:1|10)\s*return v0\s*'
        r'(?:\.line \d+\s*)?(?P=label)[ \t]*\n?'
    )
    result = pattern.sub("", method)
    if '"multi_window"' in result:
        raise PatchError("Unrecognized legacy multi_window hook; use stock decoded input")
    return result


def _feature_module(name):
    spec = importlib.util.spec_from_file_location(
        "wk_" + name, Path(__file__).with_name("patch_" + name + ".py"))
    if spec is None or spec.loader is None:
        raise PatchError(f"Cannot load feature module: {name}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def _feature_helpers():
    return SimpleNamespace(_edit=_edit, _entry=_entry, _pattern=_pattern,
                           _remove_legacy=_remove_legacy, PatchError=PatchError)


def _multi_window(service, utils):
    return _feature_module("multi_window").transform(service, utils, _feature_helpers())


def _power(text):
    return _feature_module("power_button_remap").transform(text, _feature_helpers())


def patch_decoded(decoded: Path, patches, jar="oplus-services"):
    selected = _selection(patches)
    edits = {}
    methods_from_delegates = 0
    if jar not in ("oplus-services", "services", "framework"):
        raise PatchError(f"Unsupported hook JAR: {jar}")

    if jar == "framework":
        spec = importlib.util.spec_from_file_location("wk_framework", Path(__file__).with_name("patch_framework.py"))
        module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(module)
        res = module.patch_framework_decoded(decoded, selected_patches=selected)
        return {"jar": "framework.jar", "patchedClasses": res.get("patchedClasses", 0),
                "patchedMethods": res.get("patchedMethods", 0), "patches": list(selected)}

    if jar == "services":
        guide_selected = set(selected).intersection(("multi_audio", "disable_flag_secure"))
        if guide_selected:
            spec = importlib.util.spec_from_file_location("wk_guide_keys", Path(__file__).with_name("patch_guide_keys.py"))
            module = importlib.util.module_from_spec(spec)
            spec.loader.exec_module(module)
            guide_edits = module.plan_edits(decoded, guide_selected, SimpleNamespace(
                _class=_class, _edit=_edit, _entry=_entry, _pattern=_pattern, PatchError=PatchError), jar=jar)
            edits.update(guide_edits)

        svc_selected = set(selected).intersection(("hma_privacy_spoof", "kernel_manager"))
        if svc_selected:
            spec = importlib.util.spec_from_file_location("wk_services", Path(__file__).with_name("patch_services.py"))
            module = importlib.util.module_from_spec(spec)
            spec.loader.exec_module(module)
            res = module.patch_services_decoded(decoded, selected_patches=svc_selected)
            methods_from_delegates += int(res.get("patchedMethods", 0))

    if jar == "oplus-services":
        if "multi_window" in selected:
            service = _class(decoded, "com.android.server.wm.FlexibleWindowManagerService")
            utils = _class(decoded, "com.android.server.wm.FlexibleWindowUtils")
            edits[service], edits[utils] = _multi_window(service.read_text(encoding="utf-8"), utils.read_text(encoding="utf-8"))
        if "power_button_remap" in selected:
            rule = _class(decoded, "com.android.server.policy.SinglePowerKeyMonitor$OplusPowerKeyRule")
            edits[rule] = _power(rule.read_text(encoding="utf-8"))
        guide_selected = set(selected).intersection(("black_window", "disable_flag_secure"))
        if guide_selected:
            spec = importlib.util.spec_from_file_location("wk_guide_keys", Path(__file__).with_name("patch_guide_keys.py"))
            module = importlib.util.module_from_spec(spec)
            spec.loader.exec_module(module)
            guide_edits = module.plan_edits(decoded, guide_selected, SimpleNamespace(
                _class=_class, _edit=_edit, _entry=_entry, _pattern=_pattern, PatchError=PatchError), jar=jar)
            # A guide and the multi-window bridge share FlexibleWindowUtils.
            # Compose both planned transformations before committing any files.
            for path, content in guide_edits.items():
                if path in edits:
                    _, utils = _multi_window(edits[_class(decoded, "com.android.server.wm.FlexibleWindowManagerService")], content)
                    edits[path] = utils
                else:
                    edits[path] = content

    # Validate every selected target before writing any of them.
    changed = methods_changed = 0
    for path, content in edits.items():
        original = path.read_text(encoding="utf-8")
        if original != content:
            old_methods = dict(re.findall(r"(?ms)^(\.method[^\n]*)\n(.*?)^\.end method", original))
            new_methods = dict(re.findall(r"(?ms)^(\.method[^\n]*)\n(.*?)^\.end method", content))
            methods_changed += sum(body != old_methods.get(header) for header, body in new_methods.items())
            path.write_bytes(content.encode("utf-8"))
            changed += 1
    return {"jar": jar + ".jar", "patchedClasses": changed,
            "patchedMethods": methods_changed + methods_from_delegates, "patches": list(selected)}


def _selection(patches):
    selected = tuple(dict.fromkeys(patches))
    if any(patch not in FEATURES for patch in selected):
        raise PatchError("Unsupported patch selection")
    return selected


def install_framework_bridges(decoded: Path, patches, source_dir: Path | None = None):
    selected = _selection(patches)
    sources = source_dir or Path(__file__).resolve().parent
    dex_indices = [1] if (decoded / "smali").is_dir() else []
    if decoded.is_dir():
        dex_indices.extend(int(match[1]) for folder in decoded.iterdir()
                           if folder.is_dir() and (match := re.fullmatch(r"smali_classes(\d+)", folder.name)))
    bridge_dex = decoded / f"smali_classes{max(dex_indices, default=1) + 1}"
    pending = []
    relatives: list[Path] = []
    seen = set()
    for feature in selected:
        for rel_str in FEATURE_BRIDGES.get(feature, []):
            rel_p = Path(rel_str)
            if rel_p not in seen:
                seen.add(rel_p)
                relatives.append(rel_p)

    for relative in relatives:
        name = relative.stem
        source = sources / relative
        content = source.read_bytes()
        descriptor = "L" + relative.with_suffix("").as_posix() + ";"
        text_content = content.decode("utf-8", errors="replace")
        if not re.search(r"(?m)^\.class\s+.*?" + re.escape(descriptor), text_content):
            raise PatchError(f"Invalid bridge source: {source}")
        matches = find_smali_matches(decoded, relative)
        if len(matches) > 1:
            raise PatchError(f"Duplicate framework bridge: {name}")
        target = matches[0] if matches else bridge_dex / relative
        if target.exists() and target.read_bytes() != content:
            raise PatchError(f"Existing bridge differs; use stock framework input: {target}")
        if not target.exists():
            pending.append((target, content))
    for target, content in pending:
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(content)
        register_smali_path(target)
    return {"jar": "framework.jar", "importedSmali": len(pending), "patches": list(selected)}


def main(default_patch=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("jar", choices=("framework", "services", "oplus-services"))
    parser.add_argument("decoded", type=Path)
    parser.add_argument("--patch", action="append", choices=FEATURES, required=default_patch is None)
    args = parser.parse_args()
    selected = args.patch or [default_patch]
    report = (install_framework_bridges(args.decoded.resolve(), selected) if args.jar == "framework"
              else patch_decoded(args.decoded.resolve(), selected, args.jar))
    print(json.dumps(report))


if __name__ == "__main__":
    main()
