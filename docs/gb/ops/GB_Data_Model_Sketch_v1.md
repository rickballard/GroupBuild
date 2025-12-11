# GroupBuild Data Model Sketch v1

Minimal entities for a lightweight GroupBuild app.

## Participant

- id
- name_or_pseudonym
- email_or_contact
- timezone
- sector / background (optional)
- ai_impact_description (free text)
- goals (free text)
- role_interest (join / host / sponsor, multi)
- availability (structured enough for matching)
- created_at, updated_at


## Circle

- id
- track (Reinvent Work, Build a Cause, Ship a Side Project, etc.)
- status (planned, active, completed)
- start_date, end_date
- facilitator_id (can be a Participant or a distinct Facilitator record)
- meeting_cadence (weekly, etc.)
- notes (internal)


## CircleParticipant

- circle_id
- participant_id
- role (member, host)
- status (invited, active, dropped, completed)


## Experiment

- id
- participant_id
- circle_id
- week_index (optional)
- description
- status (planned, in_progress, complete, skipped)
- reflection (free text)
- created_at, updated_at


## SessionLog (optional)

- id
- circle_id
- date
- summary
- shared_resources (links, files)


This is intentionally simple; more structure can be added once real usage patterns are observed.
