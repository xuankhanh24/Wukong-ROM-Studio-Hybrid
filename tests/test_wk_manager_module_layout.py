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
from unittest import mock

import wk_manager_patcher
import studio_core


ROOT = Path(__file__).resolve().parents[1]
BUNDLE = ROOT / "STARK" / "WK_Manager" / "patch_WK_Manager"


class WkManagerModuleLayoutTests(unittest.TestCase):
    def test_shipped_power_service_matches_runtime_contract(self):
        service = BUNDLE.parent / "system/system/etc/init/wukong-system-powerd.rc"
        studio_core._validate_wk_manager_power_rc(service)
        content = service.read_text(encoding="utf-8")
        self.assertIn("    user root\n", content)
        self.assertIn("    capabilities DAC_OVERRIDE DAC_READ_SEARCH FOWNER\n", content)

    def test_power_service_accepts_original_root_and_legacy_system_profiles(self):
        original = (
            "service wukong-system-powerd /system/bin/wukong-system-powerd\n"
            "    class late_start\n    disabled\n    user root\n"
            "    group system everybody\n"
            "    capabilities DAC_OVERRIDE DAC_READ_SEARCH FOWNER\n"
            "    socket wukong_system_power stream 0660 system everybody "
            "u:object_r:wukong_system_power_socket:s0\n"
            "on property:sys.boot_completed=1\n    start wukong-system-powerd\n"
        )
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "power.rc"
            for content in (original, original.replace("user root", "user system").replace(
                "    capabilities DAC_OVERRIDE DAC_READ_SEARCH FOWNER\n", "")):
                path.write_text(content, encoding="utf-8")
                studio_core._validate_wk_manager_power_rc(path)
            invalid = {
                "missing capabilities": original.replace("    capabilities DAC_OVERRIDE DAC_READ_SEARCH FOWNER\n", ""),
                "extra capability": original.replace("FOWNER", "FOWNER SYS_ADMIN"),
                "duplicate user": original.replace("user root", "user root\n    user shell"),
                "commented user": original.replace("user root", "# user root"),
                "wrong socket mode": original.replace("stream 0660", "stream 0666"),
                "duplicate socket": original.replace("    class late_start", "    socket other stream 0666 root root\n    class late_start"),
                "wrong service": original.replace("service wukong-system-powerd /system/bin/wukong-system-powerd", "service other /system/bin/sh"),
                "wrong trigger": original.replace("on property:sys.boot_completed=1", "on boot"),
                "other user": original.replace("user root", "user shell"),
                "system capabilities": original.replace("user root", "user system"),
            }
            for name, content in invalid.items():
                with self.subTest(name=name):
                    path.write_text(content, encoding="utf-8")
                    with self.assertRaisesRegex(studio_core.StudioError, "init service is invalid"):
                        studio_core._validate_wk_manager_power_rc(path)

    def test_invalid_service_fails_before_any_mod_mutation(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            service = root / "WK_Manager/system/system/etc/init/wukong-system-powerd.rc"
            service.parent.mkdir(parents=True)
            service.write_text("user root\n", encoding="utf-8")
            with mock.patch.object(studio_core, "STARK_ROOT", root), mock.patch.object(
                studio_core, "normalize_mod_version", return_value="fixture"
            ), mock.patch.object(
                studio_core, "validate_mods", return_value=[{"name": "WK_Manager"}]
            ), mock.patch.object(studio_core, "_partition_destination") as destination:
                with self.assertRaisesRegex(studio_core.StudioError, "init service is invalid"):
                    studio_core.apply_selected_mods(["WK_Manager"], root / "rom", None, root / "work")
                destination.assert_not_called()
                self.assertFalse((root / "rom").exists())

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
