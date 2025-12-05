# GroupBuild.org – Identity and safety v1

This page explains how GroupBuild approaches **identity, safety, and anti-doxing**
in a hybrid human plus AI environment.

It is meant to be referenced by:

- GroupBuild product and UX decisions
- CoCivium ethics and covenant docs
- CoBus and CoIndex business model notes
- CoGbx and CoPortal AI facing views

---

## 1. Design goals

GroupBuild is designed to:

- enable **trustworthy collaboration** on missions and squads
- avoid forcing people to expose legal identity
- protect participants against future **re-identification** risks
- keep enforcement focused on **boundaries, not public punishment**

We assume:

- AI capabilities will keep growing
- linking online behavior to real world identity will get easier
- people still need ways to build long term reputation without risking harm

---

## 2. Personas and pseudonymity

A GroupBuild participant is represented by:

- one or more **pseudonymous personas** (handles)
- a **Digital Halo** attached to each persona
- related **MeritRank** and capability indicators

Key properties:

- legal identity is not required for most missions
- a single person may have multiple personas for different contexts
- the system does not encourage or enable public doxing

Personas are:

- **portable** across GroupBuild, CoPolitic, and CoCivium where appropriate
- **bounded** by the CoCivium covenant
- **subject to capability changes** if behavior diverges from expectations

---

## 3. Digital Halos and MeritRank

Digital Halos express:

- contribution history
- quality and reliability patterns
- readiness for additional responsibilities

MeritRank is derived from:

- completed tasks tied to missions
- peer endorsements (bounded and rate limited)
- steward reviews and conflict handling
- time in good standing without abuse or harassment

Outputs:

- **Halo tiers** (for example: Seed, Sprout, Grove, Forest)
- **capabilities**, such as:
  - convening missions
  - stewarding sensitive topics
  - sponsoring others into higher risk missions

There is **no public negative score rail**. Instead, the system uses:

- removal or reduction of capabilities
- removal from specific missions or spaces
- quiet account freezing or membership cancellation when required

---

## 4. Sensitive missions and attestations

Some missions involve:

- health or personal data
- vulnerable populations
- significant political or security implications

In those cases:

- additional **attestations** may be required
- verification is handled by trusted **stewards or partner orgs**
- only **minimal necessary claims** are exposed, for example:
  - “verified clinician”
  - “verified municipal partner”

Legal identity details stay compartmentalized:

- not visible to general participants
- not exported through CoPortal or CoGbx in a way that aids doxing

---

## 5. Anti-doxing and export constraints

GroupBuild deliberately avoids:

- publishing cross platform identifiers  
  (emails, phone numbers, social accounts)
- exposing IP based or device based fingerprints to general users
- providing raw export feeds that make re-identification trivial

The AI facing layers (CoPortal, CoGbx, CoIndex) must:

- exclude obvious correlation keys
- summarize risk and reputation without leaking identity
- provide **explanations** to users about how their privacy is protected

---

## 6. Membership tiers, safety, and boundaries

Membership tiers (guest, provisional, full, steward) interact with safety as
follows:

- **guest**:
  - read only, no posting
- **provisional**:
  - limited participation in low risk spaces
- **full**:
  - deeper participation and mission access
- **steward**:
  - explicit duty of care for people and missions

If someone behaves in ways that conflict with the covenant:

- stewards may:
  - reduce capabilities
  - remove them from certain missions
  - pause or cancel membership
- but the system avoids:
  - public shaming
  - hostile call-out campaigns
  - design patterns that encourage mob behavior

The focus is on **protecting others**, not on punishing or humiliating
individuals.

---

## 7. Pay it forward value-vote pattern

For commercial leaning lanes and sibling front doors:

- the value-vote question is clearly labeled as **not a charge**
- users see nearby text:
  - “There is no charge today.”
  - “Your answer is anonymous and acts as a vote of support.”
  - “You receive provisional access either way.”
- a transparency box explains:
  - why this pattern exists
  - how aggregated responses are used
  - where to read the broader pricing and sustainability ethics

The detailed shared schema for this pattern lives in CoIndex under:

- `docs/intent/CoBus/CoBus_GroupBuild_PayItForward_Schema_v1.md`

---

## 8. Relationship to CoCivium, InSeed, CoPolitic

GroupBuild identity and safety design stays aligned with:

- **CoCivium.org**:
  - covenant and constitutional frame
  - identity and stewardship expectations
- **InSeed.com**:
  - strategy studio context and transparency
- **CoPolitic.org**:
  - civic lens on identity, power, and risk

This doc should evolve together with those sources rather than diverge.

---

## 9. Notes for future waves

Future work may include:

- more detailed threat models and mitigations
- concrete UI patterns for safety notices and consent
- joint specs with partners (municipalities, NGOs, enterprises)
- refined CoPortal and CoGbx schemas for identity and safety lanes
