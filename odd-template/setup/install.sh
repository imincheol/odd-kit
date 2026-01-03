#!/bin/bash
# Prompt Kit v1.2.0 Installer (Local Context Manager)

# GitHub Repository Base URL
REPO_URL="https://raw.githubusercontent.com/imincheol/odd-starter/main"
TEMPLATE_DIR="odd-template"
CONFIG_FILENAME=".odd_config"

# --- 1. [Initialization] 기존 설정 로드 또는 신규 설정 ---
load_config() {
    echo "🔍 기존 Prompt Kit 시스템을 검색 중..."
    
    # 후보군 검색
    CONFIG_CANDIDATES=()
    [ -f "$CONFIG_FILENAME" ] && CONFIG_CANDIDATES+=("./$CONFIG_FILENAME")
    [ -f ".odd/$CONFIG_FILENAME" ] && CONFIG_CANDIDATES+=(".odd/$CONFIG_FILENAME")
    
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
    mkdir -p "$ODD_DIR"
    cat <<EOF > "$ODD_DIR/$CONFIG_FILENAME"
ODD_PROJECT_NAME="$ODD_PROJECT_NAME"
ODD_PROJECT_GOAL="$ODD_PROJECT_GOAL"
ODD_DIR="$ODD_DIR"
SPECS_DIR="$SPECS_DIR"
INSTALL_TEMPLATES="$INSTALL_TEMPLATES"
ODD_VERSION="v1.2.0"
ODD_PROMPT_NAME="$ODD_PROMPT_NAME"
INSTALL_NAME="$INSTALL_NAME"
EOF
}

# --- 2. [Interactive Setup] 사용자 입력 ---
interactive_setup() {
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "   🚀 Prompt Kit (Local Context Manager) System v1.2.0"
    echo "   🔗 Architecture: Memory Cell & Local Context"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    [ -z "$ODD_PROJECT_NAME" ] && read -p "❓ 프로젝트명 (예: core, fe...): " ODD_PROJECT_NAME
    [ -z "$ODD_PROJECT_GOAL" ] && read -p "❓ 핵심 목표: " ODD_PROJECT_GOAL
    ODD_PROJECT_GOAL=${ODD_PROJECT_GOAL:-"지속 가능한 개발 기억을 만드는 것"}

    if [ -n "$ODD_PROJECT_NAME" ] && [ "$ODD_PROJECT_NAME" != "odd" ]; then
        DEFAULT_ODD_DIR=".odd-$ODD_PROJECT_NAME"
        ODD_PROMPT_NAME="ODD_PROMPT-$ODD_PROJECT_NAME.md"
        INSTALL_NAME="install-$ODD_PROJECT_NAME.sh"
    else
        DEFAULT_ODD_DIR=".odd"
        ODD_PROMPT_NAME="ODD_PROMPT.md"
        INSTALL_NAME="install.sh"
    fi

    [ -z "$ODD_DIR" ] && read -p "❓ ODD 폴더 경로 ($DEFAULT_ODD_DIR): " input_dir && ODD_DIR=${input_dir:-$DEFAULT_ODD_DIR}
    [ -z "$SPECS_DIR" ] && read -p "❓ Specs 폴더 경로 (docs/specs): " input_specs && SPECS_DIR=${input_specs:-"docs/specs"}
    [ -z "$INSTALL_TEMPLATES" ] && INSTALL_TEMPLATES=true

    save_config
}

# ... (중략) ...

chmod +x "$ODD_DIR/setup/$INSTALL_NAME"
echo "✅ Prompt Kit ($ODD_PROJECT_NAME) 가동 준비 완료! (v1.2.0)"
echo "👉 진입점: $ODD_DIR/$ODD_PROMPT_NAME"
echo "👉 초기 가이드: $ODD_DIR/setup/$(if [ "$IS_UPDATE" = true ]; then echo "ODD_UPDATE.md"; else echo "ODD_INIT.md"; fi)"