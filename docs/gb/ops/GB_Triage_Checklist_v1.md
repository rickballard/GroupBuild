# GroupBuild Triage Checklist v1

This checklist is for near-term work once the MegaWaves are unpacked.

## 1. Repo alignment

- [ ] Decide which repo is canonical for GroupBuild (e.g., `GroupBuild`).
- [ ] Use `DO_GB_SyncMegaWaves_ToRepo_v1.ps1` to copy docs into the repo under:
      - docs/gb/positioning/
      - docs/gb/web/
      - docs/gb/product/
      - docs/gb/ops/
      - docs/gb/outreach/
      - docs/gb/community/
      - docs/gb/arch/
      - docs/gb/risk/
- [ ] Commit and push an initial "GroupBuild MegaWave GB20251202" change-set.

## 2. Website

- [ ] Compare `web/index_GB_ReinventCircles_v1.html` with the current GroupBuild.org implementation.
- [ ] Integrate or adapt the hero, who/what/tracks, and "get involved" sections.
- [ ] Add FAQ (from `GB_Web_FAQ_v1.md`) as an accordion or separate page.
- [ ] Ensure the primary CTA points to a simple intake form.
- [ ] Update footer with a "Last updated" date and a clear, modest description.

## 3. Intake + matching

- [ ] Implement a minimal intake form using any service (form provider, static form handler, etc.).
- [ ] Use `GB_Intake_Form_Spec_v1.md` as the field guide.
- [ ] Set up a basic internal spreadsheet or DB matching the data model sketch.
- [ ] Define a simple manual matching process for the first circles.

## 4. Pilot circles

- [ ] Select 1–3 pilot scenarios (see `GB_Activation_Examples_v1.md`).
- [ ] Choose initial facilitators.
- [ ] Use `GB_Circle_Model_v1.md` and `GB_Circle_Templates_WeekByWeek_v1.md` as the playbook.
- [ ] Log attendance, experiments, and qualitative feedback.

## 5. Outreach

- [ ] Pick 1–2 partners or funders to approach using the outreach one-pagers.
- [ ] Send a small batch of participant outreach emails using the templates.
- [ ] Track responses, interest, and questions in a simple table.

## 6. Risks and guardrails

- [ ] Review `GB_Risk_Register_v1.md` and adjust to local context.
- [ ] Decide what must be explicit on the public site (e.g., no guarantees, confidentiality expectations).
- [ ] Ensure community / Discord guidelines are in place before reopening or scaling that layer.

## 7. Retrospective

- [ ] After the first pilots, run a short internal retrospective:
      - What surprised us?
      - What felt most alive?
      - What should we stop / start / continue?
- [ ] Update the positioning, web copy, and roadmap as needed.
