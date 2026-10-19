from pathlib import Path
import unittest

from tools.run_ci_tests import BROWSER_MODULES, test_groups


class CITestGroupTests(unittest.TestCase):
    def test_every_test_module_runs_once_and_browser_modules_are_isolated(self):
        root = Path(__file__).resolve().parents[1]
        groups = test_groups(root)
        actual = [name for group in groups for name in group]
        expected = {'tests.' + path.stem for path in (root / 'tests').glob('test_*.py')}
        self.assertEqual(set(actual), expected)
        self.assertEqual(len(actual), len(expected))
        for group in groups:
            if BROWSER_MODULES.intersection(group):
                self.assertEqual(len(group), 1)
