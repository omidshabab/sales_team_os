#!/usr/bin/env bash
set -euo pipefail

echo "[CI] Validating repository structure..."

required_paths=(
  "README.md"
  "START_HERE.md"
  "ASSUMPTIONS.md"
  "ONE_LINE_PROMPT_FOR_CRM_ENGINEER.txt"
  "ONE_PAGE_MICRO_PLAYBOOK.md"
  "LICENSE"
  ".editorconfig"
  ".gitignore"
  ".repo_meta.yaml"
  "CHANGELOG.md"
  "run.sh"
  "tools/ci/validate_repo.sh"
  "tests/validate_structure.py"
  "1_ONE_PAGE_MICRO_PLAYBOOK.md"
  "2_PROFILES/profile-A_solo-founder_PRE-SEED/README.md"
  "2_PROFILES/profile-B_scaleup_1M-20M/README.md"
  "2_PROFILES/profile-C_midmarket_20M-plus/README.md"
  "3_ORG_CHART/org_chart.json"
  "3_ORG_CHART/org_chart_ASCII.md"
  "7_SOPS/lead_capture_and_qualification.md"
  "8_TEMPLATES/cold_email_1.md"
  "9_TECH_STACK/automations.md"
  "10_KPIS_DASHBOARDS/kpi_definitions.csv"
  "learning_path/lesson_01.md"
  "role_play_scenarios/scenario_01.md"
)

missing=()
for p in "${required_paths[@]}"; do
  if [[ ! -e "$p" ]]; then
    missing+=("$p")
  fi
done

if (( ${#missing[@]} > 0 )); then
  echo "[CI] Missing required paths:"
  printf ' - %s\n' "${missing[@]}"
  exit 1
fi

echo "[CI] Running tests..."
python3 tests/validate_structure.py
echo "[CI] All checks green."

