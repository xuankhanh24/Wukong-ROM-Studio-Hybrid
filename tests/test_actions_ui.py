from __future__ import annotations

import io
import tempfile
import unittest
from contextlib import redirect_stdout
from pathlib import Path

from wukong.actions_ui import GitHubActionsUI, STAGE_TITLES
from wukong.models import ArtifactRecord, BuildRecipe, Identity, JobManifest, JobStatus


ROOT = Path(__file__).resolve().parents[1]


class GitHubActionsUITests(unittest.TestCase):
    def test_transfer_summary_preserves_last_speed_and_deduplicates_provider_aliases(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'summary.md'
            ui = GitHubActionsUI(enabled=True, summary_path=path)
            with redirect_stdout(io.StringIO()):
                ui.event({'type': 'upload_progress', 'provider': 'Google Drive', 'fileName': 'rom.zip',
                          'bytes': 50, 'totalBytes': 100, 'percent': 50, 'speedBytesPerSecond': 10})
                ui.event({'type': 'upload_progress', 'provider': 'gdrive', 'fileName': 'rom.zip',
                          'bytes': 100, 'totalBytes': 100, 'percent': 100, 'etaSeconds': 0, 'status': 'complete'})
                ui.write_transfer_summary()
            summary = path.read_text(encoding='utf-8')
            self.assertEqual(summary.count('| UPLOAD | Google Drive | rom.zip |'), 1)
            self.assertIn('100.0%', summary)
            self.assertIn('10.00 B/s', summary)

    def test_transfer_names_are_redacted_and_cannot_inject_workflow_commands(self):
        ui = GitHubActionsUI(enabled=True)
        output = io.StringIO()
        with redirect_stdout(output):
            ui.event({'type': 'download_progress',
                      'fileName': 'https://example.test/rom.zip?token=never-print-this-123\n::error::injected',
                      'bytes': 10, 'percent': None, 'totalBytes': None})
        self.assertNotIn('never-print-this-123', output.getvalue())
        self.assertFalse(any(line.startswith('::error') for line in output.getvalue().splitlines()))

    def test_each_mod_has_a_flat_collapsible_group_and_failure_keeps_its_context(self):
        ui = GitHubActionsUI(enabled=True)
        output = io.StringIO()
        with redirect_stdout(output):
            for index, name in enumerate(('Camera_mod', 'Launcher_mod'), 1):
                ui.event({'type': 'step', 'step': 'apply_mod', 'status': 'running',
                          'message': f'MOD {index}/2 · {name}', 'details': {'phase': 'Plus'}})
            ui.failure('apply_mod', 'fixture failure')
        lines = output.getvalue().splitlines()
        depth = 0
        for line in lines:
            if line.startswith('::group::'):
                depth += 1
                self.assertEqual(depth, 1, 'GitHub groups must not nest')
            elif line == '::endgroup::':
                depth -= 1
        self.assertEqual(depth, 0)
        self.assertIn('::group::10 · Plus · MOD 2/2 · Launcher_mod', output.getvalue())
        self.assertIn('Operation: MOD 2/2 · Launcher_mod', output.getvalue())

    def test_progress_is_throttled_but_completion_and_other_files_are_not_hidden(self):
        from unittest.mock import patch
        ui = GitHubActionsUI(enabled=True)
        output = io.StringIO()
        with redirect_stdout(output), patch('wukong.actions_ui.time.monotonic', return_value=10):
            for percent in (0, 10, 20, 100):
                ui.event({'type': 'upload_progress', 'fileName': 'rom.zip', 'bytes': percent,
                          'totalBytes': 100, 'percent': percent})
            ui.event({'type': 'upload_progress', 'fileName': 'other.zip', 'bytes': 1, 'totalBytes': 100, 'percent': 1})
        self.assertEqual(output.getvalue().count('[UPLOAD]'), 3)
        self.assertIn('100.0%', output.getvalue())

    def test_upload_and_download_logs_show_percent_speed_size_eta_without_secrets(self):
        reporter = GitHubActionsUI(enabled=True)
        output = io.StringIO()
        with redirect_stdout(output):
            for direction in ('download', 'upload'):
                reporter.event({'type': direction + '_progress', 'stage': direction,
                    'fileName': 'rom.zip', 'bytes': 512 * 1024**2, 'totalBytes': 1024**3,
                    'percent': 50, 'speedBytesPerSecond': 8 * 1024**2, 'etaSeconds': 64})
        rendered = output.getvalue()
        for text in ('DOWNLOAD', 'UPLOAD', '50.0%', '512.00 MiB', '1.00 GiB', '8.00 MiB/s', '01:04'):
            self.assertIn(text, rendered)

    def test_failure_is_visible_outside_collapsed_group_and_in_summary(self):
        recipe = BuildRecipe.from_dict({
            'schemaVersion': 1, 'task': 'source_mirror', 'device': 'PKG110',
            'source': {'kind': 'https', 'uri': 'https://example.test/rom.zip'},
        })
        error = 'Hasselblad_filter / patch_hasselblad.py: OSError: Invalid cross-device link'
        manifest = JobManifest(job_id='failed-job', owner=Identity('actions', '1', 'user'),
                               recipe_digest=recipe.digest, status=JobStatus.FAILED, error=error)
        with tempfile.TemporaryDirectory() as directory:
            summary_path = Path(directory, 'summary.md')
            ui = GitHubActionsUI(enabled=True, summary_path=summary_path)
            output = io.StringIO()
            with redirect_stdout(output):
                ui.begin('apply_mod')
                ui.event({'type': 'step', 'step': 'apply_mod', 'status': 'running',
                          'message': 'MOD 18/19 · Hasselblad_filter'})
                ui.event({'type': 'step', 'step': 'apply_mod', 'status': 'failed', 'message': error})
                ui.write_summary(manifest, recipe)
            rendered = output.getvalue()
            self.assertLess(rendered.index('::endgroup::'), rendered.index('::error'))
            self.assertIn('[FAILED]', rendered)
            summary = summary_path.read_text(encoding='utf-8')
            self.assertIn('apply_mod', summary)
            self.assertIn('build.log', summary)
            self.assertIn('MOD 18/19 · Hasselblad_filter', summary)
            self.assertIn(error, summary)

    def test_pipeline_events_emit_bilingual_groups_and_completion_notice(self) -> None:
        reporter = GitHubActionsUI(enabled=True)
        output = io.StringIO()

        with redirect_stdout(output):
            reporter.event({"type": "step", "step": "extract_payload", "status": "running"})
            reporter.event(
                {
                    "type": "step",
                    "step": "extract_payload",
                    "status": "success",
                    "details": {"durationSeconds": 12.5},
                }
            )

        rendered = output.getvalue()
        self.assertIn(f"::group::{STAGE_TITLES['extract_payload']}", rendered)
        self.assertIn("Hoàn thành / Completed · 12.5s", rendered)
        self.assertIn("::endgroup::", rendered)

    def test_debloat_completion_lists_removed_and_missing_targets(self) -> None:
        reporter = GitHubActionsUI(enabled=True)
        output = io.StringIO()

        with redirect_stdout(output):
            reporter.event({"type": "step", "step": "debloat", "status": "running"})
            reporter.event(
                {
                    "type": "step",
                    "step": "debloat",
                    "status": "success",
                    "details": {
                        "deleted": 1,
                        "skipped": 1,
                        "deletedPaths": [r"my_stock\app\Browser"],
                        "skippedPaths": [r"my_stock\app\Missing"],
                    },
                }
            )

        rendered = output.getvalue()
        self.assertIn("Đã xóa / Removed: 1", rendered)
        self.assertIn(r"[removed] my_stock\app\Browser", rendered)
        self.assertIn(r"[not found] my_stock\app\Missing", rendered)

    def test_terminal_summary_contains_recipe_and_artifact_integrity(self) -> None:
        recipe = BuildRecipe.from_dict(
            {
                "schemaVersion": 1,
                "task": "source_mirror",
                "device": "PKG110",
                "source": {"kind": "https", "uri": "https://example.test/rom.zip"},
                "execution": {"target": "github-auto"},
            }
        )
        manifest = JobManifest(
            job_id="job-1",
            owner=Identity("actions", "1", "user"),
            recipe_digest=recipe.digest,
            status=JobStatus.SUCCEEDED,
            runner="github-hosted",
            artifacts=[ArtifactRecord("rom.zip", "drive:path", "a" * 64, 123)],
        )
        with tempfile.TemporaryDirectory() as root:
            path = Path(root, "summary.md")
            GitHubActionsUI(enabled=True, summary_path=path).write_summary(manifest, recipe)
            summary = path.read_text(encoding="utf-8")

        self.assertIn("Wukong ROM Studio", summary)
        self.assertIn("PKG110", summary)
        self.assertIn("github-hosted", summary)
        self.assertIn("a" * 64, summary)
        self.assertIn("123 B", summary)

    def test_build_summary_lists_mod_parameters_and_stage_timings(self) -> None:
        recipe = BuildRecipe.from_dict(
            {
                "schemaVersion": 1,
                "task": "build",
                "device": "PKG110",
                "source": {"kind": "https", "uri": "https://example.test/rom.zip"},
                "build": {
                    "preset": "plus",
                    "modVersion": "ColorOS_16.0.9",
                    "mods": ["Fix_noti", "WK_Manager"],
                    "enabledSteps": ["extract_payload", "package_zip"],
                    "debloatPaths": ["system/app/Demo"],
                },
            }
        )
        manifest = JobManifest(
            job_id="job-build",
            owner=Identity("actions", "1", "user"),
            recipe_digest=recipe.digest,
            status=JobStatus.SUCCEEDED,
        )
        with tempfile.TemporaryDirectory() as root:
            path = Path(root, "summary.md")
            reporter = GitHubActionsUI(enabled=True, summary_path=path)
            reporter.event(
                {
                    "type": "step",
                    "step": "extract_payload",
                    "status": "success",
                    "details": {"durationSeconds": 42.25},
                }
            )
            reporter.write_summary(manifest, recipe)
            summary = path.read_text(encoding="utf-8")

        self.assertIn("Fix_noti, WK_Manager", summary)
        self.assertIn("ColorOS_16.0.9", summary)
        self.assertIn("extract_payload, package_zip", summary)
        self.assertIn("42.2", summary)

    def test_workflow_exposes_numbered_jobs_and_step_summary(self) -> None:
        workflow = (ROOT / ".github" / "workflows" / "wukong-build.yml").read_text(
            encoding="utf-8"
        )
        action = (ROOT / ".github" / "actions" / "run-hybrid" / "action.yml").read_text(
            encoding="utf-8"
        )

        self.assertIn("01–02 · Kiểm tra recipe & chọn runner", workflow)
        self.assertIn("03–19 · Build trên GitHub Hosted", workflow)
        self.assertIn("if: always()", workflow)
        self.assertIn("python -m tools.actions_control_plane terminal", workflow)
        self.assertIn("--pre-executor-failure", workflow)
        self.assertIn(
            "CALLBACK_SECRET: ${{ secrets.WUKONG_ACTIONS_CALLBACK_SECRET }}",
            workflow,
        )
        self.assertIn("HOSTED_EXECUTOR_STARTED", workflow)
        self.assertIn("SELF_HOSTED_EXECUTOR_STARTED", workflow)
        self.assertIn("value: ${{ steps.execute.outputs.executor_started }}", action)
        self.assertIn("recipe_b64: ${{ steps.route.outputs.recipe_b64 }}", workflow)
        self.assertIn("recipe_b64: ${{ needs.route.outputs.recipe_b64 }}", workflow)
        self.assertIn("printf '%s' \"$RECIPE_B64\" | base64 --decode", action)
        self.assertNotIn("rclone copyto .wkstudio/recipe.json", workflow)
        self.assertNotIn("CALLBACK_SECRET: ${{ github.token }}", workflow)
        self.assertIn("GITHUB_STEP_SUMMARY", workflow)
        self.assertIn("Build ROM · mở để xem công đoạn 05–19", action)
        self.assertIn(
            "python3 -m tools.merge_source_probe --recipe .wkstudio/recipe.json --probe .wkstudio/source-probe.json",
            action,
        )
        self.assertLess(
            action.index("python3 -m tools.merge_source_probe"),
            action.index('submit --recipe .wkstudio/recipe.json'),
        )
        self.assertIn("Terminal notification deferred to the always-on control plane", (ROOT / "studio_core.py").read_text(encoding="utf-8"))
        self.assertNotIn("${{ secrets.WUKONG_TELEGRAM_BOT_TOKEN }}", workflow)

    def test_hosted_workflow_preserves_and_checks_root_disk_space(self) -> None:
        workflow = (ROOT / ".github" / "workflows" / "wukong-build.yml").read_text(
            encoding="utf-8"
        )

        self.assertIn("root-reserve-mb: 12288", workflow)
        self.assertIn("temp-reserve-mb: 8192", workflow)
        self.assertIn("/mnt shares the root filesystem", workflow)
        self.assertIn("04.1 · Kiểm tra dung lượng runner / Verify runner disk split", workflow)
        self.assertIn("--root-path /", workflow)
        self.assertIn("--min-root-disk-gib 4", workflow)
        self.assertIn("--min-disk-gib 70", workflow)

    def test_hybrid_action_keeps_terminal_manifest_in_transfer_directory(self) -> None:
        workflow = (ROOT / ".github" / "workflows" / "wukong-build.yml").read_text(
            encoding="utf-8"
        )
        action = (ROOT / ".github" / "actions" / "run-hybrid" / "action.yml").read_text(
            encoding="utf-8"
        )

        jobs_root = ".wkstudio/Jobs/hybrid"
        self.assertEqual(action.count(f"WUKONG_ACTIONS_JOBS_ROOT={jobs_root}"), 1)
        self.assertEqual(
            action.count('--jobs-root "$WUKONG_ACTIONS_JOBS_ROOT"'),
            5,
            "submit, checkpoint pull, progress, execute and terminal sync must share one job store",
        )
        self.assertIn(f"{jobs_root}/${{{{ inputs.job_id }}}}/manifest.json", workflow)
        self.assertIn(f"{jobs_root}/${{{{ inputs.job_id }}}}/events.jsonl", workflow)
        self.assertIn(f'manifest="{jobs_root}/$WUKONG_JOB_ID/manifest.json"', workflow)
        self.assertIn(f'events="{jobs_root}/$WUKONG_JOB_ID/events.jsonl"', workflow)

    def test_plain_progress_messages_are_not_command_escaped(self) -> None:
        reporter = GitHubActionsUI(enabled=True)
        output = io.StringIO()

        with redirect_stdout(output):
            reporter.event(
                {
                    "type": "step",
                    "step": "package_zip",
                    "status": "running",
                    "message": "ZIP 42%",
                }
            )
            reporter.close_group()

        self.assertIn("ZIP 42%", output.getvalue())
        self.assertNotIn("ZIP 42%25", output.getvalue())


if __name__ == "__main__":
    unittest.main()
