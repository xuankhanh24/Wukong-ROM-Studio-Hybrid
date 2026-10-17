"""Quick CLI tool to check Vercel deployment status and live domain health."""
from __future__ import annotations

import json
import re
import subprocess
import urllib.request
import sys


PRODUCTION_DOMAIN = "https://wukong-rom-studio.vercel.app"


def check_live_status() -> dict[str, str]:
    try:
        req = urllib.request.Request(
            PRODUCTION_DOMAIN,
            headers={"User-Agent": "Wukong-Studio-Monitor/1.0"},
        )
        with urllib.request.urlopen(req, timeout=10) as resp:
            status = resp.status
            html = resp.read().decode("utf-8", errors="replace")
            release_match = re.search(r'name="wukong-release"\s+content="([^"]+)"', html)
            release_sha = release_match.group(1) if release_match else "unknown"
            return {
                "status": f"HTTP {status}",
                "release_sha": release_sha,
                "domain": PRODUCTION_DOMAIN,
            }
    except Exception as e:
        return {"status": f"Error: {e}", "release_sha": "unknown", "domain": PRODUCTION_DOMAIN}


def check_github_actions_runs() -> list[dict[str, str]]:
    try:
        cmd = [
            "gh", "run", "list",
            "--workflow=telegram-mini-app-pages.yml",
            "--limit", "3",
            "--json", "databaseId,status,conclusion,createdAt,headSha,url"
        ]
        out = subprocess.check_output(cmd, encoding="utf-8")
        runs = json.loads(out)
        return [
            {
                "id": str(r.get("databaseId")),
                "status": str(r.get("status")),
                "conclusion": str(r.get("conclusion") or "in_progress"),
                "sha": str(r.get("headSha", ""))[:7],
                "created": str(r.get("createdAt", "")),
                "url": str(r.get("url", "")),
            }
            for r in runs
        ]
    except Exception:
        return []


def main() -> int:
    print("=" * 60)
    print("[*] WUKONG ROM STUDIO - VERCEL DEPLOYMENT MONITOR")
    print("=" * 60)
    
    live = check_live_status()
    print(f"\n[Domain] Production: {live['domain']}")
    print(f"   Status:           {live['status']}")
    print(f"   Release SHA:      {live['release_sha']}")
    
    runs = check_github_actions_runs()
    if runs:
        print("\n[History] Recent Deploys (GitHub Actions -> Vercel):")
        for r in runs:
            icon = "[PASS]" if r["conclusion"] == "success" else "[FAIL]" if r["conclusion"] == "failure" else "[RUN]"
            print(f"   {icon} Run #{r['id']} | SHA: {r['sha']} | Status: {r['conclusion']} | {r['created']}")
            print(f"      Log: {r['url']}")
            
    print("\n" + "=" * 60)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
