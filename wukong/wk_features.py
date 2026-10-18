"""Selection contract for the independent WK window and power patches."""
from __future__ import annotations

import importlib.util
from pathlib import Path

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


def normalize_patches(value):
    # Missing is the legacy recipe contract; [] explicitly means no hooks.
    if value is None:
        return None
    if not isinstance(value, list) or any(not isinstance(item, str) for item in value):
        raise ValueError("wkManagerPatches must be a list of patch names")
    unknown = set(value).difference(FEATURES)
    if unknown:
        raise ValueError("Unsupported WK Manager patches: " + ", ".join(sorted(unknown)))
    return list(dict.fromkeys(value))


def load_patcher(stark_root: Path):
    folder = stark_root / "WK_Manager" / "patch_WK_Manager"
    folder_str = str(folder.resolve())
    import sys
    if folder_str not in sys.path:
        sys.path.insert(0, folder_str)
    path = folder / "patch_features.py"
    spec = importlib.util.spec_from_file_location("wk_manager_feature_patches", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"Cannot load WK Manager patch scripts: {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module
