#!/bin/bash
# ODD Starter v1.0.0 Installer (The Context-Order-Archive System)

# GitHub Repository Base URL
REPO_URL="https://raw.githubusercontent.com/imincheol/odd-starter/main"
TEMPLATE_DIR="odd-template"
CONFIG_FILENAME=".odd_config"

# --- 1. [Initialization] 기존 설정 로드 또는 신규 설정 ---
load_config() {
    echo "🔍 기존 ODD 시스템을 검색 중..."
    
    # 후보군 검색
    CONFIG_CANDIDATES=()
    [ -f "$CONFIG_FILENAME" ] && CONFIG_CANDIDATES+=("./$CONFIG_FILENAME")
    [ -f ".odd/$CONFIG_FILENAME" ] && CONFIG_CANDIDATES+=(".odd/$CONFIG_FILENAME")
    
    if [ ${#CONFIG_CANDIDATES[@]} -gt 0 ]; then
        echo "💡 발견된 ODD 설정:"
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
    mkdir -p "$ODD_DIR"
    cat <<EOF > "$ODD_DIR/$CONFIG_FILENAME"
ODD_PROJECT_NAME="$ODD_PROJECT_NAME"
ODD_PROJECT_GOAL="$ODD_PROJECT_GOAL"
ODD_DIR="$ODD_DIR"
SPECS_DIR="$SPECS_DIR"
INSTALL_TEMPLATES="$INSTALL_TEMPLATES"
ODD_VERSION="v1.0.0"
ATLAS_NAME="$ATLAS_NAME"
INSTALL_NAME="$INSTALL_NAME"
EOF
}

# --- 2. [Interactive Setup] 사용자 입력 ---
interactive_setup() {
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "   🚀 ODD (Order-Driven Development) System v1.0.0"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    [ -z "$ODD_PROJECT_NAME" ] && read -p "❓ 프로젝트명 (예: core, fe...): " ODD_PROJECT_NAME
    [ -z "$ODD_PROJECT_GOAL" ] && read -p "❓ 핵심 목표: " ODD_PROJECT_GOAL
    ODD_PROJECT_GOAL=${ODD_PROJECT_GOAL:-"지속 가능한 개발 기억을 만드는 것"}

    if [ -n "$ODD_PROJECT_NAME" ] && [ "$ODD_PROJECT_NAME" != "odd" ]; then
        DEFAULT_ODD_DIR=".odd-$ODD_PROJECT_NAME"
        ATLAS_NAME="atlas-$ODD_PROJECT_NAME.md"
        INSTALL_NAME="install-$ODD_PROJECT_NAME.sh"
    else
        DEFAULT_ODD_DIR=".odd"
        ATLAS_NAME="ATLAS.md"
        INSTALL_NAME="install.sh"
    fi

    [ -z "$ODD_DIR" ] && read -p "❓ ODD 폴더 경로 ($DEFAULT_ODD_DIR): " input_dir && ODD_DIR=${input_dir:-$DEFAULT_ODD_DIR}
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
        sed -i.bak "s|{{PROJECT_NAME}}|$ODD_PROJECT_NAME|g" "$FILE_PATH"
        sed -i.bak "s|{{PROJECT_GOAL}}|$ODD_PROJECT_GOAL|g" "$FILE_PATH"
        sed -i.bak "s|{{ODD_DIR}}|$ODD_DIR|g" "$FILE_PATH"
        sed -i.bak "s|{{SPECS_DIR}}|$SPECS_DIR|g" "$FILE_PATH"
        sed -i.bak "s|{{ATLAS_NAME}}|$ATLAS_NAME|g" "$FILE_PATH"
        rm -f "${FILE_PATH}.bak"
    fi
}


load_config
interactive_setup

# Sync Files
fetch_system_file "$ODD_DIR/$ATLAS_NAME" "$TEMPLATE_DIR/ATLAS_TEMPLATE.md" true
fetch_system_file "$ODD_DIR/tasks/_template/order_template.md" "$TEMPLATE_DIR/tasks/_template/order_template.md" true
fetch_system_file "$ODD_DIR/tasks/_template/progress_template.md" "$TEMPLATE_DIR/tasks/_template/progress_template.md" true
fetch_system_file "$ODD_DIR/tasks/_template/report_template.md" "$TEMPLATE_DIR/tasks/_template/report_template.md" true
fetch_system_file "$ODD_DIR/tasks/roadmap.md" "$TEMPLATE_DIR/tasks/roadmap_template.md" false
fetch_system_file "$ODD_DIR/context/README.md" "$TEMPLATE_DIR/context/README.md" true
fetch_system_file "$ODD_DIR/context/_template/logic_template.md" "$TEMPLATE_DIR/context/_template/logic_template.md" true
fetch_system_file "$ODD_DIR/context/_template/history_template.md" "$TEMPLATE_DIR/context/_template/history_template.md" true
fetch_system_file "$ODD_DIR/context/protocols/odd-system.md" "$TEMPLATE_DIR/context/protocols/odd-system.md" true
fetch_system_file "$ODD_DIR/setup/ODD_INIT.md" "$TEMPLATE_DIR/setup/ODD_INIT_TEMPLATE.md" true
fetch_system_file "$ODD_DIR/setup/ODD_UPDATE.md" "$TEMPLATE_DIR/setup/ODD_UPDATE_TEMPLATE.md" true
fetch_system_file "$ODD_DIR/setup/$INSTALL_NAME" "$TEMPLATE_DIR/setup/install.sh" true
fetch_system_file "$SPECS_DIR/README.md" "$TEMPLATE_DIR/specs/README.md" false

# Apply
# Apply
apply_placeholders "$ODD_DIR/$ATLAS_NAME"
apply_placeholders "$ODD_DIR/tasks/_template/order_template.md"
apply_placeholders "$ODD_DIR/tasks/_template/progress_template.md"
apply_placeholders "$ODD_DIR/tasks/_template/report_template.md"
apply_placeholders "$ODD_DIR/tasks/roadmap.md"
apply_placeholders "$ODD_DIR/context/protocols/odd-system.md"
apply_placeholders "$ODD_DIR/setup/ODD_INIT.md"
apply_placeholders "$ODD_DIR/setup/ODD_UPDATE.md"

# Directories
mkdir -p "$ODD_DIR"/context/{general,history,protocols,logic/domain,logic/tech}
mkdir -p "$ODD_DIR"/tasks/active
mkdir -p "$ODD_DIR"/archive/tasks/$(date +"%Y/%m")
mkdir -p "$ODD_DIR"/archive/context/revision
mkdir -p "$SPECS_DIR"/{1_planning,2_design,3_development}

chmod +x "$ODD_DIR/setup/$INSTALL_NAME"
echo "✅ ODD-$ODD_PROJECT_NAME 가동 준비 완료!"
echo "👉 초기 가이드: $ODD_DIR/setup/$(if [ "$IS_UPDATE" = true ]; then echo "ODD_UPDATE.md"; else echo "ODD_INIT.md"; fi)"