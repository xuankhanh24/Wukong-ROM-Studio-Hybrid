from __future__ import annotations

import json
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
INDEX = ROOT / "content-packs" / "index.json"
SHARED_MOD_ROOTS = {"Fake_lock", "WK_Installer", "WK_Manager"}
SPLIT_SHARED_MOD_PACKS = {
    "MOD/ColorOS_16.0.5",
    "MOD/ColorOS_16.0.7",
    "MOD/ColorOS_16.0.8",
    "MOD/ColorOS_16.0.9",
}


class ContentPackIndexContractTests(unittest.TestCase):
    def test_split_coloros_packs_do_not_duplicate_shared_mods(self) -> None:
        payload = json.loads(INDEX.read_text(encoding="utf-8"))
        versioned = [
            pack
            for pack in payload["packs"]
            if str(pack["id"]) in SPLIT_SHARED_MOD_PACKS
        ]

        self.assertEqual(SPLIT_SHARED_MOD_PACKS, {pack["id"] for pack in versioned})
        for pack in versioned:
            roots = {str(item["path"]).split("/", 1)[0] for item in pack["files"]}
            self.assertFalse(
                roots & SHARED_MOD_ROOTS,
                f"{pack['id']} duplicates shared MOD content",
            )


if __name__ == "__main__":
    unittest.main()
