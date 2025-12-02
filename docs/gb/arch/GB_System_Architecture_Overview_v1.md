# GroupBuild System Architecture Overview v1

This document sketches a possible future architecture for a light GroupBuild app.

## Goals

- Support participant intake and matching.
- Track circles, participants, and experiments.
- Provide a simple interface for facilitators.
- Avoid unnecessary complexity in early stages.

## High-level components

- Web front-end:
  - Public marketing site (can be static).
  - Authenticated dashboard (optional, later).

- API / backend:
  - Handles intake form submissions.
  - Stores participant, circle, and experiment data.
  - Provides simple endpoints for basic dashboards.

- Data store:
  - Relational database (for example, Postgres).
  - Tables matching the data model sketch.

- Integrations (later):
  - Email / mailing list provider.
  - Calendaring (for scheduling sessions).
  - Chat / community tools (Discord, etc.).

## Privacy-first stance

- Collect only what is needed for matching and coordination.
- Allow pseudonyms and limited metadata.
- Provide clear deletion and export options when technically feasible.
