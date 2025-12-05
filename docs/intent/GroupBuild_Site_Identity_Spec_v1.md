# GroupBuild.org – Site & Identity Spec v1

## 1. Purpose

GroupBuild.org /.com is the **collaborative build front door** for CoCivium:

- A place where people, AIs, and orgs can **spin up missions, squads, and projects**.
- A neutral coordination surface for work that may be civic, commercial, or hybrid.
- A reputation-aware space where **Digital Halos** and **MeritRank** help people
  trust who they are working with, even when legal identity is not exposed.

The site should feel immediately:

- **Inviting** – low-friction, friendly, not “enterprise portal” cold.
- **Useful** – clear CTAs to “See live missions,” “Join a squad,” “Propose a mission.”
- **Trust-aware** – reputation and safety are visible, but not weaponized.

## 2. Primary audiences

1. **Builders / Contributors**
   - Individuals who want to contribute time, skills, or funds.
   - Expect clear “what can I do in 5 minutes?” on-ramp.
2. **Mission Owners / Conveners**
   - People with a problem, idea, or brief who want a squad to form around it.
3. **Stewards / Curators**
   - People who help vet missions, moderate disputes, and guide evolution.
4. **AI Agents / CoPortals**
   - AIs that read GroupBuild via CoPortals / registries to:
     - fetch mission catalogs,
     - fetch reputational signals,
     - propose next steps.

## 3. Brand position and copy tone

- Tone: **calm, pragmatic, hopeful**. Not hypey, not doom.
- Visual: “builders around a table,” “squads working on missions,” not lone geniuses.
- Emphasize:
  - “Build together, safely”  
  - “Reputation follows your contributions, not your legal identity”
  - “Aligned with CoCivium ethics and CoPolitic civic lens”

Short canonical tagline seed:

> **GroupBuild** – missions, squads, and reputations for a hybrid society.

## 4. Core site structure (human-facing)

Suggested top-level navigation:

- **Home**
  - Hero: short explainer, 1–2 sentences + primary CTA: “Browse missions”
  - Secondary CTA: “Start a mission”
  - Short explainer boxes:
    - “What is a Digital Halo?”
    - “How trust works here”
    - “How we relate to CoCivium, CoPolitic.org, and InSeed.com”
- **Missions**
  - Filterable list:
    - by theme (climate, democracy, infrastructure, education, etc.)
    - by maturity (idea, forming, active, archived)
    - by openness (open to all, invite-only, steward-curated)
  - Each mission card shows:
    - short problem statement
    - current squad size
    - required skills
    - basic risk flag (low / medium / high complexity or sensitivity)
- **Squads / People**
  - Expose **Digital Halos**:
    - high-level reputation tier (e.g., Seed, Sprout, Grove, Forest; or Bronze/Silver/Gold/etc.).
    - trust indicators (number of missions, completion record, endorsements).
  - Clarify that a Halo is:
    - **pseudonymous** (no legal identity required),
    - **earned** through contributions and community review,
    - **not a weapon** (no public “blacklists” or shaming rails).
- **How it works**
  - Step-by-step flow:
    - Sign in / create pseudonymous profile.
    - Get a starter Halo (low power).
    - Join a mission or propose one.
    - Earn reputation by:
      - shipping artifacts,
      - attending sessions,
      - getting positive peer feedback,
      - aligning with CoCivium ethics.
  - Explain that **membership can be paused or removed** if behavior diverges
    from the covenant, but:
    - no public pillory,
    - no doxing,
    - focus is on **boundary-setting, not punishment**.
- **For stewards / partners**
  - How funders, NGOs, municipalities, enterprises can:
    - sponsor missions,
    - provide domain experts,
    - host CoCivium-aligned experiments.

Footer:

- Link cluster:
  - InSeed.com (strategy studio / founder context)
  - CoPolitic.org (civic & policy narrative)
  - CoCivium.org (covenant / constitution / ecosystem)
  - CoGbx AI portal (for AIs and power users)

## 5. Identity, Digital Halo, and MeritRank

### 5.1 Goals

- Enable **trustworthy collaboration** without forcing legal identity exposure.
- Make reputational signals:
  - **legible** (people understand what a Halo means),
  - **gradual** (small steps, not instant “trusted elder”),
  - **non-weaponized** (no public humiliation, no mass brigading tools).

### 5.2 Identity primitives

A “user” in GroupBuild is defined by:

- One or more **pseudonymous personas** (handles).
- A **Digital Halo** attached to each persona, which:
  - tracks contribution history,
  - expresses **MeritRank** (derived from events, not vibes),
  - reflects **inferred intent** over time (helpful vs harmful patterns).

Halos are:

- **portable across GroupBuild, CoPolitic, and CoCivium**, via shared metadata.
- **opaque to the outside world** (no automatic linkage to legal identity).
- **protected against doxing**:
  - the system design explicitly avoids exporting correlation keys that
    would make re-identification trivial for external AIs.

### 5.3 Reputation mechanics

Inputs to MeritRank / Halo evolution might include:

- Completed tasks tied to missions.
- Peer endorsements (bounded, weighted, and rate-limited).
- Steward reviews (e.g., resolving conflicts, handling sensitive topics).
- Time-in-good-standing: long periods of non-abusive participation.

Outputs:

- Tiered Halo levels (e.g., Seed → Sprout → Grove → Forest).
- Expanded **capabilities** rather than raw status:
  - ability to convene missions,
  - ability to steward sensitive topics,
  - ability to sponsor others into higher-risk spaces.

Importantly:

- There is **no public “negative score” rail**.
- The system uses:
  - **revocation of capabilities**,
  - **mission or space removal**,
  - **quiet account freezing / membership cancellation**,
  instead of public shaming.

We treat exclusion as a **boundary-setting tool**, not as social coercion:
- It is used to protect others, not to punish or humiliate.
- This distinction should be explicitly documented in CoCivium ethics.

### 5.4 Safety and anti-doxing stance

- GroupBuild explicitly does **not**:
  - publish cross-platform identifiers (emails, phone numbers, social accounts),
  - expose IP-based or device-based fingerprints,
  - provide export APIs that would trivially allow external AIs to correlate
    persona behavior with real-world identity.

- Any “identity verification” for sensitive missions happens via:
  - trusted **third-party stewards**,
  - **compartmentalized attestations** (e.g., “verified health professional”)
    without revealing underlying legal identity to other participants.

## 6. Architecture & AI-facing view

GroupBuild.org should be **CoPortal-ready**:

- Human-facing site:
  - built as a standard modern web app (static-first, progressive enhancement).
- AI-facing CoPortal:
  - exposes:
    - machine-readable mission catalogs,
    - Halo / MeritRank summaries (with privacy guards),
    - process docs for how to propose and evolve missions.
  - Lives under a dedicated path or domain (e.g., `/ai/` or `ai.groupbuild.org`)
    and is registered via CoIndex’s CoPortal registry.

Key design constraints:

- Everything important for orchestration should be:
  - **versioned in repos**,
  - **discoverable via CoIndex / CoGbx**,
  - **annotated with cometatrain / GIBindex metadata** where relevant.

## 7. Relationship to InSeed.com, CoPolitic.org, and CoCivium.org

- **InSeed.com**:
  - Speaks to strategists, investors, enterprise leaders.
  - GroupBuild should link to InSeed for:
    - background on founder / studio,
    - deep strategy / capital stack explanations.

- **CoPolitic.org**:
  - Carries the **civic and policy narrative**.
  - GroupBuild should link to CoPolitic for:
    - “why this matters for democracy / civic life”,
    - policy experiments, civic protocols, and ethics.

- **CoCivium.org**:
  - The covenant / constitution and overall hybrid-society frame.
  - GroupBuild should reference CoCivium for:
    - the ethical framework behind Digital Halos and MeritRank,
    - stewardship expectations,
    - CoCivium-aligned mission categories.

Default footer / boilerplate snippet seed:

> GroupBuild is part of the CoCivium ecosystem, alongside **InSeed.com**
> (strategy studio), **CoPolitic.org** (civic and policy narrative), and
> **CoCivium.org** (covenant and constitution).

## 8. First version feature priorities

For the **MVP GroupBuild site**, prioritize:

1. **Mission list + detail pages**
   - Filterable, human-readable, AI-friendly.
2. **Simple account + Halo stub**
   - Even a basic, non-persistent placeholder UI that explains what Halos will be.
3. **Mission creation flow (guided)**
   - Opinionated template that encourages:
     - clear problem statements,
     - safety considerations,
     - alignment with CoCivium ethics.
4. **Identity & safety explainer**
   - One dedicated page that:
     - explains pseudonymity vs anonymity,
     - explains Digital Halos and MeritRank,
     - clarifies non-coercive boundary-setting approach.

Later waves can deepen:

- full Halo / MeritRank stack,
- integration with CoPolitic / CoCivium identity primitives,
- advanced squad dashboards and metrics.

## 9. Notes for future sessions

- CoIndex / CoBus should be updated to:
  - know that **GroupBuild_Site_Identity_Spec_v1.md** is the canonical seed
    for GroupBuild.org front-door design,
  - route CoAgent / CoArena / CoPolitic sessions here when they need
    GroupBuild site context.

- Future MegaWaves can:
  - generate wireframes based on this spec,
  - produce React/Tailwind implementations,
  - attach cometatrain metadata for asset self-voice.
