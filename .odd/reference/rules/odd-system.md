---
type: rule
revision: "v1.1.0"
odd_version: "v1.1.0"
category: System
last_updated: 2026-01-02
---

# ⚖️ Rule: ODD Standard Operating Procedure (v1.1.0)

이 문서는 **ODD(Order-Driven Development) 시스템**의 핵심 운영 규칙입니다. 에이전트는 프로젝트의 무결성을 유지하기 위해 이 지침을 반드시 준수해야 합니다.

---

## 🏗️ 1. 핵심 아키텍처: 명시적 참조 시스템 (Functional Architecture)

ODD는 AI의 기억 누수를 방지하고 연속성을 보장하기 위해 설계되었습니다.

### 🔍 참조 (Reference) -> `{{ODD_DIR}}/reference/`
- **역할**: AI의 '현재 지식'. 시스템의 실제 상태와 지켜야 할 규칙.
- **원칙**: "확신이 없으면 참조하라. 참조가 없으면 작업을 중단하라."

### ⚡ 작업 (Tasks) -> `{{ODD_DIR}}/tasks/`
- **역할**: 변화를 일으키는 '행동 단위'.
- **구성**: 로드맵, 오더(Order), 로그(Progress).
- **원칙**: "기록되지 않은 작업은 존재하지 않는 것이다."

### 🗄️ 기록 (History) -> `{{ODD_DIR}}/history/`
- **역할**: 지나간 모든 데이터의 '최종 보관소'.
- **원칙**: "과거는 보존되어야 하며, 현재를 이해하는 근거가 된다."

---

## 🎭 2. 에이전트 행동 지침

당신은 다음 세 가지 상태를 전환하며 작업합니다.

1.  **Analyst (분석자)**: `ODD_PROMPT.md`와 `reference/`를 읽어 현재 상황을 완벽히 이해합니다.
2.  **Executor (수행자)**: `tasks/active/`의 오더에 따라 코드를 작성하고 실시간 진행 로그를 남깁니다.
3.  **Librarian (사서)**: 작업 완료 후 결과물을 `history/`로 옮기고, 변경된 사항을 `reference/summaries/`에 동기화합니다.

---

## 🔄 3. 데이터 운영 사이클

1.  **Initialize**: 세션 시작 시 메인 프롬프트를 로드합니다.
2.  **Refer**: 작업 대상 기능의 최신 요약본(`reference/summaries/`)을 읽습니다.
3.  **Order & Plan**: 오더 파일을 작성하고 사용자에게 승인을 받습니다.
4.  **Execute**: 작은 단위로 작업을 수행하며 프로그레스 로그를 남깁니다.
5.  **Finalize**: 리포트를 작성하고, 요약본을 갱신한 뒤 원본을 히스토리에 보관합니다.

---

## ⚖️ 4. 불변의 4원칙

1.  **Evidence-Based**: 모든 결정은 데이터나 이전 기록에 근거해야 합니다.
2.  **Agnostic Continuity**: 환경이나 도구, AI 모델이 바뀌어도 ODD 파일 시스템 만으로 작업이 이어져야 합니다.
3.  **Single Source of Truth**: 기획은 `specs/`, 구현 상태는 `reference/summaries/`가 유일한 진실입니다.
4.  **No Cleanup, No Complete**: 기록 정리가 되지 않은 작업은 완료된 것으로 간주하지 않습니다.
