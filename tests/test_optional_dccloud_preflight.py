import os
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock

from tools import dccloud_preflight


class OptionalMirrorTests(unittest.TestCase):
    def test_api_failure_disables_secondary_mirror_and_keeps_build_alive(self):
        with tempfile.TemporaryDirectory() as temp:
            env = Path(temp) / "github-env"
            with mock.patch.object(sys, "argv", ["preflight", "--optional"]), mock.patch.dict(
                os.environ, {"GITHUB_ENV": str(env)}
            ), mock.patch.object(dccloud_preflight, "_preflight", side_effect=RuntimeError("secret")):
                self.assertEqual(0, dccloud_preflight.main())
            self.assertEqual("WUKONG_DCCLOUD_PREFLIGHT_FAILED=1\n", env.read_text())

    def test_manual_preflight_remains_strict(self):
        with mock.patch.object(sys, "argv", ["preflight"]), mock.patch.object(
            dccloud_preflight, "_preflight", side_effect=RuntimeError("api_request_failed")
        ):
            with self.assertRaises(RuntimeError):
                dccloud_preflight.main()
