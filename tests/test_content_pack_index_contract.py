from __future__ import annotations

import json
import unittest
from pathlib import Path

from wukong.content_packs import ContentPackManager


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
    def test_non_mod_content_is_owned_by_git_without_remote_archives(self) -> None:
        payload = json.loads(INDEX.read_text(encoding="utf-8"))
        for pack in payload["packs"]:
            with self.subTest(pack=pack["id"]):
                if pack["id"].startswith("MOD/"):
                    self.assertTrue(pack["archive"]["uri"].startswith("https://github.com/"))
                else:
                    self.assertEqual(pack.get("source"), "git")
                    self.assertNotIn("archive", pack)
                    self.assertTrue((ROOT / pack["target"]).is_dir())
                    ContentPackManager.verify(ROOT / pack["target"], pack)

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
