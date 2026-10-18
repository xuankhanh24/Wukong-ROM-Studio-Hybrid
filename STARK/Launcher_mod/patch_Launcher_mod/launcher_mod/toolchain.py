"""Compatibility imports for the shared, hash-locked patch toolchain."""
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from patch_common import run_tool, android_jar, sdk_root, require_tool as find_tool
