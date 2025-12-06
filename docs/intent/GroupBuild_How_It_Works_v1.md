# GroupBuild.org – How it works v1

This page describes the **flow** for joining and using GroupBuild.org as a
mission owner, squad member, steward, or partner.

It is a sibling to:

- `GroupBuild_Site_Identity_Spec_v1.md`
- `GroupBuild_Home_Copy_v1.md`

and is meant to guide the initial product and UX decisions.

---

## 1. Starting points

People and AIs arrive at GroupBuild from several directions:

- direct navigation to GroupBuild.org
- links from InSeed.com, CoPolitic.org, CoCivium.org
- referrals from existing missions, squads, or stewards
- AI agents following CoPortal and CoIndex entries

The home page presents three primary paths:

1. **Browse missions**
2. **Join or form a squad**
3. **Learn how identity, safety, and Digital Halos work**

This document explains what happens after a user chooses one of those paths.

---

## 2. Light-weight onboarding

### 2.1 Guest mode

Someone can browse **public missions** as a guest:

- no account required
- limited to read-only mission and squad views
- no posting, commenting, or joining

Guests see clear prompts:

- “Create a provisional profile to join this mission”
- “Learn how pseudonymous identity and Digital Halos work”

### 2.2 Provisional profile

When a visitor wants to participate, they create a **provisional profile**:

- choose a **handle** (pseudonymous persona)
- agree to the **CoCivium-aligned covenant** for behavior
- answer the **pay it forward value-vote question** (for commercial lanes):
  - “If this ever charged per month, what would feel fair to you?”
  - there is no charge today
  - the answer is anonymous and acts as a value vote

Output:

- the persona receives a **starter Digital Halo**
- membership tier: `provisional`
- capabilities:
  - comment on missions that accept provisional members
  - join low-risk missions as a contributor
  - follow missions and receive updates

---

## 3. Mission-centric flow

### 3.1 Browsing missions

From the **Missions** view, a user can:

- filter by theme, maturity, and openness
- click into a mission detail page
- see:
  - problem statement
  - current squad and open roles
  - basic risk or complexity flag
  - links to related missions or ecosystems

### 3.2 Joining a mission

If the mission is open to their tier and Halo:

- they click “Join this mission”
- choose a role (contributor, reviewer, steward-in-training, sponsor)
- see a short checklist:
  - read the mission covenant and constraints
  - understand expectations for communication and time
  - confirm understanding of any sensitive data boundaries

On success:

- the mission’s squad roster updates
- the user’s Halo now reflects participation in that mission

### 3.3 Proposing a mission

To start a new mission, a user:

1. clicks **Start a mission**
2. fills a guided form:
   - problem statement
   - why this matters (civic, commercial, or hybrid)
   - early thoughts on outcomes
   - risk and sensitivity (rough self-assessment)
3. chooses visibility:
   - open to all
   - invite-only
   - steward-curated

In early versions:

- newly proposed missions may enter a **steward review queue**
- stewards can:
  - approve as-is for open listing
  - suggest edits for clarity or safety
  - restrict to certain Halo levels or partner lanes

---

## 4. Squads and roles

### 4.1 Squad composition

Each mission can have a squad with roles such as:

- **mission owner / convener**
- **contributors** (design, engineering, research, comms, etc)
- **steward / steward-in-training**
- **partner contacts** (if a municipality, NGO, or enterprise is involved)

Squads are designed to be:

- **small and focused**
- **traceable** via Digital Halos and mission history
- **supported, not micromanaged** by stewards and the broader ecosystem

### 4.2 Onboarding into a squad

Joining a squad typically includes:

- a short internal **orientation note** or call
- confirmation of communication channels
- agreement on the initial scope and decision rails

The system should make it easy to:

- see who is currently active
- know how to step back or hand off gracefully
- record decisions, key artifacts, and learnings

---

## 5. Digital Halos, MeritRank, and capabilities

GroupBuild uses **Digital Halos** and **MeritRank** to express reputation and
capabilities without exposing legal identity.

High-level principles:

- **earned, not bought**:
  - Halos grow as people ship work and behave well over time
- **capability, not clout**:
  - higher levels unlock responsibilities rather than status games
- **boundary-setting, not punishment**:
  - harmful patterns lead to reduced capabilities or quiet membership pauses

Capabilities linked to Halo and tier may include:

- ability to propose missions that go public without pre-review
- ability to steward sensitive topics
- ability to sponsor others into higher-risk spaces

The detailed Halo and MeritRank specification lives in CoIndex
(`CoHalo_MeritRank_Spec_v1.md`) and is shared across CoSuite.

---

## 6. Membership tiers and progression

Common tiers (shared with CoBus schema):

- `guest`:
  - browse public missions and pages
- `provisional`:
  - starter Halo, basic participation
- `full`:
  - stronger Halo and steward trust
  - expanded mission and squad capabilities
- `steward`:
  - explicit stewardship responsibilities and guardrails

Progression is based on:

- completed contributions
- peer and steward feedback
- time in good standing
- alignment with CoCivium ethics and covenant

---

## 7. Identity and safety integration

This How it works doc should be read together with
**GroupBuild_Identity_And_Safety_v1.md**, which explains:

- how pseudonymous personas work
- how sensitive missions handle extra attestations
- how anti-doxing and export constraints function
- how the pay it forward value-vote pattern is communicated transparently

---

## 8. AI-facing behavior

The AI facing CoPortal and CoGbx layers should be able to:

- list missions and their states
- describe roles and required skills
- explain membership tiers and pay it forward pattern
- help users find missions that fit their Halo and interests

The exact machine readable schema is defined in CoIndex and CoGbx exports
but should stay aligned with this human facing narrative.
