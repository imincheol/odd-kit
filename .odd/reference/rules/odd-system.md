---
type: rule
revision: "v1.1.1"
odd_version: "v1.1.0"
category: System
last_updated: 2026-01-03
---

# ⚖️ Rule: ODD Standard Operating Procedure (v1.1.1)

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

## 🔄 2. 턴 기반 운영 프로세스 (Turn-Based Operation)

에이전트는 모든 작업을 다음의 **3단계 턴(Turn)**으로 구분하여 수행하며, 각 턴 사이에는 사용자의 명시적 확인 또는 승인이 필요합니다.

### 🟢 Turn 1: 분석 및 오더 수립 (Analysis & Order)
- **에이전트 상태**: Analyst & Librarian (사서 모드)
- **허용 도구**: 파일 읽기, 검색, `.odd/tasks/` 내 오더/진행 파일 생성/수정.
- **금지 사항**: 프로젝트 소스 코드(`.odd/` 외부) 수정 도구 호출 절대 금지.
- **종료 조건**: 사용자가 공유된 오더를 확인하고 "진행해" 또는 "Turn 1 승인" 등을 선언.

### 🔵 Turn 2: 작업 수행 (Execution)
- **에이전트 상태**: Executor (수행자 모드)
- **허용 도구**: 모든 코딩 및 테스트 도구 활용.
- **종료 조건**: 오더에 명시된 할 일을 모두 완료하고 테스트를 통과함.

### 🟡 Turn 3: 정리 및 지식 자산화 (Finalize & Archive)
- **에이전트 상태**: Librarian (사서 모드)
- **필수 작업**: 
    1.  리포트(`report.md`) 작성.
    2.  변경된 지식을 `reference/summaries/`에 반영 (지식 현행화).
    3.  완료된 오더 관련 파일들을 `history/tasks/YYYY/MM/DD/`로 이동 (아카이빙).
- **종료 조건**: 모든 기록이 정리되어 `active/` 폴더가 비워짐.

---

## ⚖️ 3. 불변의 5원칙

1.  **Evidence-Based**: 모든 결정은 데이터나 이전 기록에 근거해야 합니다.
2.  **Agnostic Continuity**: 환경이나 도구, AI 모델이 바뀌어도 ODD 파일 시스템 만으로 작업이 이어져야 합니다.
3.  **Single Source of Truth**: 기획은 `specs/`, 구현 상태는 `reference/summaries/`가 유일한 진실입니다.
4.  **No Cleanup, No Complete**: 기록 정리가 되지 않은 작업은 완료된 것으로 간주하지 않습니다.
5.  **Mandatory Wait**: Turn 1 종료 시 반드시 수행을 멈추고 사용자의 승인을 기다려야 합니다. (물리적 턴 분리)
