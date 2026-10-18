import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


class DesktopScriptTests(unittest.TestCase):
    def test_runtime_never_overwrites_stark_policy_from_config(self):
        content = (ROOT / 'desktop/Scripts/build-runtime.ps1').read_text(encoding='utf-8')
        self.assertNotIn('$trackedWkPolicy', content)
        self.assertIn("Copy-Tree (Join-Path $source 'STARK')", content)
        self.assertIn("Assert-FileHashMatch $sourceWkPolicy $contentWkPolicy", content)

    def test_publish_rejects_legacy_catalog_that_can_restore_old_stark(self):
        content = (ROOT / 'desktop/Scripts/publish.ps1').read_text(encoding='utf-8')
        self.assertIn("'https://github.com/*/releases/download/*'", content)
        self.assertIn("$starkSourceProperty.Value -ne 'git'", content)
        self.assertLess(content.index('Installer catalog is stale'), content.index('$manifestFiles ='))

    def test_script_path_defaults_are_resolved_after_parameter_binding(self):
        for relative_path in (
            "desktop/Scripts/publish.ps1",
            "desktop/Scripts/build-runtime.ps1",
            "desktop/Scripts/build-all-content-packs.ps1",
        ):
            content = (ROOT / relative_path).read_text(encoding="utf-8")
            parameter_block = content.split("\n)\n", 1)[0]
            self.assertNotIn(
                "$PSScriptRoot",
                parameter_block,
                f"{relative_path} evaluates PSScriptRoot before parameter binding completes",
            )

    def test_windows_installer_stages_only_the_windows_toolchain(self):
        content = (ROOT / "desktop/Scripts/build-runtime.ps1").read_text(encoding="utf-8")
        self.assertIn("Copy-Tree (Join-Path $source 'bin\\Windows')", content)
        self.assertNotIn("Copy-Tree (Join-Path $source 'bin')", content)

    def test_runtime_stages_and_checks_archive_fallback_independent_of_content(self):
        content = (ROOT / 'desktop/Scripts/build-runtime.ps1').read_text(encoding='utf-8')
        self.assertIn("'STARK\\patch_common.py'", content)
        self.assertIn("'stark_patch_common.py'", content)
        self.assertIn('Assert-FileHashMatch', content)
        self.assertIn('missing-content', content)
        self.assertIn('smali.jar', content)

    def test_publish_python_test_list_keeps_every_module_in_one_command(self):
        content = (ROOT / "desktop/Scripts/publish.ps1").read_text(encoding="utf-8")
        command = content.split('& python -m unittest -q', 1)[1].split('if ($LASTEXITCODE', 1)[0]
        lines = command.strip().splitlines()
        for line in lines[:-1]:
            self.assertTrue(line.rstrip().endswith('`'), f'Broken PowerShell continuation: {line}')
        for module in ('tests.test_wk_manager_patcher', 'tests.test_wk_manager_features',
                       'tests.test_stark_archive', 'tests.test_wukong_hybrid'):
            self.assertIn(module, command)

    def test_content_sync_preview_does_not_create_a_persistent_index(self):
        content = (
            ROOT / "desktop/WukongStudio.App/NativeStudioView.xaml.cs"
        ).read_text(encoding="utf-8")
        self.assertIn('target == "preview" && !File.Exists(index)', content)
        self.assertIn("effectiveIndex = templateIndex;", content)
        self.assertIn("startInfo.ArgumentList.Add(effectiveIndex);", content)


if __name__ == "__main__":
    unittest.main()
