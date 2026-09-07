import tempfile
import unittest
from pathlib import Path

import wk_manager_patcher


class WkManagerPatcherTests(unittest.TestCase):
    @staticmethod
    def _write_method(root: Path, class_name: str, signature: str, directive: str) -> None:
        path = root / "smali" / Path(*class_name.split("."))
        path = path.with_suffix(".smali")
        path.parent.mkdir(parents=True, exist_ok=True)
        method_name = signature.split("(", 1)[0]
        register_line = "" if directive.startswith(".registers") else "    .registers 2\n"
        path.write_text(
            ".class public Lfixture/Target;\n"
            f".method public {method_name}{signature[len(method_name):]}\n"
            f"{register_line}"
            f"    {directive}\n"
            "    const/4 v0, 0x1\n"
            "    return v0\n"
            ".end method\n",
            encoding="utf-8",
        )

    def test_disable_flag_secure_patchers_replace_guide_methods_and_are_idempotent(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            services = [
                ("com.android.server.devicepolicy.DevicePolicyCacheImpl", "isScreenCaptureAllowed(I)Z", '.param p1, "userHandle"  # I'),
                ("com.android.server.devicepolicy.DevicePolicyManagerService", "getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z", '.param p3, "parent"  # Z'),
                ("com.android.server.wm.DisplayContent", "hasSecureWindowOnScreen()Z", ".registers 2"),
                ("com.android.server.wm.WindowManagerService", "notifyScreenshotListeners(I)Ljava/util/List;", ".end annotation"),
                ("com.android.server.wm.WindowState", "isSecureLocked()Z", ".registers 2"),
            ]
            for class_name, signature, directive in services:
                self._write_method(root, class_name, signature, directive)
            first = wk_manager_patcher.patch_disable_flag_secure_services_decoded(root)
            second = wk_manager_patcher.patch_disable_flag_secure_services_decoded(root)
            self.assertEqual(first["patchedMethods"], 5)
            self.assertEqual(second["patchedMethods"], 0)
            self.assertIn(wk_manager_patcher.DISABLE_FLAG_SECURE_MARKER, "\n".join(p.read_text(encoding="utf-8") for p in root.rglob("*.smali")))

            oplus = tempfile.TemporaryDirectory()
            try:
                oplus_root = Path(oplus.name)
                oplus_methods = [
                    ("com.android.server.wm.IOplusWindowManagerServiceEx", "dumpWindowsForScreenShot(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z", '.param p3, "args"  # [Ljava/lang/String;'),
                    ("com.android.server.wm.OplusLongshotMainWindow", "hasSecure()Z", ".registers 2"),
                    ("com.android.server.wm.OplusWindowDumpUtils", "isSecureWindow(Lcom/android/server/wm/WindowState;)Z", '.param p1, "w"  # Lcom/android/server/wm/WindowState;'),
                    ("com.android.server.wm.OplusWindowManagerServiceEx", "dumpWindowsForScreenShot(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z", '.param p3, "args"  # [Ljava/lang/String;'),
                ]
                for class_name, signature, directive in oplus_methods:
                    self._write_method(oplus_root, class_name, signature, directive)
                self.assertEqual(wk_manager_patcher.patch_disable_flag_secure_oplus_services_decoded(oplus_root)["patchedMethods"], 4)
            finally:
                oplus.cleanup()
    def test_smali_anchor_preserves_instruction_indentation(self):
        self.assertEqual(
            wk_manager_patcher._smali_anchor(
                """
                    invoke-static {}, Lfixture/Hook;->run()V

                    return-void
                """
            ),
            "    invoke-static {}, Lfixture/Hook;->run()V\n\n    return-void",
        )

    def test_trace_return_hook_allows_line_metadata(self):
        method = (
            "    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V\n"
            "\n"
            "    .line 42\n"
            "    return-object v3"
        )
        patched = wk_manager_patcher._insert_before_return_after_trace(
            method,
            "v1, v2",
            "v3",
            "    invoke-static {v3}, Lfixture/Hook;->run(Ljava/lang/Object;)V",
            "fixture",
        )
        self.assertIn(".line 42\n\n    invoke-static {v3}", patched)
        self.assertTrue(patched.endswith("    return-object v3"))

    def test_add_local_registers_supports_locals_and_registers(self):
        locals_method, locals_base = wk_manager_patcher._add_local_registers(
            ".method test()V\n    .locals 2\n    return-void\n.end method",
            3,
            parameter_words=1,
        )
        self.assertIn(".locals 5", locals_method)
        self.assertEqual(locals_base, 2)

        registers_method, registers_base = wk_manager_patcher._add_local_registers(
            ".method test()V\n    .registers 4\n    return-void\n.end method",
            2,
            parameter_words=1,
        )
        self.assertIn(".registers 6", registers_method)
        self.assertEqual(registers_base, 3)

    def test_edit_method_is_idempotent_and_fails_on_missing_anchor(self):
        with tempfile.TemporaryDirectory() as temp:
            decoded = Path(temp)
            smali = decoded / "smali" / "fixture" / "Target.smali"
            smali.parent.mkdir(parents=True)
            smali.write_text(
                ".class public Lfixture/Target;\n"
                ".method public test()V\n"
                "    .registers 1\n"
                "    return-void\n"
                ".end method\n",
                encoding="utf-8",
            )
            changed = wk_manager_patcher._patch_before(
                decoded,
                "fixture.Target",
                "test()V",
                "    return-void",
                "    invoke-static {}, Lfixture/Hook;->run()V",
                "Lfixture/Hook;->run",
            )
            self.assertTrue(changed)
            self.assertFalse(
                wk_manager_patcher._patch_before(
                    decoded,
                    "fixture.Target",
                    "test()V",
                    "    return-void",
                    "    invoke-static {}, Lfixture/Hook;->run()V",
                    "Lfixture/Hook;->run",
                )
            )
            with self.assertRaisesRegex(wk_manager_patcher.WkManagerPatchError, "expected one anchor"):
                wk_manager_patcher._patch_before(
                    decoded,
                    "fixture.Target",
                    "test()V",
                    "    missing-anchor",
                    "    nop",
                    "missing-marker",
                )

    def test_copy_stark_smali_targets_classes6(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            decoded = root / "decoded"
            stark = root / "STARK"
            source = stark / "com" / "wukong" / "manager" / "Hook.smali"
            source.parent.mkdir(parents=True)
            source.write_text(".class public Lcom/wukong/manager/Hook;\n", encoding="utf-8")
            self.assertEqual(wk_manager_patcher._copy_stark_smali(decoded, stark), 1)
            target = decoded / "smali_classes6" / "com" / "wukong" / "manager" / "Hook.smali"
            self.assertEqual(target.read_text(encoding="utf-8"), source.read_text(encoding="utf-8"))
            self.assertEqual(wk_manager_patcher._copy_stark_smali(decoded, stark), 0)


if __name__ == "__main__":
    unittest.main()
