from __future__ import annotations

import ast
import os
import re
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock


ROOT = Path(__file__).resolve().parents[1]


def _load_build_main_functions(*names: str) -> dict[str, object]:
    source = (ROOT / "Build-main.py").read_text(encoding="utf-8")
    module = ast.parse(source)
    wanted = [
        node
        for node in module.body
        if isinstance(node, ast.FunctionDef) and node.name in names
    ]
    namespace = {
        "os": os,
        "re": re,
        "subprocess": subprocess,
        "sys": sys,
        "SCRIPT_DIR": str(ROOT),
    }
    exec(compile(ast.Module(body=wanted, type_ignores=[]), "Build-main.py", "exec"), namespace)
    return namespace


class FakeLockVbmetaTests(unittest.TestCase):
    def test_get_blob_hash_cli_reads_vbmeta_blob(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            image = Path(temp) / "vbmeta.img"
            image.write_bytes(b"AVB0" + bytes(252))
            result = subprocess.run(
                [sys.executable, str(ROOT / "get_blob_hash.py"), str(image)],
                cwd=ROOT,
                check=False,
                capture_output=True,
                text=True,
            )

        self.assertEqual(0, result.returncode, result.stderr)
        self.assertRegex(
            result.stdout,
            r"Hashed Vbmeta Blob of vbmeta\.img:\s*[0-9a-f]{64}",
        )

    def test_legacy_fake_lock_renderer_replaces_both_digest_properties(self) -> None:
        namespace = _load_build_main_functions("_render_fake_lock_init_patch")
        render = namespace["_render_fake_lock_init_patch"]
        with tempfile.TemporaryDirectory() as temp:
            patch = Path(temp) / "stark_init.rc"
            patch.write_text(
                "+on post-fs-data\n"
                "+    exec u:r:init:s0 root root -- /system/bin/wk -n ro.boot.vbmeta.digest {{VBMETA_BLOB_HASH}}\n"
                "+    exec u:r:init:s0 root root -- /system/bin/wk -n vendor.boot.vbmeta.digest {{VBMETA_BLOB_HASH}}\n",
                encoding="utf-8",
            )

            rendered = render(str(patch), "c" * 64)

        self.assertEqual(2, rendered.count("c" * 64))
        self.assertNotIn("{{VBMETA_BLOB_HASH}}", rendered)

    def test_legacy_preparation_patches_before_reading_hash(self) -> None:
        namespace = _load_build_main_functions("prepare_fake_lock_vbmeta")
        prepare = namespace["prepare_fake_lock_vbmeta"]
        namespace["run_extra_patches"] = mock.Mock(return_value=True)
        namespace["read_vbmeta_blob_hash"] = mock.Mock(return_value="d" * 64)
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            build = root / "Build"
            build.mkdir()
            (build / "vbmeta.img").write_bytes(b"patched")

            digest = prepare(str(root), str(root / "source_rom"), str(root / "rom-unpack"))

        self.assertEqual("d" * 64, digest)
        namespace["run_extra_patches"].assert_called_once()
        namespace["read_vbmeta_blob_hash"].assert_called_once()


if __name__ == "__main__":
    unittest.main()
