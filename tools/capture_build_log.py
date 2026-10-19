"""Tee one build to live Actions output and a sanitized, durable console log."""
from __future__ import annotations

import argparse
import os
from pathlib import Path
import subprocess
import sys

from wukong.build_logging import LogRedactor


def capture(command: list[str], log_path: Path) -> int:
    log_path.parent.mkdir(parents=True, exist_ok=True)
    redactor = LogRedactor()
    env = dict(os.environ, PYTHONUNBUFFERED='1', PYTHONIOENCODING='utf-8')
    with log_path.open('w', encoding='utf-8', newline='\n') as log:
        process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                   env=env, text=True, encoding='utf-8', errors='replace')
        try:
            for line in process.stdout:
                safe = redactor(line)
                log.write(safe)
                log.flush()
                print(safe, end='', flush=True)
            return process.wait()
        except BaseException:
            process.terminate()
            process.wait()
            raise
        finally:
            process.stdout.close()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('command', nargs=argparse.REMAINDER)
    args = parser.parse_args()
    command = args.command[1:] if args.command[:1] == ['--'] else args.command
    if not command:
        parser.error('a build command is required')
    return capture(command, args.output)


if __name__ == '__main__':
    raise SystemExit(main())
