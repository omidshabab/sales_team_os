Title: Automations
Owner role: Engineer
Last updated: 2025-12-25
Purpose: Pseudo-webhook and automation logic for CRM events, plus a paste-ready snippet.
How to use (1-2 lines): Implement as serverless functions or CRM workflows; test on sandbox first.

Pseudo-logic
- On lead created: set `lifecycle_stage=lead`; route by territory; notify owner.
- On status change to SQL: create opportunity; set stage=discovery; assign AE.
- On stage → demo: send calendar invite; attach demo agenda.
- On closed_won: trigger handoff; create CSM task; mark renewal date.

One-line snippet
`POST /webhook/lead_status?lead_id={{lead.id}}&status={{new_status}}&owner={{owner.email}}`

