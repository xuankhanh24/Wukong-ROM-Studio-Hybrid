from __future__ import annotations


LITE_DEFAULT_MODS: list[str] = [
    "Global_props",
    "Cts_Gemini",
    "Fix_noti",
    "Fix_Metis",
    "Gapps",
    "Chat_bubbles",
    "Block_ota",
    "GlobalSearch",
    "WK_Installer",
]
PLUS_DEFAULT_EXCLUDED_MODS: set[str] = {"Gallery_mod_CN", "Disable_flag_secure"}
SHARED_MOD_NAMES: frozenset[str] = frozenset(
    {"Fake_lock", "WK_Manager", "WK_Installer"}
)
PUBLIC_PATCH_ONLY_MOD_NAMES: frozenset[str] = frozenset(
    {"Block_ota", "Disable_flag_secure"}
)
MODIFIABLE_PARTITIONS: frozenset[str] = frozenset(
    {
        "my_company",
        "my_manifest",
        "my_preload",
        "my_product",
        "my_region",
        "my_stock",
        "system",
        "system_ext",
    }
)
PROTECTED_PARTITIONS: frozenset[str] = frozenset({"vendor", "vendor_dlkm"})
