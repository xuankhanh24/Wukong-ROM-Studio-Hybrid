# GitHub Actions build logs

The build job exposes setup, content verification, ROM identification, toolchain,
pipeline, full-log artifact, result synchronization and terminal status as named
workflow steps. Expand **Build ROM** for flat, collapsible numbered stage groups.
Each selected MOD gets its own group; groups never nest.

Download/upload progress uses this layout (illustrative numbers):

```text
[DOWNLOAD] HTTPS · source.zip | [##########----------]  50.0% | 4.00 GiB / 8.00 GiB | 40.00 MiB/s | ETA 01:42
[UPLOAD] [1/2] Google Drive · Wukong_Plus.zip | [###############-----]  75.0% | 6.00 GiB / 8.00 GiB | 20.00 MiB/s | ETA 01:42
```

- ROM HTTPS downloads, parallel ranges/resume, Rclone downloads, MOD archives,
  artifact uploads, DC Cloud mirrors and checkpoint transfers report real byte
  measurements. Uploads use Rclone/provider network statistics, not TAR creation
  or bytes merely written to a subprocess pipe.
- Resumed bytes count toward completion but not toward the speed measurement.
- An unknown total/rate/ETA is shown as `--`; no percentage is guessed. An EOF
  determines the total for a size-unknown download. Size/SHA checks still apply.
- Updates are sampled (normally one visible line per five seconds per transfer).
  The first sample, completion, file changes and retry notices remain visible.
- `[CACHE HIT]`, `[CACHE MISS]`, `[SKIPPED]`, warnings, stage durations and
  per-edition timings distinguish reused work from freshly executed stages.
- Failed stages close their group before a concise error annotation is printed.
  An optional checkpoint/mirror warning does not claim the entire ROM build failed.
- The run Summary contains parameters, stage results/timings, transfer sizes and
  latest measured speeds, artifact hashes/links and errors/warnings.
- Download the `wukong-build-log-<job-id>` artifact for the full sanitized stdout
  and stderr (`build.log`). Throttling the UI does not truncate tool output.

These changes apply to new runs. Existing GitHub Actions logs are immutable.
