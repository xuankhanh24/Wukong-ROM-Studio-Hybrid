from __future__ import annotations

import os
import sys
import math
import time
from pathlib import Path
from typing import Any, Mapping

from .models import BuildRecipe, JobManifest, preset_edition_label


STAGE_TITLES: Mapping[str, str] = {
    "preflight": "01 · Kiểm tra recipe / Recipe preflight",
    "route": "02 · Chọn runner / Route runner",
    "workspace": "03 · Chuẩn bị dung lượng / Prepare workspace",
    "content": "04 · Tải content-pack / Fetch private content",
    "download": "05 · Resolve & tải ROM / Resolve source download",
    "inspect_rom": "06 · Kiểm tra ROM / Inspect source ROM",
    "extract_payload": "07 · Tách payload / Extract payload",
    "unpack_partitions": "08 · Giải nén partition / Unpack partitions",
    "debloat": "09 · Gỡ ứng dụng thừa / Remove bloatware",
    "apply_mod": "10 · Áp dụng MOD / Apply MODs",
    "sync_configs": "11 · Đồng bộ metadata / Sync fs_config & SELinux",
    "repack_partitions": "12 · Đóng gói partition / Repack partitions",
    "repack_super": "13 · Tạo super.img / Build super image",
    "patch_vbmeta": "14 · Vá vbmeta / Patch vbmeta",
    "patch_vendor_boot": "15 · Vá vendor_boot / Patch vendor_boot",
    "package_zip": "16 · Đóng gói ZIP / Package flashable ZIP",
    "notify_telegram": "17 · Báo Telegram / Send notification",
    "upload": "18 · Tải lên ROM / Upload artifacts",
    "complete": "19 · Checksum & link / Publish result",
}


def _command_text(value: object) -> str:
    return str(value).replace("%", "%25").replace("\r", "%0D").replace("\n", "%0A")


def _emit(value: object) -> None:
    """Write annotations without letting a legacy Windows code page fail a job."""
    rendered = str(value)
    try:
        print(rendered, flush=True)
    except UnicodeEncodeError:
        encoding = getattr(sys.stdout, "encoding", None) or "ascii"
        print(rendered.encode(encoding, errors="replace").decode(encoding), flush=True)


def _number(value):
    try:
        result = float(value)
        return result if math.isfinite(result) and result >= 0 else None
    except (ValueError, TypeError):
        return None


def _size(value):
    amount = _number(value)
    if amount is None:
        return '--'
    for unit in ('B', 'KiB', 'MiB', 'GiB', 'TiB'):
        if amount < 1024 or unit == 'TiB':
            return f'{amount:.2f} {unit}'
        amount /= 1024


def _eta(value):
    seconds = _number(value)
    if seconds is None:
        return '--:--'
    minutes, seconds = divmod(int(seconds), 60)
    hours, minutes = divmod(minutes, 60)
    return f'{hours:02}:{minutes:02}:{seconds:02}' if hours else f'{minutes:02}:{seconds:02}'


def _safe_text(value):
    from .build_logging import LogRedactor
    return LogRedactor()(str(value)).replace('\r', ' ').replace('\n', ' ').replace('|', '\\|')


def _selection(values):
    return 'mặc định / default' if values is None else ', '.join(values) if values else 'Không chọn / None'


class GitHubActionsUI:
    """Emit GitHub-native stage groups and a durable run summary.

    This adapter is intentionally presentation-only. Job state remains owned by
    the orchestrator and the same executor is used outside GitHub Actions.
    """

    def __init__(self, *, enabled: bool | None = None, summary_path: Path | None = None) -> None:
        self.enabled = (
            os.environ.get("GITHUB_ACTIONS", "").casefold() == "true"
            if enabled is None
            else enabled
        )
        raw_summary = os.environ.get("GITHUB_STEP_SUMMARY", "")
        self.summary_path = summary_path or (Path(raw_summary) if raw_summary else None)
        self._active_stage: str | None = None
        self._stage_results: list[tuple[str, float, Mapping[str, Any]]] = []
        self._failed_stage: str | None = None
        self._stage_message = ''
        self._failed_context = ''
        self._started_at = None
        self._transfers = {}
        self._transfer_emitted = {}
        self._warnings = []
        self._operation_group = None
        self._phase = None
        self._stage_progress_at = {}

    def begin(self, stage: str) -> None:
        if not self.enabled or stage == self._active_stage:
            return
        self.close_group()
        title = STAGE_TITLES.get(stage, stage.replace("_", " ").title())
        _emit(f"::group::{title}")
        self._active_stage = stage
        self._started_at = time.monotonic()
        self._stage_message = ''
        self._operation_group = None
        self._phase = None
        _emit(f'[START] {title}')

    def transfer(self, event: Mapping[str, Any]) -> None:
        if not self.enabled:
            return
        direction = 'DOWNLOAD' if event.get('type') == 'download_progress' else 'UPLOAD'
        name = _safe_text(event.get('fileName') or event.get('packId') or 'ROM')
        if event.get('status') == 'verifying':
            _emit(f'[VERIFY] {name} · Kiểm tra SHA-256 / Verifying checksum')
            return
        if event.get('status') == 'retrying':
            reason = f"HTTP {event['httpStatus']}" if event.get('httpStatus') else event.get('error', 'transport error')
            _emit(f"[{direction} RETRY] {name} · lần {event.get('attempt')}/{event.get('attempts')} · "
                  f"chờ {event.get('retryAfterSeconds')}s · {_safe_text(reason)}")
            return
        provider = str(event.get('provider') or ('HTTPS' if direction == 'DOWNLOAD' else 'Google Drive'))
        provider = _safe_text({'gdrive': 'Google Drive', 'dccloud': 'DC Cloud', 'https': 'HTTPS',
                               'http': 'HTTP'}.get(provider.casefold(), provider))
        key = (direction, provider, name)
        values = {**self._transfers.get(key, {}), **event}
        event = values
        self._transfers[key] = values
        now = time.monotonic()
        percent = _number(event.get('percent'))
        complete = event.get('status') == 'complete'
        previous = self._transfer_emitted.get(key)
        terminal = complete or percent is not None and percent >= 100
        if previous and terminal and previous[1] == event.get('bytes') and previous[2]:
            return
        if previous and not terminal and now - previous[0] < 5:
            return
        self._transfer_emitted[key] = (now, event.get('bytes'), terminal)
        label = f'{min(100, percent):5.1f}%' if percent is not None else ' --.-%'
        filled = min(20, int((percent or 0) / 5))
        bar = '#' * filled + '-' * (20 - filled) if percent is not None else '?' * 20
        speed = _size(event.get('speedBytesPerSecond'))
        index = f" [{event['fileIndex']}/{event.get('fileCount', '?')}]" if event.get('fileIndex') else ''
        _emit(f'[{direction}]{index} {provider} · {name} | [{bar}] {label} | '
              f"{_size(event.get('bytes'))} / {_size(event.get('totalBytes'))} | {speed}/s | ETA {_eta(event.get('etaSeconds'))}")

    def event(self, event: Mapping[str, Any]) -> None:
        if not self.enabled:
            return
        if event.get('type') in {'upload_progress', 'download_progress'}:
            self.transfer(event)
            return
        if event.get('type') == 'warning':
            message = _safe_text(event.get('message') or event.get('warning') or 'Warning')
            if len(message) > 2000:
                message = message[:2000] + ' … (chi tiết trong build.log)'
            self._warnings.append(message)
            _emit(f'::warning::{_command_text(message)}')
            return
        if str(event.get('type') or '') != 'step':
            return
        stage = str(event.get("step") or "build")
        status = str(event.get("status") or "")
        if status == "running":
            self.begin(stage)
            details = event.get('details') if isinstance(event.get('details'), Mapping) else {}
            if details.get('phase'):
                self._phase = _safe_text(details['phase'])
            message = event.get("message")
            if message:
                self._stage_message = str(message)
                if stage == 'apply_mod' and str(message).startswith('MOD ') and message != self._operation_group:
                    started = self._started_at
                    self.close_group()
                    phase = f'{self._phase} · ' if self._phase else ''
                    _emit(f'::group::10 · {phase}{_safe_text(message)}')
                    self._active_stage, self._started_at = stage, started
                    self._operation_group = message
                progress = _number(details.get('progress'))
                if progress is not None and not str(message).startswith('MOD '):
                    key = (stage, self._phase)
                    now = time.monotonic()
                    if key in self._stage_progress_at and now - self._stage_progress_at[key] < 5 and progress < 100:
                        return
                    self._stage_progress_at[key] = now
                _emit(f"[Wukong] {message}")
            return
        title = STAGE_TITLES.get(stage, stage)
        if status == "success":
            details = event.get("details") if isinstance(event.get("details"), Mapping) else {}
            duration = details.get("durationSeconds")
            if duration is None and self._active_stage == stage and self._started_at is not None:
                duration = round(time.monotonic() - self._started_at, 2)
            if isinstance(duration, (int, float)):
                self._stage_results.append((stage, float(duration), dict(details)))
            if stage == "debloat":
                deleted = int(details.get("deleted") or 0)
                skipped = int(details.get("skipped") or 0)
                _emit(
                    "[Wukong] Debloat · "
                    f"Đã xóa / Removed: {deleted} · "
                    f"Không tồn tại / Not found: {skipped}"
                )
                for path in details.get("deletedPaths") or []:
                    _emit(f"  [removed] {path}")
                for path in details.get("skippedPaths") or []:
                    _emit(f"  [not found] {path}")
            suffix = f" · {duration}s" if duration is not None else ""
            if details.get('cacheHit') is True:
                suffix += ' · CACHE HIT'
            warning = str(details.get("warning") or "") if stage == "debloat" else ""
            if warning:
                _emit(f"::warning title={_command_text(title)}::{_command_text(warning)}")
            elif details.get('skipped'):
                _emit(f'[SKIPPED] {title} · Đã bỏ qua / Skipped{suffix}')
            else:
                _emit(f"[Wukong] ✓ {title} · Hoàn thành / Completed{suffix}")
            if stage == 'complete':
                for artifact in details.get('artifacts') or []:
                    _emit(f"[ARTIFACT] {_safe_text(artifact['name'])} · {_size(artifact['sizeBytes'])} · "
                          f"SHA-256: {_safe_text(artifact['sha256'])}")
            self.close_group()
        elif status == "failed":
            message = event.get("message") or "Stage failed"
            self.failure(stage, str(message))

    def failure(self, stage: str, message: str) -> None:
        if not self.enabled or self._failed_stage is not None:
            return
        from .build_logging import LogRedactor
        self._failed_stage = stage
        self._failed_context = LogRedactor()(self._stage_message)
        if self._active_stage == stage and self._started_at is not None:
            self._stage_results.append((stage, time.monotonic() - self._started_at,
                                        {'failed': True, 'phase': self._phase}))
        self.close_group()
        # The concise cause remains visible even with every stage group collapsed.
        message = LogRedactor()(message)
        title = STAGE_TITLES.get(stage, stage)
        context = f"\nThao tác / Operation: {self._failed_context}" if self._failed_context else ''
        _emit(f"[FAILED] {title}{context}\n{message}")
        _emit(f"::error title={_command_text(title)}::{_command_text(message)}")

    def close_group(self) -> None:
        if self.enabled and self._active_stage is not None:
            _emit("::endgroup::")
        self._active_stage = None
        self._started_at = None

    def _transfer_summary_lines(self):
        if not self._transfers:
            return []
        lines = ['', '### Truyền dữ liệu / Transfers', '',
                 '| Hướng | Đích/nguồn | File | Tiến độ | Đã truyền / Tổng | Tốc độ gần nhất | ETA |',
                 '|---|---|---|---:|---:|---:|---:|']
        for (direction, provider, name), transfer in self._transfers.items():
            percent = _number(transfer.get('percent'))
            label = f'{percent:.1f}%' if percent is not None else '--'
            lines.append(f"| {direction} | {provider} | {name} | {label} | {_size(transfer.get('bytes'))} / "
                         f"{_size(transfer.get('totalBytes'))} | {_size(transfer.get('speedBytesPerSecond'))}/s | "
                         f"{_eta(transfer.get('etaSeconds'))} |")
        return lines

    def write_transfer_summary(self):
        if self.enabled and self.summary_path and self._transfers:
            self.summary_path.parent.mkdir(parents=True, exist_ok=True)
            with self.summary_path.open('a', encoding='utf-8', newline='\n') as handle:
                handle.write('\n'.join(self._transfer_summary_lines()) + '\n')

    def write_summary(self, manifest: JobManifest, recipe: BuildRecipe) -> None:
        if not self.enabled or self.summary_path is None:
            return
        self.summary_path.parent.mkdir(parents=True, exist_ok=True)
        mods = list(recipe.build.mods) if recipe.task == "build" else []
        lines = [
            "## Wukong ROM Studio · Kết quả build / Build result",
            "",
            "| Mục / Field | Giá trị / Value |",
            "|---|---|",
            f"| Job | `{manifest.job_id}` |",
            f"| Trạng thái / Status | **{manifest.status.value}** |",
            f"| Thiết bị / Device | `{recipe.device}` |",
            f"| Tác vụ / Task | `{recipe.task}` |",
            f"| Runner | `{manifest.runner or recipe.execution.target}` |",
            f"| Recipe SHA-256 | `{manifest.recipe_digest}` |",
        ]
        if recipe.task == "build":
            mod_list = ", ".join(mods) if mods else "—"
            steps = list(recipe.build.enabled_steps)
            step_list = ", ".join(steps) if steps else "Toàn bộ pipeline / Full pipeline"
            debloat_count = (
                len(recipe.build.debloat_paths)
                if recipe.build.debloat_paths is not None
                else "mặc định / default"
            )
            lines.extend(
                [
                    f"| Nền MOD / MOD pack | `{recipe.build.mod_version}` |",
                    f"| Nhãn phát hành / Release label | `{recipe.build.mod_release_version or '—'}` |",
                    f"| Preset | `{preset_edition_label(recipe.build.preset, recipe.build.edition_labels)}` |",
                    f"| MOD đã chọn / Selected | {len(mods)} |",
                    f"| Danh sách MOD / MOD list | {mod_list} |",
                    f"| Bước build / Build steps | {step_list} |",
                    f"| Debloat paths | {debloat_count} |",
                    f"| Launcher | {'MOD có sẵn / Bundled' if recipe.build.launcher_features is None else 'Patch stock: ' + _selection(recipe.build.launcher_features)} |",
                    f"| Fix_noti | {_selection(recipe.build.fix_noti_features)} |",
                    f"| WK Manager patches | {_selection(recipe.build.wk_manager_patches)} |",
                ]
            )
        if self._stage_results:
            lines.extend(
                [
                    "",
                    "### Thời gian từng giai đoạn / Stage timings",
                    "",
                    "| Giai đoạn / Stage | Kết quả / Result | Giây / Seconds | Cache |",
                    "|---|---|---:|---|",
                ]
            )
            for stage, duration, flags in self._stage_results:
                result = 'Failed' if flags.get('failed') else 'Skipped' if flags.get('skipped') else 'Warning' if flags.get('warning') else 'Done'
                cache = 'HIT' if flags.get('cacheHit') is True else 'MISS' if flags.get('cacheHit') is False else '—'
                phase = ' · ' + _safe_text(flags['phase']) if flags.get('phase') else ''
                lines.append(f"| {STAGE_TITLES.get(stage, stage)}{phase} | {result} | {duration:.1f} | {cache} |")
        lines.extend(self._transfer_summary_lines())
        if self._warnings:
            lines.extend(['', '### Cảnh báo / Warnings', '', *['- ' + message for message in self._warnings[-20:]]])
            if len(self._warnings) > 20:
                lines.extend(['', 'Đầy đủ cảnh báo trong `build.log`; bảng này hiển thị 20 cảnh báo gần nhất.'])
        lines.extend(["", "### Artifact", ""])
        if manifest.artifacts:
            lines.extend(
                [
                    "| File | Kích thước / Size | SHA-256 | Google Drive | DC Cloud mirror |",
                    "|---|---:|---|---|---|",
                ]
            )
            for artifact in manifest.artifacts:
                link = artifact.public_url or artifact.uri
                safe_link = link if str(link).startswith(("https://", "http://")) else "private"
                linked = f"[Mở / Open]({safe_link})" if safe_link != "private" else "Private"
                mirror_links = []
                for mirror in artifact.mirrors:
                    if mirror.provider.casefold() != "dccloud":
                        continue
                    # DC Cloud's browse_url is a folder share, never a file
                    # download. Keep the report link-free; the Mini App
                    # resolves the uploaded ROM file when requested.
                    mirror_links.append(
                        "available (open Mini App)"
                        if mirror.status == "available"
                        else mirror.status
                    )
                lines.append(
                    f"| `{artifact.name}` | {artifact.size_bytes:,} B | `{artifact.sha256}` | {linked} | {', '.join(mirror_links) or '—'} |"
                )
        else:
            lines.append("Chưa có artifact / No artifact was produced.")
        if manifest.error:
            from .build_logging import LogRedactor
            error = LogRedactor()(manifest.error)
            stage = self._failed_stage or manifest.stage
            lines.extend(["", "### Lỗi / Error", "",
                          f"Bước lỗi / Failed stage: **{stage}**", ""])
            if self._failed_context:
                lines.extend([f"Thao tác / Operation: {self._failed_context}", ""])
            lines.extend('> ' + line for line in error.splitlines())
        lines.extend(["", "### Log đầy đủ / Full build log", "",
                      f"Tải **wukong-build-log-{manifest.job_id}** trong mục **Artifacts** của run này; "
                      "mở `build.log` để xem stdout và stderr của pipeline. "
                      "Log đã che thông tin xác thực và tham số URL."])
        with self.summary_path.open("a", encoding="utf-8", newline="\n") as handle:
            handle.write("\n".join(lines) + "\n")
