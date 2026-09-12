# React API contract map

`src/api/client.ts` is the only network boundary in the React route. It keeps
the existing response keys and auth scheme; UI-friendly names are mapped in
feature adapters.

| Flow | Method and path | React status |
| --- | --- | --- |
| Session open | `POST /v1/session/open` | implemented |
| Session refresh | `GET /v1/me` | reserved in client contract |
| Job sync/list | `GET /v1/sync?includeHistory=1` | implemented with AbortController |
| Job detail/events | `GET /v1/sync?includeHistory=0&jobId=…&after=…` | client contract preserved |
| Create job | `POST /v1/jobs` | implemented with Idempotency-Key |
| Job action | `POST /v1/jobs/:id/:action` | client contract preserved |
| Artifact URL | `GET /v1/jobs/:id/artifacts/:index/dccloud-download` | client contract preserved |
| Mirror repair | `POST /v1/jobs/:id/mirror-repair` | client contract preserved |
| Source draft | `GET /v1/drafts/source`, `DELETE /v1/drafts/source` | client contract preserved |
| Source probe/resolve | `POST /v1/sources/probe`, `POST /v1/sources/resolve` | probe implemented |
| ROM catalog | `GET /v1/rom-catalog`, `GET /v1/rom-catalog/devices` | client contract preserved |
| MOD labels | `GET/PUT /v1/mod-release-versions`, `GET/PUT /v1/preset-labels` | client contract preserved |
| Diagnostics/cache | `GET /v1/diagnostics`, `GET /v1/cache`, `POST /v1/cache/clear` | client contract preserved |
| Maintenance | `PUT /v1/system/maintenance` | client contract preserved |
| Admin users | `GET/POST /v1/admin/users`, `GET /v1/admin/users/:telegramId` | server-gated |
| Admin activity/jobs/events | `GET /v1/admin/users/:telegramId/{activity,jobs,events}` | server-gated |
| Admin user operations | `POST /v1/admin/users/:telegramId/{approve,revoke,credits,unlimited}` | server-gated |
| Batch build | `GET/POST /v1/admin/batch-builds`, `GET /v1/admin/batch-builds/:id` | server-gated |

The client sends `Authorization: tma <initData>` inside Telegram or
`Authorization: wla <launchToken>` for a signed browser launch. It adds a
session id and client version, never logs either credential, aborts superseded
requests and times out after 15 seconds. Request bodies remain JSON and the
existing `sendData` 4096-byte constraint belongs to the recipe validation
adapter before submission.
