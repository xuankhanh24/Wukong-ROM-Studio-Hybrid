import hashlib
import os
from pathlib import Path
import tempfile
import threading
import time
import unittest
from unittest.mock import patch

from wukong import smali_io


class SmaliIoTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        for folder in ('smali', 'smali_classes2'):
            for index in range(40):
                target = self.root / folder / 'fixture' / f'Target{index}.smali'
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_text(f'.class Lfixture/Target{index};\nvalue={index}\n', encoding='utf-8')

    def reference(self):
        result = {}
        for folder in self.root.iterdir():
            name = 'classes.dex' if folder.name == 'smali' else folder.name[6:] + '.dex'
            digest = hashlib.sha256()
            for path in sorted(folder.rglob('*.smali')):
                digest.update(path.relative_to(folder).as_posix().encode() + b'\0')
                digest.update(hashlib.sha256(path.read_bytes()).digest())
            result[name] = digest.hexdigest()
        return result

    def test_parallel_fingerprints_are_identical_to_original_content_hashes(self):
        for workers in (1, 4, 8):
            self.assertEqual(smali_io.dex_fingerprints(self.root, workers=workers), self.reference())

    def test_same_size_and_timestamp_edits_are_not_missed(self):
        before = smali_io.dex_fingerprints(self.root)
        target = self.root / 'smali/fixture/Target0.smali'
        stat = target.stat()
        target.write_bytes(target.read_bytes().replace(b'value=0', b'value=9'))
        os.utime(target, ns=(stat.st_atime_ns, stat.st_mtime_ns))
        after = smali_io.dex_fingerprints(self.root)
        self.assertNotEqual(before['classes.dex'], after['classes.dex'])
        self.assertEqual(before['classes2.dex'], after['classes2.dex'])

    def test_added_removed_renamed_and_empty_dex_trees_are_tracked(self):
        before = smali_io.dex_fingerprints(self.root)
        target = self.root / 'smali/fixture/Target0.smali'
        target.rename(target.with_name('Renamed.smali'))
        (self.root / 'smali_classes2/fixture/Target0.smali').unlink()
        (self.root / 'smali_classes3').mkdir()
        self.assertNotEqual(before, smali_io.dex_fingerprints(self.root))
        self.assertEqual(smali_io.dex_fingerprints(self.root), self.reference())

    def test_io_failures_abort_instead_of_trusting_partial_fingerprints(self):
        with patch.object(smali_io, '_file_digest', side_effect=OSError('fixture read failure')):
            with self.assertRaisesRegex(OSError, 'fixture read failure'):
                smali_io.dex_fingerprints(self.root)

    def test_parallelism_is_bounded_and_progress_reaches_all_files(self):
        active = maximum = 0
        lock = threading.Lock()
        original = smali_io._file_digest
        def observe(path):
            nonlocal active, maximum
            with lock:
                active += 1
                maximum = max(maximum, active)
            try:
                time.sleep(0.002)
                return original(path)
            finally:
                with lock:
                    active -= 1
        updates = []
        with patch.object(smali_io, '_file_digest', side_effect=observe):
            smali_io.dex_fingerprints(self.root, workers=4, progress=lambda done, total: updates.append((done, total)))
        self.assertGreater(maximum, 1)
        self.assertLessEqual(maximum, 4)
        self.assertEqual(updates[-1], (80, 80))

    def test_scoped_index_preserves_duplicate_detection_and_registered_additions(self):
        relative = Path('fixture/Target0.smali')
        with smali_io.index_scope(self.root), patch.object(Path, 'rglob', side_effect=AssertionError('Repeated traversal')):
            self.assertEqual(len(smali_io.find_matches(self.root, relative)), 2)
            added = self.root / 'smali_classes3/fixture/Added.smali'
            added.parent.mkdir(parents=True)
            added.write_text('new bridge', encoding='utf-8')
            smali_io.register_path(added)
            self.assertEqual(smali_io.find_matches(self.root, Path('fixture/Added.smali')), [added.resolve()])
        self.assertEqual(len(smali_io.find_matches(self.root, relative)), 2)

    def test_index_does_not_leak_between_builds_or_nested_scopes(self):
        relative = Path('fixture/Target0.smali')
        with smali_io.index_scope(self.root):
            with tempfile.TemporaryDirectory() as other, smali_io.index_scope(Path(other)):
                self.assertEqual(smali_io.find_matches(Path(other), relative), [])
            self.assertEqual(len(smali_io.find_matches(self.root, relative)), 2)
        (self.root / 'smali/fixture/Target0.smali').unlink()
        with smali_io.index_scope(self.root):
            self.assertEqual(len(smali_io.find_matches(self.root, relative)), 1)

    def test_wk_helpers_use_the_same_index_without_repeated_tree_walks(self):
        import wk_manager_patcher
        from wukong.wk_features import load_patcher
        features = load_patcher(Path(__file__).resolve().parents[1] / 'STARK')
        with smali_io.index_scope(self.root), patch.object(Path, 'rglob', side_effect=AssertionError('Repeated traversal')):
            with self.assertRaisesRegex(wk_manager_patcher.WkManagerPatchError, 'found 2'):
                wk_manager_patcher._find_smali(self.root, 'fixture.Target0')
            report = features.install_framework_bridges(self.root, ['power_button_remap'])
            self.assertEqual(report['importedSmali'], 1)
            again = features.install_framework_bridges(self.root, ['power_button_remap'])
            self.assertEqual(again['importedSmali'], 0)
            self.assertEqual(len(smali_io.find_matches(
                self.root, Path('com/wukong/manager/WukongPowerKeyBridge.smali'))), 1)


if __name__ == '__main__':
    unittest.main()
