"""Repository paths shared by build stages; independent of the working directory."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
INPUTS = ROOT / 'inputs'
DIST = ROOT / 'dist'
SCRATCH = ROOT / 'scratch'


def stock_apk(value):
    path = Path(value).expanduser()
    if not path.is_file() and path.parent == Path('.'):
        candidate = INPUTS / path.name
        if candidate.is_file():
            path = candidate
    return path.resolve()
