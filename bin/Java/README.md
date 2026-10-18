# Shared Java build tools

All STARK patch scripts and framework tools resolve these three JARs through
`wukong.patch_tools`. Do not add private copies to module `bin/` or `tools/` folders.
Windows staging copies this directory to `Runtime/Bin/Java` and verifies its hashes.

| File | Version | License |
| --- | --- | --- |
| apktool.jar | 3.0.2 | Apache-2.0 |
| smali.jar | 3.0.9 | BSD-3-Clause |
| baksmali.jar | 3.0.9 | BSD-3-Clause |

The distribution JARs retain their upstream license metadata. `toolchain.json`
is the version/hash lock, not a download instruction. Keep filenames canonical.

For an intentional upgrade: obtain the official distribution, check its provenance,
replace the canonical binary, update its version and SHA-256 in `toolchain.json`,
then run both gates from the repository root:

```powershell
python STARK/patch_common.py --check-tools
python -m unittest tests.test_patch_toolchain tests.test_stark_archive -v
```

Test actual OEM inputs before release. A passing synthetic round trip is not proof
of firmware/ART/device compatibility. The optional `WUKONG_STUDIO_TOOLCHAIN_DIR`
override must contain the same canonical filenames and a valid version/hash manifest;
it applies globally, not to one mod. Never work around a hash error by bypassing it.
