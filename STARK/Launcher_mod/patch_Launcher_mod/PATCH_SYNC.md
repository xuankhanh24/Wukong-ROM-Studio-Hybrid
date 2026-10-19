# Launcher patch sync · V7.0

Imported reviewed patch data and Java helpers from the supplied `launcher-mod`
checkout at `b03b1f4` (recents landscape and Google Feed toggle fixes).
Build entry points continue to use this project's shared, hash-locked toolchain,
transactional archive writer, 16 KB alignment and DEX verifier.

The engine supports reviewed alternative method bodies. Ambiguous classes or
method alternatives still fail before source changes. Duplicate Kotlin source
metadata is resolved only by a unique match of required method semantics.

A17 stock fixture: all 65 rules matched; APK and module built without installation,
16 KB alignment passed, DEX verification found no unresolved references or callbacks.
On-device UI behavior has not been revalidated by this integration.

`a16_reviewed` preserves the previous 42-rule graph for stock SHA-256
`6add0b8865703d9727ae5d23547b7dab5a75b7db78ce8c6688860abcd9d0eedb`.
The exact PKG110_16.0.10.500 profile continues to extend that preserved base.
Generic A16 uses the updated upstream rules; unknown graphs remain unsupported,
not silently patched with partial coverage.
