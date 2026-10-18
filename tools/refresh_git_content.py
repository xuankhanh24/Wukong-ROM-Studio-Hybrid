"""Refresh checkout-owned base content hashes without packing or uploading it."""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from wukong.content_packs import GIT_CONTENT_PACKS, build_content_pack_record, validate_content_index
from wukong.content_sync import _atomic_write_index


def refresh_git_content(root: Path, index_path: Path) -> None:
    index = json.loads(index_path.read_text(encoding="utf-8"))
    records = []
    for pack_id, target in GIT_CONTENT_PACKS.items():
        if pack_id == "STARK/common":
            # STARK scripts are authoritative in Git; avoid inventorying local
            # Python caches or patch scratch directories during a refresh.
            pack = dict(next(pack for pack in index["packs"] if pack["id"] == pack_id))
            pack.pop("archive", None)
        else:
            pack = build_content_pack_record(root, remote="git", pack_id=pack_id)
        pack.update(source="git", remote=f"git:{target}")
        records.append(pack)
    index["packs"] = sorted(
        [pack for pack in index["packs"] if pack["id"] not in GIT_CONTENT_PACKS] + records,
        key=lambda pack: pack["id"],
    )
    validate_content_index(index)
    _atomic_write_index(index_path, index)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--content-root", type=Path, default=Path.cwd())
    parser.add_argument("--index", type=Path, default=Path("content-packs/index.json"))
    args = parser.parse_args()
    refresh_git_content(args.content_root, args.index)


if __name__ == "__main__":
    main()
