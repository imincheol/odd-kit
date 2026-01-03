#!/bin/bash

# Prompt Kit v1.3.0 Installer
REPO_URL="https://raw.githubusercontent.com/imincheol/odd-starter/main"
TEMPLATE_DIR="pk-template"
CONFIG_FILENAME=".pk_config"

# --- 1. [Function] 기본 설정 및 사용자 입력 ---
load_config() {
    if [ -f ".prompt-kit/$CONFIG_FILENAME" ]; then
        source ".prompt-kit/$CONFIG_FILENAME"
        IS_UPDATE=true
    else
        IS_UPDATE=false
    fi
}

interactive_setup() {
    if [ "$IS_UPDATE" = false ]; then
        echo "🎨 Prompt Kit Setup (v1.3.0)"
        # 현재 디렉토리 이름을 기본 프로젝트명으로 제안
        DEFAULT_NAME=$(basename "$PWD")
        read -p "Project Name [$DEFAULT_NAME]: " PK_PROJECT_NAME
        PK_PROJECT_NAME=${PK_PROJECT_NAME:-$DEFAULT_NAME}
        
        read -p "Project Goal: " PK_PROJECT_GOAL
        PK_DIR=".prompt-kit"
        SPECS_DIR="docs/specs"
        # 파일명 자동 생성 스펙 반영
        PK_PROMPT_NAME="PROMPT_KIT-${PK_PROJECT_NAME}.md"
        INSTALL_NAME="install.sh"
    fi
}

save_config() {
    mkdir -p "$PK_DIR"
    cat <<EOF > "$PK_DIR/$CONFIG_FILENAME"
PK_PROJECT_NAME="$PK_PROJECT_NAME"
PK_PROJECT_GOAL="$PK_PROJECT_GOAL"
PK_DIR="$PK_DIR"
SPECS_DIR="$SPECS_DIR"
PK_PROMPT_NAME="$PK_PROMPT_NAME"
PK_VERSION="v1.3.0"
EOF
}

# --- 2. [Execution] 파일 동기화 및 구조 생성 ---
fetch_system_file() {
    LOCAL_PATH=$1; REMOTE_REL_PATH=$2; FORCE_UPDATE=$3
    # 로컬 템플릿이 있으면 우선 사용, 없으면 원격에서 가져옴
    if [ -d "$TEMPLATE_DIR" ]; then
        cp "$TEMPLATE_DIR/${REMOTE_REL_PATH#$TEMPLATE_DIR/}" "$LOCAL_PATH"
    else
        REMOTE_URL="$REPO_URL/$REMOTE_REL_PATH"
        curl -sL "${REMOTE_URL}?t=$(date +%s)" -o "$LOCAL_PATH"
    fi
}

apply_placeholders() {
    FILE_PATH=$1
    if [ -f "$FILE_PATH" ]; then
        sed -i '' "s|{{PROJECT_NAME}}|$PK_PROJECT_NAME|g" "$FILE_PATH"
        sed -i '' "s|{{PROJECT_GOAL}}|$PK_PROJECT_GOAL|g" "$FILE_PATH"
        sed -i '' "s|{{PK_DIR}}|$PK_DIR|g" "$FILE_PATH"
        sed -i '' "s|{{SPECS_DIR}}|$SPECS_DIR|g" "$FILE_PATH"
        sed -i '' "s|{{PK_PROMPT_NAME}}|$PK_PROMPT_NAME|g" "$FILE_PATH"
    fi
}

# --- 실행 ---
load_config
interactive_setup
save_config

# 핵심 파일 동기화 (설정된 PK_PROMPT_NAME 사용)
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
fetch_system_file "$PK_DIR/setup/install.sh" "$TEMPLATE_DIR/setup/install.sh" true
fetch_system_file "$SPECS_DIR/README.md" "$TEMPLATE_DIR/specs/README.md" false

# 플레이스홀더 치환
find "$PK_DIR" -type f -name "*.md" -exec sed -i '' "s|{{PROJECT_NAME}}|$PK_PROJECT_NAME|g" {} +
find "$PK_DIR" -type f -name "*.md" -exec sed -i '' "s|{{PK_PROMPT_NAME}}|$PK_PROMPT_NAME|g" {} +
find "$PK_DIR" -type f -name "*.md" -exec sed -i '' "s|{{PK_DIR}}|$PK_DIR|g" {} +
find "$PK_DIR" -type f -name "*.md" -exec sed -i '' "s|{{SPECS_DIR}}|$SPECS_DIR|g" {} +

# 디렉토리 생성
mkdir -p "$PK_DIR"/reference/{general,records,rules,summaries/domain,summaries/tech}
mkdir -p "$PK_DIR"/memory/{core,cells/{domain,tech},_template}
mkdir -p "$PK_DIR"/tasks/active
mkdir -p "$PK_DIR"/history/tasks/$(date +"%Y/%m")
mkdir -p "$PK_DIR"/history/reference/revision
mkdir -p "$SPECS_DIR"/{1_planning,2_design,3_development}

chmod +x "$PK_DIR/setup/install.sh"

echo "✅ Prompt Kit ($PK_PROJECT_NAME) 가동 준비 완료! (v1.3.0)"
echo "👉 진입점: $PK_DIR/$PK_PROMPT_NAME"
echo "👉 초기 가이드: $PK_DIR/setup/$(if [ "$IS_UPDATE" = true ]; then echo "PK_MIGRATION.md"; else echo "PK_INIT.md"; fi)"