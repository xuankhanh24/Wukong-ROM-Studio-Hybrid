"""Compatibility entry point; implementation belongs to the application Runtime."""
from pathlib import Path
import os
import sys

_here = Path(__file__).resolve().parent
_candidates = []
if os.environ.get("WUKONG_STUDIO_INSTALL_ROOT"):
    _candidates.append(Path(os.environ.get("WUKONG_STUDIO_APP_ROOT") or
                            Path(os.environ["WUKONG_STUDIO_INSTALL_ROOT"]) / "Runtime") / "Scripts")
if _here.name == "Scripts" and _here.parent.name == "Runtime":
    _candidates.append(_here)
elif _here.parent.name == "Content":
    _candidates.append(_here.parent.parent / "Runtime" / "Scripts")
else:
    _candidates.append(_here.parent)
for _root in _candidates:
    if (_root / "wukong" / "patch_tools.py").is_file():
        sys.path.insert(0, str(_root))
        break
else:
    raise ImportError("Shared wukong.patch_tools is missing; repair the application Runtime")

from wukong.patch_tools import *

if __name__ == "__main__":
    from wukong.patch_tools import main
    raise SystemExit(main())
