"""Secret-free diagnostics for failures before the executor creates a job."""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

STAGES = {
    "system-tools": "System tools installation",
    "drive-access": "Private Drive credentials preparation",
    "content-preflight": "Recipe, content-pack download or runner preflight",
    "source-probe": "Source ROM metadata preparation",
    "toolchain": "Linux toolchain bootstrap or smoke test",
    "submit": "Recipe submission before ROM executor startup",
}


def write_failure(root: Path, job_id: str, stage: str) -> bool:
    if not re.fullmatch(r"[A-Za-z0-9_-]+", job_id):
        raise ValueError("Invalid job ID")
    path = root / job_id / "manifest.json"
    if path.exists():
        return False  # Never replace an executor's more detailed diagnosis.
    label = STAGES.get(stage, "GitHub Actions preparation")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps({
        "schema_version": 1, "job_id": job_id, "status": "failed",
        "stage": "failed", "progress": 0, "artifacts": [],
        "error": f"{label} failed before the ROM executor started. See the GitHub Actions run log for details.",
    }), encoding="utf-8")
    return True


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--jobs-root", type=Path, required=True)
    parser.add_argument("--job-id", required=True)
    parser.add_argument("--stage", default="")
    args = parser.parse_args()
    write_failure(args.jobs_root, args.job_id, args.stage)


if __name__ == "__main__":
    main()
