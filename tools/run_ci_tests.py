"""Run all test modules, isolating browser globals from executor test doubles."""
from pathlib import Path
import subprocess
import sys

BROWSER_MODULES = frozenset({
    'tests.test_telegram_mini_app', 'tests.test_mini_app_upgrade',
    'tests.test_mini_app_log_quota', 'tests.test_mini_app_mod_controls',
    'tests.test_mod_features_ui',
})


def test_groups(root):
    modules = sorted('tests.' + path.stem for path in (Path(root) / 'tests').glob('test_*.py'))
    return [[module for module in modules if module not in BROWSER_MODULES],
            *[[module] for module in modules if module in BROWSER_MODULES]]


def main():
    root = Path(__file__).resolve().parents[1]
    failed = False
    for group in test_groups(root):
        if group:
            print('::group::Python tests: ' + (group[0] if len(group) == 1 else 'core contracts'), flush=True)
            result = subprocess.run([sys.executable, '-m', 'unittest', *group, '-v'], cwd=root)
            failed |= result.returncode != 0
            print('::endgroup::', flush=True)
    return int(failed)


if __name__ == '__main__':
    raise SystemExit(main())
