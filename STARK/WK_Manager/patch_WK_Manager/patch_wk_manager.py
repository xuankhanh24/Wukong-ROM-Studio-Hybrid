"""Relocated legacy patch code; existing function bodies are unchanged."""
from __future__ import annotations

import argparse
import sys
from pathlib import Path
from typing import Callable

_PATCH_DIR = str(Path(__file__).resolve().parent)
if _PATCH_DIR not in sys.path:
    sys.path.insert(0, _PATCH_DIR)

if __package__:
    from .smali_helpers import (
        DEFAULT_STARK_DIR,
    )
else:
    from smali_helpers import (
        DEFAULT_STARK_DIR,
    )


if __package__:
    from .patch_framework import patch_framework_decoded
    from .patch_services import patch_services_decoded, patch_disable_flag_secure_services_decoded
    from .patch_oplus_services import patch_oplus_services_decoded, patch_disable_flag_secure_oplus_services_decoded
else:
    from patch_framework import patch_framework_decoded
    from patch_services import patch_services_decoded, patch_disable_flag_secure_services_decoded
    from patch_oplus_services import patch_oplus_services_decoded, patch_disable_flag_secure_oplus_services_decoded


PATCHERS: dict[str, Callable[[Path], dict[str, int | str]]] = {
    "framework": patch_framework_decoded,
    "services": patch_services_decoded,
    "oplus-services": patch_oplus_services_decoded,
    "disable-flag-secure-services": patch_disable_flag_secure_services_decoded,
    "disable-flag-secure-oplus-services": patch_disable_flag_secure_oplus_services_decoded,
}


def main() -> int:
    parser = argparse.ArgumentParser(description="Patch decoded WK_Manager framework smali trees")
    parser.add_argument("jar", choices=sorted(PATCHERS))
    parser.add_argument("decoded", type=Path)
    parser.add_argument("--stark-dir", type=Path, default=DEFAULT_STARK_DIR)
    args = parser.parse_args()
    if args.jar == "framework":
        report = patch_framework_decoded(args.decoded.resolve(), args.stark_dir.resolve())
    else:
        report = PATCHERS[args.jar](args.decoded.resolve())
    print(report)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
