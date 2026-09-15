import json
import tempfile
import unittest
from pathlib import Path

from tools.actions_failure_manifest import write_failure


class FailureManifestTests(unittest.TestCase):
    def test_stage_is_reported_and_existing_manifest_preserved(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            self.assertTrue(write_failure(root, "job123", "toolchain"))
            path = root / "job123/manifest.json"
            payload = json.loads(path.read_text())
            self.assertIn("Linux toolchain", payload["error"])
            self.assertFalse(write_failure(root, "job123", "submit"))
            self.assertEqual(json.loads(path.read_text()), payload)

    def test_untrusted_stage_and_job_id_do_not_leak_or_escape(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            write_failure(root, "job123", "secret-token")
            self.assertNotIn("secret-token", (root / "job123/manifest.json").read_text())
            with self.assertRaises(ValueError):
                write_failure(root, "../escape", "toolchain")
