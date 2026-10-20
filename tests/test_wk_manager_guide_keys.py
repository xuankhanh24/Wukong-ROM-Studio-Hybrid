"""Exercise selected guide hooks, composition and JAR routing."""
import tempfile
import unittest
import os
import shutil
import subprocess
from pathlib import Path
from unittest.mock import patch

from tests.test_wk_manager_features import FEATURES, mw_fixture, write_class
from wukong.wk_features import normalize_patches


def guide_fixture(root):
    service, utils = mw_fixture(root)
    methods = []
    for signature, body in (
        ("getUnSupportRatiosInFlexibleTask(Ljava/lang/String;)Ljava/lang/String;", "const/4 v0, 0x0\n    return-object v0"),
        ("isInMultiWindowFlexibleBlackList(Ljava/lang/String;)Z", "const/4 v0, 0x1\n    return v0"),
        ("isSupportFlexibleWindow(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z", "const/4 v0, 0x0\n    return v0"),
        ("isSupportFlexibleWindow(Lcom/android/server/wm/Task;)Z", "const/4 v0, 0x0\n    return v0"),
        ("isSupportFlexibleWindow(Ljava/lang/String;Ljava/lang/String;)Z", "const/4 v0, 0x0\n    return v0"),
    ):
        methods.append(f"\n.method public static {signature}\n    .locals 1\n    {body}\n.end method\n")
    utils.write_text(utils.read_text() + "".join(methods), encoding="utf-8")
    return service, utils


def secure_services_fixture(root, display_methods=0):
    paths = []
    for name, signature in (
        ("com.android.server.devicepolicy.DevicePolicyCacheImpl", "isScreenCaptureAllowed(I)Z"),
        ("com.android.server.devicepolicy.DevicePolicyManagerService", "getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z"),
        ("com.android.server.wm.WindowState", "isSecureLocked()Z"),
        ("com.android.server.wm.WindowManagerService", "notifyScreenshotListeners(I)Ljava/util/List;"),
    ):
        body = "const/4 v0, 0x0\n    " + ("return-object v0" if signature.endswith("Ljava/util/List;") else "return v0")
        paths.append(write_class(root, name,
            f".method public {signature}\n    .locals 1\n    {body}\n.end method\n"))
    paths.append(write_class(root, "com.android.server.wm.DisplayContent",
        (".method public hasSecureWindowOnScreen()Z\n    .locals 1\n"
         "    const/4 v0, 0x1\n    return v0\n.end method\n") * display_methods))
    return paths


class GuideKeyTests(unittest.TestCase):
    def test_secure_services_allow_removed_display_method_and_are_idempotent(self):
        for display_methods in (0, 1):
            with self.subTest(display_methods=display_methods), tempfile.TemporaryDirectory() as tmp:
                root = Path(tmp)
                paths = secure_services_fixture(root, display_methods)
                original_display = paths[-1].read_bytes()
                report = FEATURES.patch_decoded(root, ["disable_flag_secure"], "services")
                self.assertEqual(report["patchedMethods"], 4 + display_methods)
                for path in paths[:4]:
                    self.assertIn('"disable_flag_secure"', path.read_text())
                    self.assertIn(":wk_disable_flag_secure_original", path.read_text())
                if display_methods:
                    self.assertIn('"disable_flag_secure"', paths[-1].read_text())
                    self.assertIn("const/4 v0, 0x1\n    return v0", paths[-1].read_text())
                else:
                    self.assertEqual(paths[-1].read_bytes(), original_display)
                self.assertEqual(FEATURES.patch_decoded(root, ["disable_flag_secure"], "services")["patchedMethods"], 0)

    def test_secure_services_still_reject_invalid_targets_without_writes(self):
        for invalid in ("duplicate_display", "missing_class", "missing_required_method"):
            with self.subTest(invalid=invalid), tempfile.TemporaryDirectory() as tmp:
                root = Path(tmp)
                paths = secure_services_fixture(root, 2 if invalid == "duplicate_display" else 0)
                if invalid == "missing_class":
                    paths.pop().unlink()
                elif invalid == "missing_required_method":
                    paths[2].write_text(".class public Lcom/android/server/wm/WindowState;\n")
                originals = {path: path.read_bytes() for path in paths}
                with self.assertRaises(FEATURES.PatchError):
                    FEATURES.patch_decoded(root, ["disable_flag_secure"], "services")
                self.assertEqual(originals, {path: path.read_bytes() for path in paths})

    @unittest.skipUnless(os.environ.get("WK_SMALI_JAR"), "Set WK_SMALI_JAR for DEX assembly")
    def test_combined_window_and_guide_hooks_assemble(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            guide_fixture(root)
            signature = "requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZIZ)I"
            write_class(root, "com.android.server.audio.MediaFocusControl",
                f".method public {signature}\n    .locals 1\n    const/4 v0, 0x0\n    return v0\n.end method\n")
            selected = ["multi_window", "black_window", "multi_audio"]
            FEATURES.patch_decoded(root, selected)
            FEATURES.patch_decoded(root, selected, "services")
            FEATURES.install_framework_bridges(root, selected)
            for folder in sorted(path for path in root.iterdir() if path.is_dir()):
                output = root / (folder.name + ".dex")
                result = subprocess.run([shutil.which("java"), "-jar", os.environ["WK_SMALI_JAR"],
                    "a", str(folder), "-o", str(output)], capture_output=True, text=True)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                self.assertTrue(output.is_file(), result.stdout + result.stderr)
                self.assertTrue(output.read_bytes().startswith(b"dex\n"))

    def test_window_guide_composes_with_bridge_and_is_idempotent(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            _, utils = guide_fixture(root)
            selected = ["multi_window", "black_window"]
            FEATURES.patch_decoded(root, selected)
            text = utils.read_text()
            self.assertEqual(text.count('"black_window"'), 5)
            self.assertEqual(text.count("getMaxFlexibleTaskNum(I)I"), 1)
            self.assertEqual(FEATURES.patch_decoded(root, selected)["patchedClasses"], 0)

    def test_missing_guide_target_keeps_bridge_targets_unchanged(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            paths = mw_fixture(root)
            original = [p.read_bytes() for p in paths]
            with self.assertRaises(FEATURES.PatchError):
                FEATURES.patch_decoded(root, ["multi_window", "black_window"])
            self.assertEqual(original, [p.read_bytes() for p in paths])

    def test_audio_supported_overloads_preserve_original_code(self):
        for prefix in ("", "I"):
            with self.subTest(prefix=prefix), tempfile.TemporaryDirectory() as tmp:
                root = Path(tmp)
                signature = f"requestAudioFocus({prefix}Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZIZ)I"
                path = write_class(root, "com.android.server.audio.MediaFocusControl",
                    f".method public {signature}\n    .locals 1\n    const/4 v0, 0x0\n    return v0\n.end method\n")
                report = FEATURES.patch_decoded(root, ["multi_audio"], "services")
                self.assertEqual(report["jar"], "services.jar")
                self.assertIn('"multi_audio"', path.read_text())
                self.assertIn("const/4 v0, 0x0", path.read_text())
                self.assertEqual(FEATURES.patch_decoded(root, ["multi_audio"], "services")["patchedClasses"], 0)

    def test_guide_installs_only_settings_helper_in_framework(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            FEATURES.install_framework_bridges(root, ["black_window", "multi_audio"])
            self.assertEqual([p.name for p in root.rglob("*.smali")], ["SettingsHelper.smali"])
            self.assertEqual(FEATURES.install_framework_bridges(root, ["multi_audio"])["importedSmali"], 0)

    def test_audio_routes_only_to_framework_and_services(self):
        import studio_core
        self.assertEqual(normalize_patches(["black_window", "multi_audio"]), ["black_window", "multi_audio"])
        with tempfile.TemporaryDirectory() as tmp:
            with patch.object(studio_core, "_patch_jar_with_apktool", return_value={}) as rebuild:
                studio_core._patch_wk_manager_jars(Path(tmp), Path(tmp), selected_patches=["multi_audio"])
                self.assertEqual([call.args[0].name for call in rebuild.call_args_list], ["framework.jar", "services.jar"])
