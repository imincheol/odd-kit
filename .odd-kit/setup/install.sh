#!/bin/bash

# ODD-KIT v2.0.0 Installer
REPO_URL="https://raw.githubusercontent.com/imincheol/odd-starter/main"
TEMPLATE_DIR="odd-kit-prompt-template"
CONFIG_FILENAME=".odd-kit-config"

# --- 1. [Function] 기본 설정 및 사용자 입력 ---
load_config() {
    if [ -f ".odd-kit/$CONFIG_FILENAME" ]; then
        source ".odd-kit/$CONFIG_FILENAME"
        IS_UPDATE=true
    else
        IS_UPDATE=false
    fi
}

interactive_setup() {
    if [ "$IS_UPDATE" = false ]; then
        echo "🎨 ODD-KIT Setup (v2.0.0)"
        # 현재 디렉토리 이름을 기본 프로젝트명으로 제안
        DEFAULT_NAME=$(basename "$PWD")
        read -p "Project Name [$DEFAULT_NAME]: " ODDKIT_PROJECT_NAME
        ODDKIT_PROJECT_NAME=${ODDKIT_PROJECT_NAME:-$DEFAULT_NAME}
        
        read -p "Project Goal: " ODDKIT_PROJECT_GOAL
        ODDKIT_DIR=".odd-kit"
        ODDKIT_SPECS_DIR="docs/specs"
        # 파일명 자동 생성 스펙 반영
        ODDKIT_PROMPT_NAME="ODD-KIT-PROMPT-${ODDKIT_PROJECT_NAME}.md"
    fi
}

save_config() {
    mkdir -p "$ODDKIT_DIR"
    cat <<EOF > "$ODDKIT_DIR/$CONFIG_FILENAME"
ODDKIT_PROJECT_NAME="$ODDKIT_PROJECT_NAME"
ODDKIT_PROJECT_GOAL="$ODDKIT_PROJECT_GOAL"
ODDKIT_DIR="$ODDKIT_DIR"
ODDKIT_SPECS_DIR="$ODDKIT_SPECS_DIR"
ODDKIT_PROMPT_NAME="$ODDKIT_PROMPT_NAME"
ODDKIT_VERSION="v2.0.0"
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

# --- 실행 ---
load_config
interactive_setup
save_config

# 핵심 파일 동기화
fetch_system_file "$ODDKIT_DIR/$ODDKIT_PROMPT_NAME" "$TEMPLATE_DIR/ODD-KIT-PROMPT-TEMPLATE.md" true
fetch_system_file "$ODDKIT_DIR/tasks/template/order-template.md" "$TEMPLATE_DIR/tasks/template/order-template.md" true
fetch_system_file "$ODDKIT_DIR/tasks/template/progress-template.md" "$TEMPLATE_DIR/tasks/template/progress-template.md" true
fetch_system_file "$ODDKIT_DIR/tasks/template/report-template.md" "$TEMPLATE_DIR/tasks/template/report-template.md" true
fetch_system_file "$ODDKIT_DIR/tasks/roadmap.md" "$TEMPLATE_DIR/tasks/roadmap-template.md" false
fetch_system_file "$ODDKIT_DIR/memory/cells/tech/odd-kit-system-v200.md" "$TEMPLATE_DIR/memory/cells/tech/odd-kit-system-v200.md" true
fetch_system_file "$ODDKIT_DIR/setup/ODD-KIT-INIT.md" "$TEMPLATE_DIR/setup/ODD-KIT-INIT-TEMPLATE.md" true
fetch_system_file "$ODDKIT_DIR/setup/ODD-KIT-MIGRATION.md" "$TEMPLATE_DIR/setup/ODD-KIT-MIGRATION-TEMPLATE.md" true
fetch_system_file "$ODDKIT_DIR/setup/install.sh" "$TEMPLATE_DIR/setup/install.sh" true
fetch_system_file "$ODDKIT_SPECS_DIR/README.md" "$TEMPLATE_DIR/specs/README.md" false

# 플레이스홀더 치환 (내부 변수는 _ 사용, 템플릿의 플레이스홀더는 - 사용)
find "$ODDKIT_DIR" -type f -name "*.md" -exec sed -i '' "s|{{PROJECT-NAME}}|$ODDKIT_PROJECT_NAME|g" {} +
find "$ODDKIT_DIR" -type f -name "*.md" -exec sed -i '' "s|{{PROJECT-GOAL}}|$ODDKIT_PROJECT_GOAL|g" {} +
find "$ODDKIT_DIR" -type f -name "*.md" -exec sed -i '' "s|{{ODD-KIT-PROMPT-NAME}}|$ODDKIT_PROMPT_NAME|g" {} +
find "$ODDKIT_DIR" -type f -name "*.md" -exec sed -i '' "s|{{ODD-KIT-DIR}}|$ODDKIT_DIR|g" {} +
find "$ODDKIT_DIR" -type f -name "*.md" -exec sed -i '' "s|{{SPECS-DIR}}|$ODDKIT_SPECS_DIR|g" {} +

# 디렉토리 생성 (v2.0.0 정제된 구조)
mkdir -p "$ODDKIT_DIR"/memory/{core,cells/{domain,tech},template}
mkdir -p "$ODDKIT_DIR"/tasks/active
mkdir -p "$ODDKIT_DIR"/history/tasks/$(date +"%Y/%m")
mkdir -p "$ODDKIT_SPECS_DIR"/{1-planning,2-design,3-development}

chmod +x "$ODDKIT_DIR/setup/install.sh"

echo "✅ ODD-KIT ($ODDKIT_PROJECT_NAME) 가동 준비 완료! (v2.0.0)"
echo "👉 진입점: $ODDKIT_DIR/$ODDKIT_PROMPT_NAME"
echo "👉 초기 가이드: $ODDKIT_DIR/setup/$(if [ "$IS_UPDATE" = true ]; then echo "ODD-KIT-MIGRATION.md"; else echo "ODD-KIT-INIT.md"; fi)"