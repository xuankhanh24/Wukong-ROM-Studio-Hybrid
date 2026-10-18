# Launcher compatibility fix — PKG110 16.0.10.500(CN01)

## Result

The failed MOD stage was reproduced on the job's stock `OplusLauncher.apk`:
the generic Android 16 profile matched only 20/42 rules. A reviewed, exact-stock
variant now matches all 42 rules. No compatibility threshold was lowered.

Stock SHA-256: `59ba302c566b0ac96ed4ecffb7a831ca9b230437f9cdc54c986428e7a624b7e1`.

## Cause and changes

This OEM build changes obfuscated class/member names, a lifecycle callback ABI,
string instruction encoding and some native control flow. Its original profile
describes a different Launcher build. The new profile overrides 22 method rules,
preserving the current stock bodies while inserting the existing reviewed mod
hooks. In particular it retains the new tile-card visibility policy and current
register count, and ports the optional quick-search variant independently.

The variant is selected by exact APK SHA-256. Unknown method bodies still fail
before any class is written. The shared A16/A17 profiles remain unchanged.

## Evidence

- `.tmp/launcher-compat-repro.log`: original 20/42 failure, stock unchanged.
- `.tmp/launcher-profile-port-review.log`: stock-to-patched method diffs.
- `.tmp/launcher-pkg110-full-build-final.log`: full all-eight-feature build passed.
- `.tmp/launcher-pkg110-fixed/OplusLauncher.build.json`: 11 DEX, 36,394 classes;
  no duplicates, unresolved helper methods/APIs/fields, or missing callbacks.
- `.tmp/launcher-installed-regression.log`: installed-runtime test passed, 42/42.
- `python -m unittest tests.test_launcher_profiles -v`: 3 passing regressions.
- zipalign 16 KB alignment and ZIP checks passed during packaging.

Built test APK SHA-256:
`000491e238712a08f058de1c3ce56b34601ebb6008e5ba3e22d1f25777ee20a0`.

## Installed hotfix and limitations

Updated only `launcher_mod/engine.py`, `launcher_mod/profiles.py` and the new
`patches/pkg110_16_0_10_500/profile.json` under installed Content/STARK.
Existing files were backed up and hashes verified at:
`C:/WukongROMStudio/Backups/LauncherProfileFix-20261018-150850`.

The unpacked stock APK was not overwritten by diagnostics. No ADB install,
device flash, full ROM rebuild, or boot/runtime feature test was performed.
Retaining an OEM signing block does not make modified APK v2/v3 signatures valid.
The separate GitHub Release migration remains in progress and is not represented
as committed, pushed, or fully published by this fix.

## Recurrence after reinstall (15:35–15:40)

The second log again failed 20/42 at `profiles.py:140`. Installed `profiles.py`
had reverted to SHA-256
`01ed068bc1d91ca5bddca479f761f6d639cca3d9d03c32d52a67896d9b2e66a3`;
the reviewed variant was absent. Setup log #011 identifies the previously built
`WukongStudio-GitHub-Packs-20261018-x64-Setup.exe` as installed at 15:35.
That old payload did not include the uncommitted Launcher hotfix. Thus the
original patch fix was valid but was not present in the subsequently installed
release. Installed-runtime reproduction confirmed the recurrence before repair.

The installed files were backed up again at
`C:/WukongROMStudio/Backups/LauncherReinstallFix-20261018-154439` and updated.
Packaging now compares every shared STARK payload file with current source,
rejects missing/stale/extra entries, excludes generated scratch/cache output,
and refuses to compile the full installer without the reviewed PKG110 profile.
The new installer staging retains the latest LV1 default Windows application.

Regression command:
`python -m unittest tests.test_launcher_profiles tests.test_stark_payload_gate tests.test_installer_stark tests.test_mod_features tests.test_desktop_scripts -q`
passed 20 tests, including actual Inno compilation rejecting a stale payload.
