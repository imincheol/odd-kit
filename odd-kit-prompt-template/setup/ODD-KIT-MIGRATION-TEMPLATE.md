# 🔄 ODD Kit Migration Protocol (v1.x → v2.0.0)

> **ODD Kit v2.0.0 Migration Guide (Pure Memory Architecture)**

**For AI Agent (Template):**
이 가이드는 구버전 시스템을 최신 **ODD Kit v2.0.0** 체계로 안전하게 마이그레이션하기 위한 표준 절차입니다. v2.0.0의 핵심은 **Reference 레이어를 제거하고 모든 지식을 Memory Cells(SSOT)로 통합**하여 에이전트의 컨텍스트 참조 효율을 극대화하는 것입니다.

---

## 🏗️ Migration Steps

### 1단계: 디렉토리 및 파일명 변경 (Identity Normalization)

1. **Rename Directory**: 
   - `.odd/` 또는 `.prompt-kit/` → `.odd-kit/`
   - `odd-kit-template/` → `odd-kit-prompt-template/`

2. **Rename Boot Loader**: 
   - `ODD-KIT-PROMPT.md`, `PROMPT_KIT-*.md` → `ODD-KIT-{{PROJECT-NAME}}.md`

3. **Rename Config**: 
   - `.odd-config`, `.odd-kit-config` → `.odd-kit-config`
   - 내용 업데이트: `ODD-KIT_VERSION="v2.0.0"` 및 변수명 리팩토링 (`ODD-KIT_*`)

4. **Normalize Memory Cells**:
   - `odd-kit-*-v130.md` → `odd-kit-*-v200.md`
   - `odd-kit-system.md` → `memory/cells/tech/odd-kit-system-v200.md` (**Reference 통합**)

### 2단계: 내용 업데이트 (Content Migration)

1. **Global Replace**:
   ```bash
   "ODD Kit" → "ODD Kit"
   ".prompt-kit" → ".odd-kit"
   "odd-kit-version" → "odd-kit-version"
   "v1.3.0" → "v2.0.0"
   "odd-kit-template" → "odd-kit-prompt-template"
   ```

2. **Setup Files**:
   - `ODD-KIT-INIT.md` → `ODD-KIT_INIT.md`
   - `ODD-KIT-MIGRATION.md` → `ODD-KIT_MIGRATION.md`

### 3단계: 지식 통합 및 레거시 정리 (Knowledge Refinement)

1. **Reference-to-Memory Integration**:
   - `.odd-kit/reference/` 폴더 내의 모든 규칙과 가이드를 `memory/cells/`로 이동.
   - **`reference/` 디렉토리를 전면 삭제**. (v2.0.0은 정제된 4-계층 구조 - memory, tasks, history, setup - 만을 유지)

2. **Remove Dead Files**:
   - `memory/core/odd-prompt.md`
   - `setup/install-odd-starter.sh`
   - 빈 디렉토리 (`revision`, `general`, `records` 등) 삭제.

### 4단계: 구조 검증 (Verification)

1. **Check v2.0.0 Standard Structure**:
   ```
   .odd-kit/
   ├── ODD-KIT-{{PROJECT}}.md
   ├── .odd-kit-config
   ├── memory/
   │   ├── cells/tech/odd-kit-*-v200.md  (Rule 포함)
   │   └── core/
   ├── tasks/active/
   ├── history/tasks/
   └── setup/ODD-KIT_*.md
   ```

2. **Verify Boot Loader**:
   - 모든 링크가 `memory/cells/`를 직접 가리키는지 확인.
   - `reference/` 섹션이 제거되었는지 확인.

### 5단계: 삼대 구조 동기화 (Pillar Sync)

- **Turn-Memory-2**를 수행하여 `docs/specs/`, `odd-kit-prompt-template/`, `.odd-kit/`을 일치시킵니다.

---

## 🛡️ 안전 수칙

- **Atomic Checklist Update**: 체크리스트의 각 항목은 완료 즉시 개별적으로 체크하세요.
- **Explicit Reference**: 오더 수행 시 참조하는 메모리 셀을 반드시 명시하세요.

---

## 📊 Version History

- **v2.0.0**: ODD Kit 브랜딩, Reference-Memory 통합, 명시적 턴 시스템 정의
- **v1.3.0**: ODD Kit, Split-Turn Architecture (TM/TO)
- **v1.0.x**: ODD (Order-Driven Development) 원형
