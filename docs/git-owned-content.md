# Git-owned content

Only `MOD/<version>` is distributed as a versioned GitHub Release pack.
`STARK`, `Flash_script`, `copy-image`, `OFX`, and `TWRP` ship directly in Git
and in every desktop installation. They are not downloaded from Google Drive.
Mini App builds use the same manifest and the same Git checkout in Actions.

After changing base files, run `python -m tools.refresh_git_content`, then commit
the files and `content-packs/index.json` together. The manifest pins base image
and flash-tool hashes. A missing or corrupt checkout fails validation rather
than falling back to a remote snapshot. STARK patch scripts remain authoritative
in their checked-out revision.

Actions caches only `MOD`; base content must never be restored from old caches.
MOD publication preserves the branch's Git-owned inventories, including when
publication comes from an older desktop installer.

Raw recovery images are at most GitHub's 100 MiB per-file limit. Do not add Git
LFS pointers, private MOD payloads, ROM downloads, generated output, or credentials.
Source ROM and output storage are separate from this content distribution policy.
