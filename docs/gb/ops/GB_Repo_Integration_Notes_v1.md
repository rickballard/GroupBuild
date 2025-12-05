# GroupBuild Repo Integration Notes v1

These notes assume:

- A canonical Git repo for GroupBuild at a path like:
  - `$HOME\Documents\GitHub\GroupBuild`
- The MegaWave W1–W4 directories are unpacked elsewhere (for example, `GroupBuild_MegaWave_W1` etc.).

## Suggested doc layout inside the repo

Under the GroupBuild repo, create:

- `docs/gb/positioning/`
- `docs/gb/web/`
- `docs/gb/product/`
- `docs/gb/ops/`
- `docs/gb/outreach/`
- `docs/gb/community/`
- `docs/gb/arch/`
- `docs/gb/risk/`

Then map:

- From W1:
  - `docs/positioning/*` → `docs/gb/positioning/`
  - `docs/web/*`         → `docs/gb/web/`
  - `product/*`          → `docs/gb/product/`
  - `ops/*`              → `docs/gb/ops/`

- From W2:
  - `web/index_GB_ReinventCircles_v1.html` → `docs/gb/web/` or the web root, depending on the stack.
  - `product/*`                            → `docs/gb/product/`
  - `ops/*`                                → `docs/gb/ops/`

- From W3:
  - `outreach/*`   → `docs/gb/outreach/`
  - `community/*`  → `docs/gb/community/`
  - `monetization/*` → `docs/gb/ops/` or `docs/gb/monetization/` if you prefer a separate folder.
  - `risk/*`       → `docs/gb/risk/`
  - `arch/*`       → `docs/gb/arch/`

- From W4:
  - `docs/GB_CoBus_Packet_v1.md` → `docs/gb/GB_CoBus_Packet_v1.md`
  - `ops/*` (triage + repo notes) → `docs/gb/ops/`
  - `tools/DO_GB_SyncMegaWaves_ToRepo_v1.ps1` → `tools/` in the repo root.

## Branching

- Create a short-lived branch for integrating MegaWave docs, e.g. `MW_GB_Repositioning_v1`.
- Commit after each major mapping step.
- Once the site and docs are wired, squash-merge into main.

## Site integration

- If GroupBuild.org is a static site:
  - Replace or adapt the current homepage using `index_GB_ReinventCircles_v1.html` as a reference.
- If it is framework-based (React, etc.):
  - Treat the HTML as content and port the structure into the framework's components.

Keep the copy centralized in the docs where possible so multiple surfaces can reuse it.
