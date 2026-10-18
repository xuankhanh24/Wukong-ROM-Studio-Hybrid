"""A reused installer staging tree must not silently remove a hotfix."""
from pathlib import Path
import os
import shutil
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
POWERSHELL = shutil.which('pwsh') or shutil.which('powershell')


@unittest.skipUnless(os.name == 'nt' and POWERSHELL, 'Windows packaging gate')
class StarkPayloadGateTests(unittest.TestCase):
    def test_current_payload_passes_and_stale_missing_extra_payloads_fail(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'source/STARK'
            staged = root / 'staged/Content/STARK'
            source.mkdir(parents=True)
            staged.mkdir(parents=True)
            (source / 'profile.py').write_bytes(b'new profile')
            (staged / 'profile.py').write_bytes(b'new profile')
            (source / 'scratch').mkdir()
            (source / 'scratch/output.apk').write_bytes(b'not payload')

            def check(success):
                result = subprocess.run([POWERSHELL, '-NoProfile', '-File',
                    str(ROOT / 'desktop/Scripts/verify-stark-payload.ps1'),
                    '-SourceRoot', str(root / 'source'), '-StagingRoot', str(root / 'staged')],
                    capture_output=True, text=True, timeout=30)
                self.assertEqual(result.returncode == 0, success, result.stdout + result.stderr)
            check(True)
            (staged / 'profile.py').write_bytes(b'old profile')
            check(False)
            (staged / 'profile.py').unlink()
            check(False)
            (staged / 'profile.py').write_bytes(b'new profile')
            (staged / 'obsolete.py').write_bytes(b'orphan')
            check(False)


if __name__ == '__main__':
    unittest.main()
