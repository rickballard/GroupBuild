# GroupBuild – Trust and Identity v1

## 1. Purpose

This note explains how GroupBuild uses the shared CoSuite trust primitives
(Handle, Steward ID, Digital Halo, MeritRank, participation states) for
collaborative builds.

It is aligned with the CoIndex CoHalo / MeritRank spec and the CoSteward
CoTrust / Identity BPOE, but tuned for project rooms and shared artefacts.

---

## 2. Identity and handles

- Builders show up under public handles inside GroupBuild rooms.
- Where deeper verification is needed (funding, safety), a private Steward ID
  may be linked behind the scenes.
- Rooms and projects SHOULD NOT expose real-world identity by default, even if
  some stewards know it privately.

---

## 3. Trust in rooms

GroupBuild rooms MAY use:

- Digital Halo tiers (`exploring`, `aligned`, `exemplar`) to summarise behaviour.
- MeritRank tiers (`starter`, `reliable`, `anchor`, `steward`) to indicate
  track record in shipping builds with others.

These signals help room hosts decide who to:

- invite into higher-risk experiments,
- trust with moderation / coordination powers,
- ask to mentor newcomers.

---

## 4. Safety, quieting and exit

To protect participants:

- Hosts and stewards MAY quiet an account (read-only or slowed actions)
  when behaviour threatens safety or coherence.
- In serious or repeated cases, an account MAY be exited from a room or
  from GroupBuild entirely.

These tools are treated as structural, not moral:

- Public copy SHOULD describe outcomes as “paused under the safety policy”
  rather than as character judgements.
- Rationales live in steward notes, not public dashboards.

---

## 5. Cross-project and cross-site sharing

GroupBuild:

- REUSES CoHalo / MeritRank vocabulary.
- DOES NOT automatically propagate room-level conflict or restriction to
  other projects or sites.
- MAY expose coarse signals (e.g. “anchor-level contributor in GroupBuild”)
  to other CoSuite tools when a builder explicitly opts in.

---

## 6. Versioning

This is GroupBuild trust and identity spec v1.

- Canonical path: `GroupBuild/docs/trust/GroupBuild_TrustAndIdentity_v1.md`
- Aligned upstream specs:
  - `CoIndex/docs/trust/CoHalo_MeritRank_Spec_v1.md`
  - `CoSteward/docs/bpoe/CoTrust_Identity_BPOE_v1.md`