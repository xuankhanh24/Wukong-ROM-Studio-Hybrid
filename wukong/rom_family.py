"""ROM-family routing shared by local and cloud builds."""
from __future__ import annotations

import re
from typing import Any, Mapping


def is_oxygen_product(product_name: Any) -> bool:
    return "CPH" in str(product_name or "").upper()


def oxygen_mod_version(metadata: Mapping[str, Any], requested: Any = None) -> Any:
    product = metadata.get("product_name") or metadata.get("productName")
    if not is_oxygen_product(product):
        return requested
    version = metadata.get("version_name") or metadata.get("version")
    release = re.search(r"_(\d+\.\d+\.\d+)(?:\.|\(|$)", str(version or ""))
    if release:
        return f"OxygenOS_{release.group(1)}"
    if str(requested or "").startswith(("OxygenOS_", "ColorOS_", "RealmeUI_")):
        return "OxygenOS_" + str(requested).split("_", 1)[1]
    raise ValueError("Cannot determine OxygenOS MOD version from CPH ROM metadata")


def required_content_packs(mod_version: str) -> tuple[str, ...]:
    shared = ("STARK/common", "Flash_script/common", "copy-image/v1")
    recovery = () if mod_version.startswith("OxygenOS_") else ("OFX/v1", "TWRP/v1")
    return (f"MOD/{mod_version}", *shared, *recovery)
