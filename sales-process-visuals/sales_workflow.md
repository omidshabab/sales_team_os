Title: Sales Workflow — Markdown Version
Owner role: RevOps Lead
Last updated: 2025-12-25
Purpose: Clear, text-based depiction of the end-to-end sales process with roles and decision points.
How to use (1-2 lines): Read top-to-bottom; use as the canonical reference for process execution and onboarding.

Overview
- Goal: Convert qualified demand into predictable revenue with a consistent, coachable process.
- Stages: Lead Capture → Qualification → Discovery → Demo → Proposal → Negotiation → Close → Handoff → Onboarding → Renewal &amp; Expansion.
- Owners: SDR (top-of-funnel), AE (evaluation/close), CSM (value/renewal), RevOps (systems/reporting).

ASCII Flow
```
Lead Capture [SDR/RevOps]
    |
    v
Qualification [SDR]
    |
    +--(Qualified?)--Yes--> Discovery [AE] --> Demo [AE] --> Proposal [AE]
    |                                        |                 |
    |                                        v                 v
    |                                   Negotiation [AE] --> Close Won [AE]
    |                                                        |
    |                                                        v
    |                                                   CSM Handoff [AE+CSM]
    |                                                        |
    |                                                        v
    |                                                   Onboarding [CSM]
    |                                                        |
    |                                                        v
    |                                             Renewal & Expansion [CSM+AE]
    |
    +--(Qualified?)--No--> Close Lost [AE]
```

Roles & Responsibilities
- SDR: Capture inbound, run outbound cadence, qualify, and book meetings.
- AE: Run discovery, deliver demo, manage proposal/negotiation, close deals.
- CSM: Own onboarding success, QBRs, renewal, and expansion plays.
- RevOps: Maintain CRM fields/workflows, dashboards, automations, and reporting.

Stage Definitions
- Lead Capture (Owner: SDR/RevOps)
  - Input: inbound forms, referrals, outbound lists
  - Output: new leads logged with source and owner
  - Key fields: `lead_source`, `lifecycle_stage=lead`
  - SLA: triage within 15 minutes for inbound
- Qualification (Owner: SDR)
  - Input: captured leads
  - Output: SQLs booked; non-fit marked lost
  - Framework: BANT-lite (Budget, Authority, Need, Timing)
  - Decision: Qualified? If no → Close Lost; if yes → Discovery
- Discovery (Owner: AE)
  - Input: SQL meeting
  - Output: confirmed pain, impact, requirements, decision process, timeline
  - Artifact: mutual action plan
- Demo (Owner: AE)
  - Input: discovery outcomes
  - Output: product validation; proof points; next-step agreement
  - Agenda: 20 minutes, tailored workflows and ROI
- Proposal (Owner: AE)
  - Input: demo agreement and scope
  - Output: priced proposal; terms aligned with discount matrix
- Negotiation (Owner: AE)
  - Input: proposal discussion
  - Output: final terms; approvals; timebound close plan
  - Rule: T-give/T-get; escalate exceptions to Head of Sales
- Close (Owner: AE)
  - Paths: Close Won or Close Lost
  - Output (Won): contract signed, billing verified, kickoff scheduled
- CSM Handoff (Owner: AE+CSM)
  - Input: closed-won deal
  - Output: handoff doc with goals, success metrics, stakeholders
- Onboarding (Owner: CSM)
  - Input: handoff and kickoff
  - Output: value realization milestones achieved
- Renewal &amp; Expansion (Owner: CSM+AE)
  - Input: usage, outcomes, QBR insights
  - Output: renewal and upsell motions

Decision Points & Branches
- Qualified? (SDR): route to Discovery if yes; mark Close Lost if no.
- Legal/Finance exceptions (AE/Head of Sales): approval required for non-standard terms.
- Renewal decision (CSM/AE): present value narrative; handle expansion signals.

Status & Fields (CRM)
- Lead: `lifecycle_stage=lead`
- SQL: `lifecycle_stage=SQL`, meeting set
- Opportunity: `stage=discovery|demo|proposal|negotiation`
- Close: `stage=closed_won|closed_lost`, `amount`, `close_date`

Time Guidance (typical)
- SDR qualification: 10–15 minutes
- Discovery: 20–30 minutes
- Demo: 20 minutes
- Proposal/Negotiation: 30–60 minutes total across 1–2 calls
- Handoff: 15–30 minutes

Notes
- This markdown mirrors the intent of `sales_workflow.svg` but is optimized for quick comprehension.
- For visuals, open `sales-process-visuals/sales_workflow.svg`.
