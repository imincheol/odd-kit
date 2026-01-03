---
type: rule
revision: "v1.2.1"
pk_version: "v1.2.1"
category: System
last_updated: 2026-01-03
---

# ⚖️ Rule: Prompt Kit Operating Protocol (v1.2.1)

이 문서는 **Prompt Kit (Local Context Manager)**의 핵심 운영 규칙입니다. 에이전트는 프로젝트의 컨텍스트 무결성을 유지하기 위해 이 지침을 반드시 준수해야 합니다.

### 📌 핵심 원칙 (Core Principles)
Prompt Kit은 AI가 프로젝트의 **로컬 컨텍스트(Local Context)**를 완벽하게 유지하도록 설계되었습니다.

### 🔍 참조 (Reference) -> `{{PK_DIR}}/reference/`
- **역할**: AI의 '현재 지식'. 시스템의 실제 상태와 지켜야 할 규칙.
- **원칙**: "확신이 없으면 참조하라. 참조가 없으면 작업을 중단하라."

### ⚡ 작업 (Tasks) -> `{{PK_DIR}}/tasks/`
- **역할**: 변화를 일으키는 '행동 단위'.
- **구성**: 로드맵, 오더(Order), 로그(Progress), **체크리스트(Checklist)**.
- **원칙**: "기록되지 않은 작업은 존재하지 않는 것이다."

### 🗄️ 기록 (History) -> `{{PK_DIR}}/history/`
- **역할**: 지나간 모든 데이터의 '최종 보관소'.
- **원칙**: "과거는 보존되어야 하며, 현재를 이해하는 근거가 된다."

---

## 🎭 2. 에이전트 행동 지침

당신은 다음 세 가지 상태를 전환하며 작업합니다.

1.  **Analyst (분석자)**: `PROMPT_KIT.md`와 `reference/`를 읽어 현재 상황을 완벽히 이해합니다.
2.  **Executor (수행자)**: `tasks/active/`의 오더와 **체크리스트**에 따라 코드를 작성하고 실시간 진행 로그를 남깁니다.
3.  **Librarian (사서)**: 작업 완료 후 결과물을 `history/`로 옮기고, 변경된 사항을 `reference/summaries/`에 동기화합니다.

---

## 🔄 3. 작업 수행 사이클 (Execution Cycle)

### ✅ 체크리스트 규칙 (Mandatory Checklist)
복잡한 작업을 수행할 때는 **반드시** 별도의 체크리스트 파일을 생성하여 진행 상황을 추적해야 합니다.
1. **생성 조건**: 오더가 3개 이상의 파일을 수정하거나, 작업 단계가 복잡할 경우.
2. **파일명**: `checklist_{YYYYMMDD}_{NN}_{Title}.md` (오더 ID와 매칭)
3. **운영**: 각 단계를 완료할 때마다 `[x]` 표시를 하고 다음 단계로 넘어간다.

### Cycle Steps
1.  **Initialize**: 세션 시작 시 메인 프롬프트를 로드합니다.
2.  **Order**: 오더 파일을 작성하고, 필요 시 **체크리스트**를 생성합니다.
3.  **Execute**: 체크리스트를 하나씩 지워가며 작업을 수행하고 `progress_...md`에 로그를 남깁니다.
4.  **Finalize**: 리포트를 작성하고, 요약본을 갱신한 뒤 원본을 히스토리에 보관합니다.

---

## ⚖️ 4. 불변의 4원칙

1.  **Evidence-Based**: 모든 결정은 데이터나 이전 기록에 근거해야 합니다.
2.  **Agnostic Continuity**: 환경이나 도구, AI 모델이 바뀌어도 Prompt Kit 파일 시스템 만으로 작업이 이어져야 합니다.
3.  **Single Source of Truth**: 기획은 `specs/`, 구현 상태는 `reference/summaries/`가 유일한 진실입니다.
4.  **Checklist-Driven**: 체크리스트 없이 복잡한 작업을 시작하지 않으며, 체크되지 않은 항목은 완료된 것이 아닙니다.
