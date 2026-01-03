#!/bin/bash
# Prompt Kit v1.2.1 Installer (Local Context Manager)

# GitHub Repository Base URL
REPO_URL="https://raw.githubusercontent.com/imincheol/odd-starter/main"
TEMPLATE_DIR="odd-template"
CONFIG_FILENAME=".pk_config"

# --- 1. [Initialization] 기존 설정 로드 또는 신규 설정 ---
load_config() {
    echo "🔍 기존 Prompt Kit 시스템을 검색 중..."
    
    # 후보군 검색
    CONFIG_CANDIDATES=()
    [ -f "$CONFIG_FILENAME" ] && CONFIG_CANDIDATES+=("./$CONFIG_FILENAME")
    [ -f ".prompt-kit/$CONFIG_FILENAME" ] && CONFIG_CANDIDATES+=(".prompt-kit/$CONFIG_FILENAME")
    
    if [ ${#CONFIG_CANDIDATES[@]} -gt 0 ]; then
        echo "💡 발견된 설정:"
        for i in "${!CONFIG_CANDIDATES[@]}"; do
            echo "  [$((i+1))] ${CONFIG_CANDIDATES[$i]}"
        done
        echo "  [n] 새로운 경로에 신규 설치"
        
        read -p "❓ 사용할 설정을 선택하세요 (1-${#CONFIG_CANDIDATES[@]} 또는 n): " choice
        
        if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -le "${#CONFIG_CANDIDATES[@]}" ]; then
            SELECTED_CONFIG="${CONFIG_CANDIDATES[$((choice-1))]}"
            echo "✅ $SELECTED_CONFIG 설정을 로드합니다."
            source "$SELECTED_CONFIG"
            IS_UPDATE=true
            return
        fi
    fi

    echo "🆕 신규 설치를 진행합니다."
    IS_UPDATE=false
}

save_config() {
    mkdir -p "$PK_DIR"
    cat <<EOF > "$PK_DIR/$CONFIG_FILENAME"
PK_PROJECT_NAME="$PK_PROJECT_NAME"
PK_PROJECT_GOAL="$PK_PROJECT_GOAL"
PK_DIR="$PK_DIR"
SPECS_DIR="$SPECS_DIR"
INSTALL_TEMPLATES="$INSTALL_TEMPLATES"
PK_VERSION="v1.2.1"
PK_PROMPT_NAME="$PK_PROMPT_NAME"
INSTALL_NAME="$INSTALL_NAME"
EOF
}

# --- 2. [Interactive Setup] 사용자 입력 ---
interactive_setup() {
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "   🚀 Prompt Kit (Local Context Manager) System v1.2.1"
    echo "   🔗 Architecture: Memory Cell & Local Context"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    [ -z "$PK_PROJECT_NAME" ] && read -p "❓ 프로젝트명 (예: core, fe...): " PK_PROJECT_NAME
    [ -z "$PK_PROJECT_GOAL" ] && read -p "❓ 핵심 목표: " PK_PROJECT_GOAL
    PK_PROJECT_GOAL=${PK_PROJECT_GOAL:-"지속 가능한 개발 기억을 만드는 것"}

    if [ -n "$PK_PROJECT_NAME" ] && [ "$PK_PROJECT_NAME" != "pk" ]; then
        DEFAULT_PK_DIR=".prompt-kit-$PK_PROJECT_NAME"
        PK_PROMPT_NAME="PROMPT_KIT-$PK_PROJECT_NAME.md"
        INSTALL_NAME="install-$PK_PROJECT_NAME.sh"
    else
        DEFAULT_PK_DIR=".prompt-kit"
        PK_PROMPT_NAME="PROMPT_KIT.md"
        INSTALL_NAME="install.sh"
    fi

    [ -z "$PK_DIR" ] && read -p "❓ Prompt Kit 폴더 경로 ($DEFAULT_PK_DIR): " input_dir && PK_DIR=${input_dir:-$DEFAULT_PK_DIR}
    [ -z "$SPECS_DIR" ] && read -p "❓ Specs 폴더 경로 (docs/specs): " input_specs && SPECS_DIR=${input_specs:-"docs/specs"}
    [ -z "$INSTALL_TEMPLATES" ] && INSTALL_TEMPLATES=true

    save_config
}

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
        sed -i.bak "s|{{ODD_DIR}}|$PK_DIR|g" "$FILE_PATH"
        sed -i.bak "s|{{PROMPT_KIT_DIR}}|$PK_DIR|g" "$FILE_PATH"
        sed -i.bak "s|{{SPECS_DIR}}|$SPECS_DIR|g" "$FILE_PATH"
        sed -i.bak "s|{{ODD_PROMPT_NAME}}|$PK_PROMPT_NAME|g" "$FILE_PATH"
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
fetch_system_file "$PK_DIR/reference/rules/odd-system.md" "$TEMPLATE_DIR/reference/rules/odd-system.md" true
fetch_system_file "$PK_DIR/setup/ODD_INIT.md" "$TEMPLATE_DIR/setup/ODD_INIT_TEMPLATE.md" true
fetch_system_file "$PK_DIR/setup/ODD_UPDATE.md" "$TEMPLATE_DIR/setup/ODD_UPDATE_TEMPLATE.md" true
fetch_system_file "$PK_DIR/setup/$INSTALL_NAME" "$TEMPLATE_DIR/setup/install.sh" true
fetch_system_file "$SPECS_DIR/README.md" "$TEMPLATE_DIR/specs/README.md" false

# Apply
apply_placeholders "$PK_DIR/$PK_PROMPT_NAME"
apply_placeholders "$PK_DIR/tasks/_template/order_template.md"
apply_placeholders "$PK_DIR/tasks/_template/progress_template.md"
apply_placeholders "$PK_DIR/tasks/_template/report_template.md"
apply_placeholders "$PK_DIR/tasks/roadmap.md"
apply_placeholders "$PK_DIR/reference/rules/odd-system.md"
apply_placeholders "$PK_DIR/setup/ODD_INIT.md"
apply_placeholders "$PK_DIR/setup/ODD_UPDATE.md"

# Directories
mkdir -p "$PK_DIR"/reference/{general,records,rules,summaries/domain,summaries/tech}
mkdir -p "$PK_DIR"/tasks/active
mkdir -p "$PK_DIR"/history/tasks/$(date +"%Y/%m")
mkdir -p "$PK_DIR"/history/reference/revision
mkdir -p "$SPECS_DIR"/{1_planning,2_design,3_development}

chmod +x "$PK_DIR/setup/$INSTALL_NAME"
echo "✅ Prompt Kit ($PK_PROJECT_NAME) 가동 준비 완료! (v1.2.1)"
echo "👉 진입점: $PK_DIR/$PK_PROMPT_NAME"
echo "👉 초기 가이드: $PK_DIR/setup/$(if [ "$IS_UPDATE" = true ]; then echo "ODD_UPDATE.md"; else echo "ODD_INIT.md"; fi)"