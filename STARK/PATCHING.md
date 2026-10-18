# STARK patch maintenance

The existing module directories and `.bat`/Python entry points remain in place.
`wukong/patch_tools.py` owns ZIP replacement, validation, tool discovery and APK alignment.
`STARK/patch_common.py` is only a compatibility import; it contains no second implementation.
Camera, Settings, Chat Bubbles, CTS/Gemini, Athena and Launcher call this shared layer.
Hasselblad preserves multidex JAR/APK contents instead of rebuilding a JAR with only
`classes.dex`. WK Manager uses the same layer through `studio_core.py`.

## One shared toolchain

Source tools live only in `bin/Java/{apktool,smali,baksmali}.jar`; Windows packages
install them in `Runtime/Bin/Java`. `toolchain.json` pins versions and SHA-256 hashes.
Every patch uses this directory, never module-local tools or a personal Downloads
folder. Missing or changed JARs stop the build instead of silently selecting another
version. `WUKONG_STUDIO_TOOLCHAIN_DIR` can explicitly replace the entire shared directory
with another manifest-verified toolchain. See `bin/Java/README.md` for maintenance.

## One execution policy

All seven standalone mod groups, including Launcher helper/resource/profile builds,
call `patch_common.run_tool`. WK Manager's ROM JAR runner and `FrameworkTool` use
the same runtime implementation. Do not add private `subprocess` runners under STARK.

`run_tool` streams stdout and stderr immediately, even with `capture_output=True`;
captured diagnostics remain available to existing error handlers. It reports the
command, exit code and elapsed time. ROM jobs adapt the same `run_command` logger.
No shell command strings are accepted by the patch policy.

Smali assembly uses a central API floor of 29 for hidden-API annotations and honors
higher explicit/API metadata requirements. Builds write to isolated sibling scratch,
validate DEX magic/header/length/SHA-1/Adler-32 (or every DEX plus ZIP CRCs for apktool
builds), and atomically publish only successful output. An exit code of zero alone
is not success; a stale DEX can never mask a failed assembler. Existing output is
preserved on failure and scratch is cleaned. This does not validate ART semantics
or guarantee that firmware-specific patch recipes match a different stock APK.

```powershell
python -m unittest tests.test_patch_execution tests.test_smali_assembly tests.test_stark_archive -q
```

Native tools (`zipalign`, `7z`) use the shared platform directory. Java uses the
bundled runtime when installed, then `JAVA_HOME` or PATH. Launcher source compilation
also needs a JDK (`javac`) and Android SDK (`ANDROID_SDK_ROOT`); the bundled JRE alone
does not provide those compiler dependencies.

The existing seven `.bat` files delegate to `STARK/run_patch.bat` and `run_patch.py`.
Their locations remain unchanged. Command-line options and drag-and-drop are forwarded
without embedding a separate Python/tool discovery implementation in each launcher.

```powershell
python STARK/patch_common.py --check-tools
python STARK/run_patch.py settings --help
```

## Packaging contract

- Copy unchanged compressed payloads byte for byte. Preserve
  the archive comment and entry attributes. Do not recompress stock resources or SOs.
- Write modified/new DEX as `ZIP_STORED`. The Windows runtime does not require a
  JDK `jar` executable: raw ZIP replacement provides the equivalent targeted update.
- Maintain 4-byte alignment for stored entries, including DEX in JARs, and 16KB
  alignment for stored SOs. Local-header padding may change to maintain alignment.
- The JAR runner fingerprints decoded smali trees and assembles only changed DEX
  with the bundled smali tool. Preserve untouched DEX and all stock non-DEX entries.
  Apktool build remains the fallback when selective assembly is unavailable.
- Validate ZIP CRCs before publishing a temporary output with an atomic replace.
- APK outputs require `zipalign -P 16 -f 4` and a successful
  `zipalign -c -P 16 4`. Do not silently fall back to 4KB alignment.
- APK ZIP alignment does not change ELF segment alignment. Existing SOs still need
  to support the device page size; alignment alone does not prove runtime compatibility.

## OEM signatures

Some legacy entry points retain the existing OEM-block copying convention. Identical
signing-block bytes do **not** mean a valid signature: modifying DEX/resources invalidates
the APK's v2/v3 signature. Use the authorized signing process for the target ROM.
The shared archive helper removes a stale signing block during ZIP rewriting.

References: [APK Signature Scheme v2](https://source.android.com/docs/security/features/apksigning/v2),
[zipalign](https://developer.android.com/tools/zipalign).

## PKG110 16.0.10.500 regression

`SinglePowerKeyMonitor$OplusPowerKeyRule` in this ROM has `onLongPress(J)V` and
`onMultiPress(JII)V`, not an object `onKeyGesture(...)V` callback. The patch supports
both known callback families, preserves OEM fallback behavior and is idempotent.
Unknown callback signatures stop with an error instead of passing primitive values
to an object bridge. The legacy multi-press count is `p3`; `p4` is the display ID.

## Settings CLI

```powershell
python STARK/Settings_mod/patch_Settings_mod/patch_settings.py stock.apk -o out/Settings.apk --no-module --work-dir .tmp
```

Every invocation uses isolated scratch and cleans it on failure. Updating shared
STARK content requires explicit `--deploy-to-stark`; unattended execution does not
overwrite the shared Settings APK as a side effect.

## Shared catalog and compatibility

The seven feature modules above, plus WK Manager/Fake Lock/WK Installer, use the
shared STARK catalog for Windows and Telegram. Shared location/catalog visibility
does not make a prebuilt OEM APK compatible with every firmware. ROM assembly runs
the stock-archive patchers for Camera, Chat Bubbles, CTS/Gemini, Hasselblad and
Settings; Launcher, Fix Notification and WK Manager retain their specialized
dispatchers. A coverage test fails when a new top-level `patch_*` directory is added
without a pipeline registration.

The archive owned by a patcher is never copied back from an old prepared payload,
so a successful patch cannot be overwritten later in the same MOD pass. Stale
`oat`, `.prof`, `.dm`, `.art`, `.odex` and `.vdex` companions are removed after the
patched archive is atomically published. Other files under marker partition folders
such as `my_region` and `my_product` are still copied or applied as `stark_*` line
patches. A marker payload targeting a partition that was not unpacked now stops the
build instead of being silently skipped. When a shared module contains only its
patcher, an installed version-specific marker payload can still supply the non-owned
files.

This integration increments the workspace pipeline version, so an old resume
workspace cannot silently reuse a pre-fix Apply MOD result.

Explicit `launcherFeatures` selections run the Launcher patcher on the ROM's stock APK for
the selected APK features; `global_region` alone only applies the region XML patch.
APK features require JDK (`javac`) and Android SDK (`d8`, `android.jar`) on the runner.
Explicit `fixNotiFeatures` accepts only `level1` or `level2`, never both. Each level
runs Athena with its matching 15 XML configs. Both levels apply the external
notification marker payloads and patch the UID observer branch in
`oplus-services.jar` to two `nop` instructions, including when combined with
WK Manager or Disable Flag Secure. An empty selection skips that mod's work.
Missing fields preserve legacy behavior. Non-archive prepared payloads must still
match the stock firmware before use on another ROM.
No device boot, ART verification or feature performance guarantee follows from a
successful script build alone.

## Verification

```powershell
python -m unittest tests.test_patch_toolchain tests.test_stark_archive tests.test_wk_manager_features -v
```

Optional integration environment variables:

- `WK_SMALI_JAR`: smali fat JAR for bridge/callback assembly.
- `WK_POWER_RULE`: stock `SinglePowerKeyMonitor$OplusPowerKeyRule.smali`.
- `WK_POWER_JAR`: stock `oplus-services.jar`; test works on a temporary copy and
  verifies every untouched compressed payload against the source.

The archive suite also verifies actual 16KB native library offsets when zipalign
is available, failed-output preservation, selective JAR assembly and scratch cleanup.

## Desktop upgrades (2026-10-18)

Install the entire `Content/STARK` tree on both fresh installs and upgrades, including
scripts, configs, prepared APK/JAR payloads and bridge sources. Before installation,
move the complete previous tree to `Backups/content-stark-<timestamp>`; obsolete
files are not merged into the new tree. Legacy `Runtime/STARK` is backed up separately.
If installation does not finish, restore the previous trees; any incomplete new
STARK tree is retained beside the backup rather than recursively deleted.
Other Content folders retain their existing upgrade policy. The implementation is installed in
`Runtime/Scripts/wukong/patch_tools.py`, independently of replaceable Content.
`Runtime/Scripts/stark_patch_common.py` is a legacy compatibility shim only.
The JAR runner imports the runtime implementation even when Content is missing.

Verify fresh installation, repeated upgrades and recovery with an isolated installer:

```powershell
python -m unittest tests.test_installer_stark tests.test_mod_features -q
```

The Windows integration test compiles the production snapshot/restore functions
into a non-admin fixture installer. It verifies full replacement (including old
payloads and unknown stale files), separate legacy-runtime backup and restoration
with an incomplete replacement tree. It does not install or stop the real app.

The installer backs up exact known legacy tool files to
`Backups/LegacyPatchTools/<timestamp>` before removing their duplicate copies.
Prepared ROM APK/JAR payloads are not tool duplicates and are not removed.
Repository copies removed during consolidation are recoverable from
`Backups/patch-toolchain-centralization-20261018`, with their original relative paths.
