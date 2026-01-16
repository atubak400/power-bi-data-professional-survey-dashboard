#!/usr/bin/env bash
set -euo pipefail

# Project folder name
PROJECT_DIR="Power BI Survey Dashboard Analysis"

# Create folders
mkdir -p "${PROJECT_DIR}"/{data,powerbi,images,sql_or_dax,notes}

# Create placeholder files
touch "${PROJECT_DIR}/README.md"
touch "${PROJECT_DIR}/data/raw_data.xlsx"
touch "${PROJECT_DIR}/powerbi/project_dashboard.pbix"
touch "${PROJECT_DIR}/images/dashboard_overview.png"
touch "${PROJECT_DIR}/images/page_1.png"
touch "${PROJECT_DIR}/images/page_2.png"
touch "${PROJECT_DIR}/sql_or_dax/dax_measures.md"
touch "${PROJECT_DIR}/notes/data_cleaning.md"

echo "✅ Power BI project structure created at: ${PROJECT_DIR}"
