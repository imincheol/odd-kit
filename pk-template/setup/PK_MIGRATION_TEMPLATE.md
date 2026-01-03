# 🔄 Prompt Kit Migration Protocol (Migration Guide)

> **Prompt Kit Standard Protocol v1.2.1 (Local Context Manager)**
>
> **For AI Agent:**
> 이 프로젝트는 기존 **ODD System**을 사용 중입니다.
> 당신은 이 시스템을 최신 **Prompt Kit v1.2.1** 체계로 안전하게 마이그레이션해야 합니다.

---

## 🏗️ Migration Steps (반드시 순서대로 수행)

### 1단계: 물리적 구조 변경 (Physical Restructuring)
터미널 명령어를 사용하여 디렉토리와 핵심 파일명을 변경하십시오.

1.  **Rename Directory**: `.odd` -> `.prompt-kit` (가장 중요)
    ```bash
    mv .odd .prompt-kit
    ```
2.  **Rename Boot Loader**: `ODD_PROMPT.md` -> `PROMPT_KIT.md`
    ```bash
    mv .prompt-kit/ODD_PROMPT.md .prompt-kit/PROMPT_KIT.md
    ```
3.  **Update Config**: `.odd_config` -> `.pk_config`
    ```bash
    mv .prompt-kit/.odd_config .prompt-kit/.pk_config
    # 내용 중 ODD_~ 변수를 PK_~ 로 수정 필요
    ```

### 2단계: 파일 내용 치환 (Content Replacement)
주요 파일들의 내부 텍스트를 `v1.2.1` 스펙으로 업데이트하십시오.

- **Target**: `README.md`, `PROMPT_KIT.md`
- **Replace**:
    - `ODD` -> `Prompt Kit`
    - `Memory Cell` -> `Local Context` (필요시)
    - `odd-template` -> `pk-template`

### 3단계: Legacy 청산 (Cleanup)
더 이상 사용되지 않는 파일들을 삭제하거나 보관함으로 이동하십시오.

- `odd-system.md` 등의 구 버전 규칙 파일 삭제.
- `install.sh` 등 구 버전 스크립트 삭제.

---

## 🛡️ 안전 수칙
- **Backup First**: 불안하다면 `.odd` 폴더를 압축해서 백업해두십시오.
- **Incremental**: 한 번에 모든 것을 바꾸려 하지 말고, 디렉토리 변경부터 수행하십시오.
