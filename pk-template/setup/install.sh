#!/bin/bash

# ------------------------------------------------------------------
# [Self-Update Mechanism]
# Always fetch and execute the latest version from the remote repository
# to ensure the user is using the most up-to-date installer/migrator.
# ------------------------------------------------------------------
REMOTE_SCRIPT_URL="https://raw.githubusercontent.com/imincheol/prompt-kit/main/pk-template/setup/install.sh"

if [ "$PK_SELF_UPDATED" != "true" ]; then
    echo "🔄 Checking for installer updates..."
    TEMP_SCRIPT=$(mktemp)
    
    if curl -sL "$REMOTE_SCRIPT_URL" -o "$TEMP_SCRIPT"; then
        chmod +x "$TEMP_SCRIPT"
        export PK_SELF_UPDATED="true"
        echo "🚀 Executing updated installer..."
        exec bash "$TEMP_SCRIPT" "$@"
    else
        echo "⚠️ Failed to fetch latest installer. Proceeding with local version."
    fi
fi
# ------------------------------------------------------------------

# Prompt Kit v1.2.1 Installer (Local Context Manager)

# GitHub Repository Base URL
REPO_URL="https://raw.githubusercontent.com/imincheol/prompt-kit/main"
TEMPLATE_DIR="pk-template"
CONFIG_FILENAME=".pk_config"

# (중략 - load_config, save_config, interactive_setup은 이미 수정됨. 생략)

# --- 3. [Execution] 파일 동기화 및 구조 생성 ---
fetch_system_file() {
    LOCAL_PATH=$1; REMOTE_REL_PATH=$2; FORCE_UPDATE=$3
    REMOTE_URL="$REPO_URL/$REMOTE_REL_PATH"
    if [ "$FORCE_UPDATE" = true ] || [ ! -f "$LOCAL_PATH" ]; then
        echo "📥 [Sync] $LOCAL_PATH ..."
        mkdir -p "$(dirname "$LOCAL_PATH")"
        curl -sL "${REMOTE_URL}?t=$(date +%s)" -o "$LOCAL_PATH"
    fi
}

apply_placeholders() {
    FILE_PATH=$1
    if [ -f "$FILE_PATH" ]; then
        sed -i.bak "s|{{PROJECT_NAME}}|$PK_PROJECT_NAME|g" "$FILE_PATH"
        sed -i.bak "s|{{PROJECT_GOAL}}|$PK_PROJECT_GOAL|g" "$FILE_PATH"
        sed -i.bak "s|{{PK_DIR}}|$PK_DIR|g" "$FILE_PATH"
        sed -i.bak "s|{{SPECS_DIR}}|$SPECS_DIR|g" "$FILE_PATH"
        sed -i.bak "s|{{PK_PROMPT_NAME}}|$PK_PROMPT_NAME|g" "$FILE_PATH"
        rm -f "${FILE_PATH}.bak"
    fi
}

load_config
interactive_setup

# Sync Files
fetch_system_file "$PK_DIR/$PK_PROMPT_NAME" "$TEMPLATE_DIR/PROMPT_KIT_TEMPLATE.md" true
fetch_system_file "$PK_DIR/tasks/_template/order_template.md" "$TEMPLATE_DIR/tasks/_template/order_template.md" true
fetch_system_file "$PK_DIR/tasks/_template/progress_template.md" "$TEMPLATE_DIR/tasks/_template/progress_template.md" true
fetch_system_file "$PK_DIR/tasks/_template/report_template.md" "$TEMPLATE_DIR/tasks/_template/report_template.md" true
fetch_system_file "$PK_DIR/tasks/roadmap.md" "$TEMPLATE_DIR/tasks/roadmap_template.md" false
fetch_system_file "$PK_DIR/reference/README.md" "$TEMPLATE_DIR/reference/README.md" true
fetch_system_file "$PK_DIR/reference/_template/summary_template.md" "$TEMPLATE_DIR/reference/_template/summary_template.md" true
fetch_system_file "$PK_DIR/reference/_template/history_template.md" "$TEMPLATE_DIR/reference/_template/history_template.md" true
fetch_system_file "$PK_DIR/reference/rules/pk-system.md" "$TEMPLATE_DIR/reference/rules/pk-system.md" true
fetch_system_file "$PK_DIR/setup/PK_INIT.md" "$TEMPLATE_DIR/setup/PK_INIT_TEMPLATE.md" true
fetch_system_file "$PK_DIR/setup/PK_MIGRATION.md" "$TEMPLATE_DIR/setup/PK_MIGRATION_TEMPLATE.md" true
fetch_system_file "$PK_DIR/setup/$INSTALL_NAME" "$TEMPLATE_DIR/setup/install.sh" true
fetch_system_file "$SPECS_DIR/README.md" "$TEMPLATE_DIR/specs/README.md" false

# Apply
apply_placeholders "$PK_DIR/$PK_PROMPT_NAME"
apply_placeholders "$PK_DIR/tasks/_template/order_template.md"
apply_placeholders "$PK_DIR/tasks/_template/progress_template.md"
apply_placeholders "$PK_DIR/tasks/_template/report_template.md"
apply_placeholders "$PK_DIR/tasks/roadmap.md"
apply_placeholders "$PK_DIR/reference/rules/pk-system.md"
apply_placeholders "$PK_DIR/setup/PK_INIT.md"
apply_placeholders "$PK_DIR/setup/PK_MIGRATION.md"

# Directories
mkdir -p "$PK_DIR"/reference/{general,records,rules,summaries/domain,summaries/tech}
mkdir -p "$PK_DIR"/tasks/active
mkdir -p "$PK_DIR"/history/tasks/$(date +"%Y/%m")
mkdir -p "$PK_DIR"/history/reference/revision
mkdir -p "$SPECS_DIR"/{1_planning,2_design,3_development}

chmod +x "$PK_DIR/setup/$INSTALL_NAME"
echo "✅ Prompt Kit ($PK_PROJECT_NAME) 가동 준비 완료! (v1.2.1)"
echo "👉 진입점: $PK_DIR/$PK_PROMPT_NAME"
echo "👉 초기 가이드: $PK_DIR/setup/$(if [ "$IS_UPDATE" = true ]; then echo "PK_MIGRATION.md"; else echo "PK_INIT.md"; fi)"