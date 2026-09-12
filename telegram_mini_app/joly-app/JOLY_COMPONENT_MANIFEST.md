# JolyUI production registry

The machine-readable source of truth is [`joly-registry.json`](./joly-registry.json).
It contains the registry URL, source path, usage classification, render mode,
SHA-256 checksum and pinned JolyUI commit for every published entry in the
current public catalog.

The official source is pinned to
`3d4fb97066f173e8eb8ab433726dee24577e2cc6` from
[`Johuniq/jolyui`](https://github.com/Johuniq/jolyui). Run
`npm run coverage:joly --prefix telegram_mini_app` to verify 42/42 entries,
source presence, Lab examples, checksums and core imports.

The two registry slugs `calender` and `typewritter-text` are intentional and
match the published URLs.
