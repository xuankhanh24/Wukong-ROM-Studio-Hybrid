# Launcher patch sync · V7.0

Imported reviewed patch data and Java helpers from the supplied `launcher-mod`
checkout at `b03b1f4` (recents landscape and Google Feed toggle fixes).
Build entry points continue to use this project's shared, hash-locked toolchain,
transactional archive writer, 16 KB alignment and DEX verifier.

The default build uses one catalog, `patches/shared/profile.json`, for A16 and
A17. The catalog contains reviewed instruction-graph alternatives for each
feature; it is not selected by Android version, device model or APK fingerprint.
The older directories remain historical inputs and regression fixtures.
New patch changes belong in the shared catalog.

Every requested feature must match a complete rule graph before any source is
written. When several graphs match, the most complete graph is used; equally
complete graphs must produce equivalent edits. Empty historical feature entries
cannot make a requested feature pass without applying hooks.

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
