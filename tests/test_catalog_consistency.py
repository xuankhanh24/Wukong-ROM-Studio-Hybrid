from __future__ import annotations

import json
import unittest
from pathlib import Path

from wukong.mod_release_versions import default_mod_release_version


class MiniAppCatalogConsistencyTests(unittest.TestCase):
    def test_catalog_contains_every_verified_mod_pack_and_release_label(self) -> None:
        root = Path(__file__).resolve().parents[1]
        index = json.loads((root / "content-packs" / "index.json").read_text(encoding="utf-8"))
        catalog = json.loads((root / "telegram_mini_app" / "catalog.json").read_text(encoding="utf-8"))

        expected = {
            str(pack["id"]).split("/", 1)[1]: default_mod_release_version(
                str(pack["id"]).split("/", 1)[1]
            )
            for pack in index["packs"]
            if str(pack.get("id", "")).startswith("MOD/") and pack.get("archive", {}).get("sha256")
        }
        actual_versions = set(catalog.get("modVersions", []))
        actual_labels = {
            version: catalog.get("modReleaseVersions", {}).get(version)
            for version in expected
        }

        self.assertEqual(set(expected), actual_versions.intersection(expected))
        self.assertEqual(expected, actual_labels)


if __name__ == "__main__":
    unittest.main()
