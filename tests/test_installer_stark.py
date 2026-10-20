"""Exercise STARK replacement with an isolated, non-admin Inno installer.

The fixture has no registry, shortcuts, app shutdown or real installation access.
It compiles the production snapshot/restore code, not a Python reimplementation.
"""
import os
import ctypes
from contextlib import contextmanager
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
INSTALLER = ROOT / 'desktop/Packaging/installer.iss'
COMPILER = Path(os.environ.get('WUKONG_TEST_ISCC',
    ROOT / 'desktop/artifacts/toolchain/InnoSetup6/tools/ISCC.exe'))


@contextmanager
def hold_without_delete_sharing(path):
    """Model a terminal/editor directory handle without touching its contents."""
    kernel = ctypes.WinDLL('kernel32', use_last_error=True)
    kernel.CreateFileW.argtypes = [ctypes.c_wchar_p, ctypes.c_uint32, ctypes.c_uint32,
                                  ctypes.c_void_p, ctypes.c_uint32, ctypes.c_uint32, ctypes.c_void_p]
    kernel.CreateFileW.restype = ctypes.c_void_p
    kernel.CloseHandle.argtypes = [ctypes.c_void_p]
    handle = kernel.CreateFileW(str(path), 0x80000000, 3, None, 3, 0x02000000, None)
    if handle == ctypes.c_void_p(-1).value:
        raise ctypes.WinError(ctypes.get_last_error())
    try:
        yield
    finally:
        kernel.CloseHandle(handle)


class StarkInstallerContractTests(unittest.TestCase):
    def test_whole_stark_tree_is_unconditionally_installed(self):
        content = INSTALLER.read_text(encoding='utf-8-sig')
        entries = [line for line in content.splitlines()
                   if line.startswith('Source:') and '\\Content\\STARK\\' in line]
        self.assertEqual(len(entries), 1)
        self.assertIn('\\Content\\STARK\\*"', entries[0])
        self.assertIn('recursesubdirs createallsubdirs', entries[0])
        self.assertNotIn('Check:', entries[0])
        self.assertIn('Excludes: "\\STARK\\*"', content)
        self.assertIn("RetireStarkDirectory('Content\\STARK'", content)
        self.assertIn('procedure DeinitializeSetup', content)
        self.assertNotIn('RenameFile(OldStark, NewStark)', content)


@unittest.skipUnless(os.name == 'nt' and COMPILER.is_file(), 'Optional Windows Inno integration')
class StarkInstallerIntegrationTests(unittest.TestCase):
    def test_compiler_refuses_staging_without_both_launcher_profiles(self):
        for present in (None, 'a16', 'a17'):
            with self.subTest(present=present), tempfile.TemporaryDirectory(prefix='wk-stale-stark-') as directory:
                if present:
                    profile = Path(directory) / 'Content/STARK/Launcher_mod/patch_Launcher_mod/patches' / present / 'profile.json'
                    profile.parent.mkdir(parents=True)
                    profile.write_text('{}', encoding='utf-8')
                result = subprocess.run([str(COMPILER), f'/DSourceRoot={directory}',
                                         f'/DInstallerOutputDir={directory}', str(INSTALLER)],
                                        capture_output=True, text=True, timeout=30)
                self.assertNotEqual(result.returncode, 0)
                self.assertIn('Shared STARK payload is stale', result.stdout + result.stderr)

    def test_fresh_upgrade_repeat_and_failed_install_restore(self):
        content = INSTALLER.read_text(encoding='utf-8-sig')
        helpers = content.split('// STARK snapshot helpers begin', 1)[1].split('// STARK snapshot helpers end', 1)[0]
        events = content.split('// STARK snapshot events begin', 1)[1].split('// STARK snapshot events end', 1)[0]
        with tempfile.TemporaryDirectory(prefix='wk-stark-installer-') as directory:
            root = Path(directory)
            payload = root / 'payload'
            payload.mkdir()
            (payload / 'new.py').write_bytes(b'new shared script')
            (payload / 'Camera_mod').mkdir()
            (payload / 'Camera_mod/stock.apk').write_bytes(b'new prepared payload')
            fixture = root / 'fixture.iss'
            fixture.write_text(f'''[Setup]
AppName=STARK isolated test
AppVersion=1
AppId=STARK-Isolated-Fixture
DefaultDirName={root / 'unused'}
PrivilegesRequired=lowest
Uninstallable=no
CreateAppDir=yes
DisableDirPage=yes
UsePreviousAppDir=no
OutputDir={root}
OutputBaseFilename=fixture
Compression=none
[Files]
Source: "{payload}\\*"; DestDir: "{{app}}\\Content\\STARK"; Flags: ignoreversion recursesubdirs createallsubdirs
[Code]
var
  ContentStarkBackup, RuntimeStarkBackup: String;
  StarkInstallFinished: Boolean;
{helpers}
function PrepareToInstall(var NeedsRestart: Boolean): String;
begin
  Result := RetireStarkDirectory('Content\\STARK', 'content-stark', ContentStarkBackup);
  if Result <> '' then Exit;
  Result := RetireStarkDirectory('Runtime\\STARK', 'runtime-stark', RuntimeStarkBackup);
  if ExpandConstant('{{param:FailAfterBackup|0}}') = '1' then Result := 'Intentional fixture failure';
  if ExpandConstant('{{param:FailAfterFiles|0}}') = '1' then
  begin
    ForceDirectories(ExpandConstant('{{app}}\\Content\\STARK'));
    SaveStringToFile(ExpandConstant('{{app}}\\Content\\STARK\\partial.py'), 'incomplete new tree', False);
    Result := 'Intentional fixture failure with partial tree';
  end;
end;
{events}
''', encoding='utf-8-sig')
            compiled = subprocess.run([str(COMPILER), str(fixture)], capture_output=True, text=True, timeout=30)
            self.assertEqual(compiled.returncode, 0, compiled.stdout + compiled.stderr)
            setup = root / 'fixture.exe'

            def install(target, fail=None):
                log = root / ('failed.log' if fail else 'install.log')
                args = [str(setup), '/VERYSILENT', '/SUPPRESSMSGBOXES', '/NORESTART', '/SP-',
                        f'/DIR={target}', f'/LOG={log}']
                if fail == 'backup':
                    args.append('/FailAfterBackup=1')
                elif fail == 'files':
                    args.append('/FailAfterFiles=1')
                result = subprocess.run(args, timeout=30)
                self.assertEqual(result.returncode == 0, not fail, log.read_text(encoding='utf-8-sig'))
                return log.read_text(encoding='utf-8-sig')

            def tree(path):
                return {p.relative_to(path).as_posix(): p.read_bytes() for p in path.rglob('*') if p.is_file()}

            target = root / 'install'
            install(target)
            self.assertEqual(tree(target / 'Content/STARK'), tree(payload))
            old = target / 'Content/STARK'
            (old / 'orphan.jar').write_bytes(b'obsolete private tool')
            (old / 'Camera_mod/stock.apk').write_bytes(b'old prepared payload')
            expected_backup = tree(old)
            legacy = target / 'Runtime/STARK'
            legacy.mkdir(parents=True)
            (legacy / 'legacy.txt').write_bytes(b'legacy bridge')
            install(target)
            self.assertEqual(tree(old), tree(payload))
            self.assertFalse(legacy.exists())
            backups = list((target / 'Backups').glob('content-stark-*'))
            self.assertEqual(len(backups), 1)
            self.assertEqual(tree(backups[0]), expected_backup)
            self.assertEqual(tree(next((target / 'Backups').glob('runtime-stark-*'))), {'legacy.txt': b'legacy bridge'})
            install(target)
            self.assertEqual(tree(old), tree(payload))
            self.assertEqual(len(list((target / 'Backups').glob('content-stark-*'))), 2)
            (old / 'user-edit.txt').write_bytes(b'must survive failed install')
            before = tree(old)
            install(target, fail='backup')
            self.assertEqual(tree(old), before)
            install(target, fail='files')
            self.assertEqual(tree(old), before)
            # A root directory handle must not prevent replacing its children.
            (old / 'obsolete-empty-directory').mkdir()
            with hold_without_delete_sharing(old):
                install(target)
            self.assertEqual(tree(old), tree(payload))
            self.assertFalse((old / 'obsolete-empty-directory').exists())
            self.assertTrue(any(tree(p) == before and (p / 'obsolete-empty-directory').is_dir()
                                for p in (target / 'Backups').glob('content-stark-*')))
            # Rollback also works when the root cannot be renamed throughout.
            (old / 'user-edit.txt').write_bytes(b'preserve under root lock')
            before = tree(old)
            with hold_without_delete_sharing(old):
                install(target, fail='backup')
                self.assertEqual(tree(old), before)
                install(target, fail='files')
                self.assertEqual(tree(old), before)
            # A genuinely locked child must fail safely with its path/error,
            # restoring any entries retired earlier in the same transaction.
            with hold_without_delete_sharing(old), hold_without_delete_sharing(old / 'new.py'):
                log = install(target, fail='locked')
            self.assertEqual(tree(old), before)
            self.assertIn('new.py (Windows error 32:', log)
