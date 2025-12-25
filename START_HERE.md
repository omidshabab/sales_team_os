Title: Start Here — Sales Team OS
Owner role: CEO or Project Owner
Last updated: 2025-12-25
Purpose: Guide the first-time user to quickly run, validate, and implement the sales system.
How to use (1-2 lines): Read this page end-to-end, perform the immediate actions, and follow the linked micro-playbook and profile materials.

1) WHY this repo exists
This repository enables any non-salesperson to launch and manage a predictable sales system. It contains profiles by company stage, clear SOPs, templates, dashboards, tech stack recommendations, and validation scripts so you can run sales confidently without external dependencies.

2) Who reads what
- CEO: `START_HERE.md`, `ONE_PAGE_MICRO_PLAYBOOK.md`, `/2_PROFILES/*/README.md`, `/15_ROLLOUT_PLAN/README.md`
- Non-sales hire or ops: `/7_SOPS/*`, `/8_TEMPLATES/*`, `/10_KPIS_DASHBOARDS/kpi_definitions.csv`, `/9_TECH_STACK/*`
- Recruiter: `/4_HIRING_PLAYBOOK/README.md`, `/3_ORG_CHART/*`, `/5_COMP_PLAN/README.md`
- Engineer: `/9_TECH_STACK/automations.md`, `/9_TECH_STACK/crm_mappings.yml`, `/tools/ci/validate_repo.sh`

3) Immediate actions (start here now)
1. Open `ONE_PAGE_MICRO_PLAYBOOK.md` and skim the system in 5 minutes.
2. Choose your stage under `/2_PROFILES/` (A, B, or C) and read its `README.md`.
3. Run validation: `bash tools/ci/validate_repo.sh` and confirm green.
4. Follow `/6_ONBOARDING/README.md` to set up accounts and calendars.
5. Implement lead capture and qualification SOP in `/7_SOPS/lead_capture_and_qualification.md`.
6. Load templates from `/8_TEMPLATES/` into your tools and send first outbound cadence.
7. Review KPIs in `/10_KPIS_DASHBOARDS/kpi_definitions.csv` and set weekly targets.

4) Learning path
1. Read: `ONE_PAGE_MICRO_PLAYBOOK.md`
2. Read: Your profile `README.md` in `/2_PROFILES/`
3. Do: `/6_ONBOARDING/README.md` checklist
4. Do: Quick wins in `/7_SOPS/` (lead capture, discovery, demo)
5. Use: `/8_TEMPLATES/` for emails, scripts, agenda, proposals
6. Implement: Full `playbook.md` in chosen profile

5) How to run validation
- Command: `bash tools/ci/validate_repo.sh`
- Green means: All required files exist and tests pass (`tests/validate_structure.py`), indicating this repo is ready for execution and onboarding.

