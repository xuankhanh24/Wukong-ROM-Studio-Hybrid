import tempfile
import os
import shutil
import subprocess
import zipfile
import unittest
from pathlib import Path
from unittest.mock import patch

from wukong.models import BuildOptions, RecipeValidationError
from wukong.wk_features import load_patcher, normalize_patches

ROOT = Path(__file__).resolve().parents[1]
FEATURES = load_patcher(ROOT / "STARK")


def write_class(root, name, methods, superclass="Ljava/lang/Object;"):
    target = root / "smali_classes3" / Path(*name.split(".")).with_suffix(".smali")
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(f".class public L{name.replace('.', '/')};\n.super {superclass}\n" + methods, encoding="utf-8")
    return target


def mw_fixture(root, legacy=False):
    old = ('    const-string/jumbo v0, "multi_window"\n'
           '    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I\n'
           '    move-result v0\n    if-eqz v0, :cond_wk\n'
           '    const/16 v0, 0x10\n    return v0\n    :cond_wk\n') if legacy else ""
    service = write_class(root, "com.android.server.wm.FlexibleWindowManagerService",
        ".method public getMaxWinNum(I)I\n    .registers 3\n"
        '    .param p1, "scenario"\n' + old + "    const/4 v0, 0x3\n    return v0\n.end method\n")
    utils = write_class(root, "com.android.server.wm.FlexibleWindowUtils",
        ".method public static getMaxFlexibleTaskNum()I\n    .locals 1\n"
        "    const/4 v0, 0x3\n    return v0\n.end method\n"
        ".method public static isSupportMultiMode()Z\n    .locals 1\n" + old +
        "    const/4 v0, 0x0\n    return v0\n.end method\n")
    return service, utils


def power_fixture(root, max_method=True):
    methods = ".method public onKeyGesture(Lfixture/Gesture;)V\n    .registers 2\n    return-void\n.end method\n"
    if max_method:
        methods += ".method public getMaxMultiPressCount()I\n    .locals 1\n    const/4 v0, 0x4\n    return v0\n.end method\n"
    return write_class(root, "com.android.server.policy.SinglePowerKeyMonitor$OplusPowerKeyRule", methods,
                       "Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;")


class FeatureTests(unittest.TestCase):
    @unittest.skipUnless(os.environ.get("WK_SMALI_JAR"), "Set WK_SMALI_JAR to assemble hooks and both real bridges")
    def test_generated_hooks_and_real_bridges_assemble_to_dex(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            mw_fixture(root)
            power_fixture(root)
            legacy = write_class(root, "fixture.LegacyPowerRule",
                '.method onLongPress(J)V\n    .locals 0\n    return-void\n.end method\n'
                '.method onMultiPress(JII)V\n    .locals 3\n    return-void\n.end method\n')
            legacy.write_text(FEATURES._power(legacy.read_text(encoding="utf-8")), encoding="utf-8")
            FEATURES.patch_decoded(root, list(FEATURES.BRIDGES))
            FEATURES.install_framework_bridges(root, list(FEATURES.BRIDGES))
            for folder in sorted(path for path in root.iterdir() if path.is_dir()):
                output = root / (folder.name + ".dex")
                result = subprocess.run([shutil.which("java"), "-jar", os.environ["WK_SMALI_JAR"],
                                         "a", str(folder), "-o", str(output)], capture_output=True, text=True)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                self.assertTrue(output.is_file(), result.stdout + result.stderr)
                self.assertTrue(output.read_bytes().startswith(b"dex\n"))

    @unittest.skipUnless(os.environ.get("WK_POWER_RULE") and os.environ.get("WK_SMALI_JAR"),
                         "Set WK_POWER_RULE and WK_SMALI_JAR for real OEM regression")
    def test_real_oem_power_rule_assembles_and_keeps_stock_callbacks(self):
        source = Path(os.environ["WK_POWER_RULE"]).read_text(encoding="utf-8")
        patched = FEATURES._power(source)
        self.assertEqual(FEATURES._power(patched), patched)
        with tempfile.TemporaryDirectory() as tmp:
            directory = Path(tmp) / 'smali'
            directory.mkdir()
            (directory / 'PowerRule.smali').write_text(patched, encoding='utf-8')
            result = subprocess.run([shutil.which('java'), '-jar', os.environ['WK_SMALI_JAR'],
                                     'a', str(directory), '-o', str(Path(tmp) / 'classes.dex')],
                                    capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)

    def test_multi_window_removes_old_hooks_and_preserves_fallback(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            paths = mw_fixture(root, legacy=True)
            self.assertEqual(FEATURES.patch_decoded(root, ["multi_window"])["patchedClasses"], 2)
            text = "\n".join(path.read_text() for path in paths)
            self.assertNotIn('"multi_window"', text)
            self.assertIn("getHookedMaxWinNum(I)I", text)
            self.assertIn("getMaxFlexibleTaskNum(I)I", text)
            self.assertIn("const/4 v0, 0x3", text)
            self.assertEqual(FEATURES.patch_decoded(root, ["multi_window"])["patchedClasses"], 0)
            self.assertFalse(any(root.rglob("Wukong*Bridge.smali")))

    def test_power_only_allocates_register_and_keeps_existing_max_count(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            rule = power_fixture(root)
            FEATURES.patch_decoded(root, ["power_button_remap"])
            text = rule.read_text()
            self.assertIn(".registers 3", text)
            self.assertIn("handleGesture(Ljava/lang/Object;Ljava/lang/Object;)Z", text)
            self.assertIn("const/4 v0, 0x4", text)
            self.assertEqual(FEATURES.patch_decoded(root, ["power_button_remap"])["patchedClasses"], 0)

    def test_power_adds_missing_super_override(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            rule = power_fixture(root, False)
            FEATURES.patch_decoded(root, ["power_button_remap"])
            self.assertIn("invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;", rule.read_text())

    def test_power_calls_stay_in_oplus_and_updated_bridge_is_framework_only(self):
        import studio_core
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            rule = power_fixture(root)
            FEATURES.patch_decoded(root, ["power_button_remap"])
            bridges = list(root.rglob("WukongPowerKeyBridge.smali"))
            self.assertEqual(bridges, [])
            self.assertIn("->handleGesture", rule.read_text())
            self.assertEqual(FEATURES.patch_decoded(root, ["power_button_remap"])["importedSmali"], 0)
            framework = root / "framework"
            self.assertEqual(FEATURES.install_framework_bridges(framework, ["power_button_remap"])["importedSmali"], 1)
            sources = ROOT / "STARK/WK_Manager/patch_WK_Manager/com/wukong/manager/WukongPowerKeyBridge.smali"
            self.assertEqual(list(framework.rglob("WukongPowerKeyBridge.smali"))[0].read_bytes(), sources.read_bytes())
            self.assertEqual(FEATURES.install_framework_bridges(framework, ["power_button_remap"])["importedSmali"], 0)
            with patch.object(studio_core, "_patch_jar_with_apktool", return_value={}) as rebuild:
                studio_core._patch_wk_manager_jars(root, root, selected_patches=["power_button_remap"])
            self.assertEqual([call.args[0].name for call in rebuild.call_args_list], ["framework.jar", "oplus-services.jar"])
    def test_power_legacy_callbacks_keep_stock_and_are_idempotent(self):
        text = ('.class public Lfixture/Rule;\n.super Lfixture/Base;\n'
                '.method onLongPress(J)V\n    .locals 0\n    return-void\n.end method\n'
                '.method onMultiPress(JII)V\n    .locals 3\n    const/4 v0, 0x1\n'
                '    return-void\n.end method\n')
        updated = FEATURES._power(text)
        self.assertIn('->onLongPress(Ljava/lang/Object;)Z', updated)
        self.assertIn('if-ne p3, v0, :wk_power_check_triple', updated)
        self.assertIn('->onDoublePress(Ljava/lang/Object;)Z', updated)
        self.assertIn('->onTriplePress(Ljava/lang/Object;)Z', updated)
        self.assertIn('const/4 v0, 0x1', updated)
        self.assertEqual(FEATURES._power(updated), updated)

    def test_power_long_press_support_keeps_stock_when_master_is_disabled(self):
        with tempfile.TemporaryDirectory() as tmp:
            rule = power_fixture(Path(tmp))
            original = rule.read_text() + (
                '.method public supportLongPress()Z\n    .locals 0\n'
                '    const/4 p0, 0x0\n    return p0\n.end method\n')
            updated = FEATURES._power(original)
            self.assertIn('->isMasterEnabled(Ljava/lang/Object;)Z', updated)
            self.assertIn(':wk_power_support_original\n\n    const/4 p0, 0x0', updated)
            self.assertEqual(FEATURES._power(updated), updated)

    def test_power_max_count_uses_range_for_high_registers(self):
        with tempfile.TemporaryDirectory() as tmp:
            rule = power_fixture(Path(tmp))
            original = rule.read_text().replace('.locals 1', '.locals 20')
            updated = FEATURES._power(original)
            self.assertIn('invoke-static/range {v0 .. v0}', updated)
            self.assertNotIn('invoke-static {p0, v0}', updated)
            self.assertIn('const/4 v0, 0x4', updated)
    def test_power_rejects_primitive_gesture_instead_of_passing_it_as_object(self):
        text = ('.class public Lfixture/Rule;\n.super Lfixture/Base;\n'
                '.method onKeyGesture(IJ)V\n    .locals 1\n    return-void\n.end method\n')
        with self.assertRaises(FEATURES.PatchError):
            FEATURES._power(text)

    def test_missing_selected_target_does_not_partially_write(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            paths = mw_fixture(root)
            before = [path.read_bytes() for path in paths]
            with self.assertRaises(FEATURES.PatchError):
                FEATURES.patch_decoded(root, ["multi_window", "power_button_remap"])
            self.assertEqual(before, [path.read_bytes() for path in paths])

    def test_annotation_and_parameter_alias_safety(self):
        method = '.method public test(Ljava/lang/Object;)V\n    .locals 0\n    .param p1, "value"\n    .annotation runtime Lfixture/A;\n        value = "test"\n    .end annotation\n    return-void\n.end method'
        updated = FEATURES._entry(method, "    nop", 2)
        self.assertIn(".locals 1", updated)
        self.assertIn(".end annotation\n    nop\n    return-void", updated)
        with self.assertRaises(FEATURES.PatchError):
            FEATURES._entry(method.replace("return-void", "move-object v0, p0\n    return-void"), "    nop", 2)

    def test_framework_imports_only_selected_bridge_once(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            first = FEATURES.install_framework_bridges(root, ["multi_window"])
            self.assertEqual(first["importedSmali"], 1)
            self.assertEqual([p.name for p in root.rglob("*.smali")], ["WukongMultiWindowBridge.smali"])
            self.assertEqual(FEATURES.install_framework_bridges(root, ["multi_window"])["importedSmali"], 0)

    def test_selection_round_trip_and_reject_unknown(self):
        self.assertIsNone(normalize_patches(None))
        self.assertEqual(normalize_patches([]), [])
        for selected in ([], ["multi_window"], ["power_button_remap"], list(FEATURES.BRIDGES)):
            parsed = BuildOptions.from_dict({"wkManagerPatches": selected})
            self.assertEqual(parsed.to_dict()["wkManagerPatches"], selected)
        for invalid in ("multi_window", [True], ["invalid"]):
            with self.assertRaises(RecipeValidationError):
                BuildOptions.from_dict({"wkManagerPatches": invalid})

    def test_explicit_selection_does_not_run_legacy_patchers(self):
        import studio_core
        with tempfile.TemporaryDirectory() as tmp:
            with patch.object(studio_core, "_patch_jar_with_apktool", return_value={}) as rebuild:
                studio_core._patch_wk_manager_jars(Path(tmp), Path(tmp), selected_patches=["multi_window"])
                self.assertEqual([call.args[0].name for call in rebuild.call_args_list], ["framework.jar", "oplus-services.jar"])
            with patch.object(studio_core, "_patch_jar_with_apktool") as rebuild:
                self.assertEqual(studio_core._patch_wk_manager_jars(Path(tmp), Path(tmp), selected_patches=[]), [])
                rebuild.assert_not_called()

    def test_build_fingerprint_tracks_patch_selection(self):
        from studio_core import BuildSpec, build_spec_fingerprint, _spec_payload
        first = BuildSpec(romPath="fixture.zip", wkManagerPatches=["multi_window"])
        second = BuildSpec(romPath="fixture.zip", wkManagerPatches=["power_button_remap"])
        self.assertNotEqual(build_spec_fingerprint(first), build_spec_fingerprint(second))
        self.assertEqual(_spec_payload(first)["wkManagerPatches"], ["multi_window"])

    def test_new_bridge_dex_is_stored_when_jar_is_repacked(self):
        from studio_core import _preserve_zip_entry_attributes
        with tempfile.TemporaryDirectory() as tmp:
            original, rebuilt = Path(tmp) / "original.jar", Path(tmp) / "rebuilt.jar"
            with zipfile.ZipFile(original, "w") as archive:
                archive.writestr("classes.dex", b"stock", compress_type=zipfile.ZIP_STORED)
            with zipfile.ZipFile(rebuilt, "w") as archive:
                archive.writestr("classes.dex", b"patched")
                archive.writestr("classes2.dex", b"bridges", compress_type=zipfile.ZIP_DEFLATED)
            _preserve_zip_entry_attributes(original, rebuilt)
            with zipfile.ZipFile(original) as archive:
                self.assertEqual(archive.getinfo("classes2.dex").compress_type, zipfile.ZIP_STORED)


    def test_all_ten_features_valid_and_distinct(self):
        self.assertEqual(len(FEATURES.FEATURES), 10)
        self.assertEqual(len(set(FEATURES.FEATURES)), 10)
        normalized = normalize_patches(list(FEATURES.FEATURES))
        self.assertEqual(normalized, list(FEATURES.FEATURES))

    def test_routing_matrix_for_selected_features(self):
        import studio_core
        cases = [
            (["keybox_manager"], ["framework.jar"]),
            (["kernel_manager"], ["framework.jar", "services.jar"]),
            (["disable_flag_secure"], ["framework.jar", "services.jar", "oplus-services.jar"]),
            (["multi_window"], ["framework.jar", "oplus-services.jar"]),
            (["hma_privacy_spoof"], ["framework.jar", "services.jar"]),
        ]
        for patches, expected_jars in cases:
            with self.subTest(patches=patches), tempfile.TemporaryDirectory() as tmp:
                with patch.object(studio_core, "_patch_jar_with_apktool", return_value={}) as rebuild:
                    studio_core._patch_wk_manager_jars(Path(tmp), Path(tmp), selected_patches=patches)
                    self.assertEqual([call.args[0].name for call in rebuild.call_args_list], expected_jars)


if __name__ == "__main__":
    unittest.main()
