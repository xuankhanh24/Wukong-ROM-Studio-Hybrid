# WK Manager init service compatibility

The original shared service runs as `root` with exactly
`DAC_OVERRIDE DAC_READ_SEARCH FOWNER`. Do not downgrade it to `system` merely
to satisfy build validation. The older validator required `user system` and
rejected this otherwise supported shared payload after expensive JAR work.

The validator now checks actual service/action sections, accepts the original
bounded root profile and the legacy system profile without capabilities, and
rejects duplicate users/sockets, wrong socket permissions, extra capabilities,
explicit SELinux-domain overrides, and a missing boot-completed start action.
Preflight and MOD entry validation detect invalid assets before patching JARs.
Neither validation nor copying rewrites the service privilege configuration.

Evidence checked on 2026-10-18:

- Restored RC bytes match the pre-fix installed backup SHA-256
  `4fe9057e3f91ae5442eee610a1e766cbdb9c01520bcfce53dd999494f6dfaec2`.
- Shared daemon SHA-256 is
  `c28b9c52fdc9d390db84408cd041bcec68a90f67ee7c8d21d0576a89f675207a`,
  identical to the local Wukong Manager build artifact.
- Local `C:/Android/wukongmanger/native/wukong-powerd/wukong_powerd.cpp`
  checks `geteuid() != 0` for `MAINTENANCE_TARGET`. Its porting guide documents
  the root service and the same three capabilities. `llvm-readelf` confirms
  that the shipped ELF imports `geteuid` and `getsockopt`; this alone does not
  establish execution or prove correspondence to every source instruction.
- REA identified the ELF as ARM64 with the above digest. Deep analysis was
  unavailable on this host; no decompiler or device execution result is claimed.

Regression coverage: original root and legacy system validation, malformed
configurations, failure before MOD writes, and root-service installation with
policy/repack metadata. These are build-side checks, not a phone boot/runtime test.

The `power-service-fix-20261018` installer downgraded the service to system and
is superseded by `power-root-compat-fix-20261018`. Install the replacement;
restart the desktop app and rebuild from a clean stock-ROM extraction rather
than reusing a partially patched workspace. The older runtime's validator must
be replaced together with restoring the RC; restoring the RC alone repeats
the original build error.

The latest installer is `stark-source-sync-20261018`, which also removes the
packaging overlay from `config/wk_manager_system_policy.cil`. Every shipped
STARK file, including all three SELinux patch files, must match the same path
under source `STARK` byte-for-byte. The verifier has no policy exception and
rejects missing, extra, stale or generated-cache files in the staged STARK.
Source build caches are not distributable payload. The installer retains its
whole-directory backup/replacement and failure rollback, not a partial overlay.

GitHub ROM builds must use the checked-out STARK source, never content cache.
The ROM workflow excludes STARK from cache paths and uses content-cache v3,
preventing restoration of v2 archives that still contain older STARK files.
