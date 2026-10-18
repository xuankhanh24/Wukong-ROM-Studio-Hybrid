"""Check relocation boundaries and source/packaged import compatibility."""
import inspect
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

import wk_manager_patcher


ROOT = Path(__file__).resolve().parents[1]
BUNDLE = ROOT / "STARK" / "WK_Manager" / "patch_WK_Manager"


class WkManagerModuleLayoutTests(unittest.TestCase):
    def test_legacy_api_is_implemented_in_the_jar_modules(self):
        implementations = {
            "patch_framework_decoded": "patch_framework.py",
            "patch_services_decoded": "patch_services.py",
            "patch_oplus_services_decoded": "patch_oplus_services.py",
            "patch_disable_flag_secure_services_decoded": "patch_services.py",
            "patch_disable_flag_secure_oplus_services_decoded": "patch_oplus_services.py",
            "_edit_method": "smali_helpers.py",
            "_patch_gemini_button_in_register_settings": "patch_oplus_services.py",
        }
        for name, filename in implementations.items():
            with self.subTest(name=name):
                self.assertEqual(Path(inspect.getsourcefile(getattr(wk_manager_patcher, name))), BUNDLE / filename)

    def test_cli_help_works_from_an_unrelated_working_directory(self):
        with tempfile.TemporaryDirectory() as tmp:
            for script in (ROOT / "wk_manager_patcher.py", BUNDLE / "patch_wk_manager.py"):
                result = subprocess.run([sys.executable, str(script), "--help"], cwd=tmp,
                                        capture_output=True, text=True, timeout=20)
                self.assertEqual(result.returncode, 0, result.stderr)
                for target in wk_manager_patcher.PATCHERS:
                    self.assertIn(target, result.stdout)

    def test_packaged_shim_loads_modules_from_content_stark(self):
        with tempfile.TemporaryDirectory() as tmp:
            install = Path(tmp)
            scripts = install / "Runtime" / "Scripts"
            scripts.mkdir(parents=True)
            content = install / "Content" / "STARK" / "WK_Manager" / "patch_WK_Manager"
            content.mkdir(parents=True)
            for source in BUNDLE.glob("*.py"):
                shutil.copy2(source, content / source.name)
            for name in ("wk_manager_patcher.py", "studio_paths.py"):
                shutil.copy2(ROOT / name, scripts / name)
            env = {
                **os.environ,
                "WUKONG_STUDIO_DESKTOP_MODE": "1",
                "WUKONG_STUDIO_INSTALL_ROOT": str(install),
                "WUKONG_STUDIO_APP_ROOT": str(install / "Runtime"),
                "WUKONG_STUDIO_CONTENT_ROOT": str(install / "Content"),
            }
            code = (
                "import inspect,json,wk_manager_patcher as p; "
                "print(json.dumps({'source':inspect.getsourcefile(p.patch_framework_decoded),"
                "'stark':str(p.DEFAULT_STARK_DIR),'targets':sorted(p.PATCHERS)}))"
            )
            result = subprocess.run([sys.executable, "-c", code], cwd=scripts, env=env,
                                    capture_output=True, text=True, timeout=20)
            self.assertEqual(result.returncode, 0, result.stderr)
            payload = json.loads(result.stdout)
            self.assertEqual(Path(payload["source"]).resolve(), (content / "patch_framework.py").resolve())
            self.assertEqual(Path(payload["stark"]).resolve(), (install / "Content" / "STARK").resolve())
            self.assertEqual(payload["targets"], sorted(wk_manager_patcher.PATCHERS))


if __name__ == "__main__":
    unittest.main()
