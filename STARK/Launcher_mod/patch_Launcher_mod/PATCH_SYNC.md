# Launcher patch sync · V7.0

Patch rules and Java helpers are based on `xuankhanh24/OplusLauncher-Mod`,
commit `86d6ec3d841d69f0f406042bbce5fd4486a10bed`.
Build entry points continue to use this project's shared, hash-locked toolchain,
transactional archive writer, 16 KB alignment and DEX verifier.

Runtime patch data lives in exactly two directories: `patches/a16/` and
`patches/a17/`. The upstream API-family detector selects the appropriate
`profile.json` from the APK's classes and source metadata. It does not use device
models or APK fingerprints. Both families use the same engine, Java helpers,
resource builder, toolchain and verifier.

All required rules must match before any source is written. Reviewed older OEM
graphs are retained inside the A16 feature files so the existing A16 inputs
remain supported. When several complete A16 graphs match, the most complete is
used; equally complete graphs must produce equivalent edits. Empty historical
feature entries are excluded. Historical stock examples live under
`tests/fixtures/launcher/` and are not runtime profiles.

Class identity comes from source metadata and complete method semantics.
Recycled obfuscated names cannot take precedence over that metadata. References
sharing a Kotlin source file are bound consistently from unchanged instructions,
without a device-specific class map. Ambiguous classes, references or different
replacement graphs remain errors.

Build and DEX verification do not replace on-device UI validation.

Resource rebuilding preserves OEM references to non-public Android symbols using
explicit `@*android:` syntax. This avoids depending on a locally publicized
apktool framework cache: CI uses a clean framework and otherwise rejects the same
symbols as private. A regression test links real resources against the framework
embedded in the pinned apktool JAR, before and after normalization.
Private theme attributes use an explicit private XML namespace (not `?*android`).
Decode and rebuild share a per-build clean framework directory so host caches
cannot change the IDs assigned to OEM framework references.
