#!/usr/bin/env bash
set -e

echo "=== START HERE ==="
echo "1) Open ONE_PAGE_MICRO_PLAYBOOK.md (or 1_ONE_PAGE_MICRO_PLAYBOOK.md)"
echo "2) Choose your profile under /2_PROFILES/"
echo "3) Run validation: bash tools/ci/validate_repo.sh"
echo "4) Follow /6_ONBOARDING/README.md"
echo "5) Implement lead capture SOP in /7_SOPS/"
echo "6) Load templates from /8_TEMPLATES/"
echo "7) Review KPIs in /10_KPIS_DASHBOARDS/kpi_definitions.csv"

if command -v open >/dev/null 2>&1; then
  open ONE_PAGE_MICRO_PLAYBOOK.md || open 1_ONE_PAGE_MICRO_PLAYBOOK.md || true
fi

