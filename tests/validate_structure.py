#!/usr/bin/env python3
import json
import os
import csv
import sys

def must_exist(paths):
    missing = [p for p in paths if not os.path.exists(p)]
    if missing:
        print("Missing:", missing)
        sys.exit(1)

def check_header_block(md_path):
    with open(md_path, 'r', encoding='utf-8') as f:
        first_lines = [next(f).strip() for _ in range(5)]
    required = ["Title:", "Owner role:", "Last updated:", "Purpose:", "How to use"]
    for r in required:
        if not any(line.startswith(r) for line in first_lines):
            print(f"Header block missing in {md_path}")
            sys.exit(1)

def check_json_fields(json_path, fields):
    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    for field in fields:
        if field not in data:
            print(f"JSON field '{field}' missing in {json_path}")
            sys.exit(1)

def check_csv_has_columns(csv_path, columns):
    with open(csv_path, 'r', encoding='utf-8') as f:
        reader = csv.reader(f)
        header = next(reader)
    for c in columns:
        if c not in header:
            print(f"CSV column '{c}' missing in {csv_path}")
            sys.exit(1)

def main():
    must_exist([
        "README.md",
        "START_HERE.md",
        "ASSUMPTIONS.md",
        "ONE_PAGE_MICRO_PLAYBOOK.md",
        "CHANGELOG.md",
        "3_ORG_CHART/org_chart.json",
        "10_KPIS_DASHBOARDS/kpi_definitions.csv",
        "2_PROFILES/profile-A_solo-founder_PRE-SEED/kpis.csv",
        "2_PROFILES/profile-B_scaleup_1M-20M/kpis.csv",
        "2_PROFILES/profile-C_midmarket_20M-plus/kpis.csv",
    ])

    for md in [
        "README.md",
        "START_HERE.md",
        "ASSUMPTIONS.md",
        "ONE_PAGE_MICRO_PLAYBOOK.md",
        "CHANGELOG.md",
        "3_ORG_CHART/org_chart_ASCII.md",
        "7_SOPS/lead_capture_and_qualification.md",
        "8_TEMPLATES/cold_email_1.md",
        "9_TECH_STACK/automations.md",
    ]:
        check_header_block(md)

    check_json_fields("3_ORG_CHART/org_chart.json", ["roles"])

    check_csv_has_columns("10_KPIS_DASHBOARDS/kpi_definitions.csv", [
        "KPI","formula","frequency","target_A","target_B","target_C",
        "leading/lagging","sample_calc_A","sample_calc_B","sample_calc_C"
    ])

    print("validate_structure: OK")

if __name__ == "__main__":
    main()

