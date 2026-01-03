# ODD_PROMPT: Prompt Kit Entry Point
> **Prompt Kit v1.2.0: The Local Context Manager for Agents**

**[English]**
This document is the **Boot Loader** for the Prompt Kit context system.
It injects the **Local Repository Context** into the Agent's working memory.

**[한국어]**
이 문서는 **Prompt Kit 컨텍스트 시스템의 부트 로더**입니다.
에이전트의 작업 메모리에 **로컬 저장소 컨텍스트(Local Repository Context)**를 주입합니다.

**시스템의 상세 운영 규칙은 `{{ODD_DIR}}/reference/rules/odd-system.md`를 반드시 확인하십시오.**

---

## 🏗️ Project Metadata

- **Project Name**: {{PROJECT_NAME}}
- **Core Goal**: {{PROJECT_GOAL}}
- **Current Version**: v1.2.0 (Local Context Manager)
- **Primary Root**: `{{ODD_DIR}}/`

---

## 🎭 Agent Roles (에이전트 역할)

### 1. 👨‍🏫 Architect (Architect of Intent)
- **Location**: `{{SPECS_DIR}}/` (Specifications)
- **Mission**: 프로젝트의 기획 의도 정의 및 최종 목표 관리.

### 2. 👩‍🏫 Librarian (Guardian of History)
- **Location**: `{{ODD_DIR}}/reference/`, `{{ODD_DIR}}/history/`
- **Mission**: 
    1. **Summarization**: 작업 결과물을 `reference/summaries/`에 동기화.
    2. **History Management**: 완료된 작업을 `history/`에 시간순으로 보관.

### 3. 👨‍🎓 Worker (Execution Unit)
- **Location**: `{{ODD_DIR}}/tasks/` (Active Workboard)
- **Mission**: **Orders(명령)**를 수행하고 실시간 진행 상황을 기록.

---

## 📂 ODD Structure

### 🔍 Reference (참조 정보) -> `{{ODD_DIR}}/reference/`
- **`summaries/`**: **현재 시스템 요약**. 기능 로직, 데이터 스키마 등 현재 상태의 압축본.
- **`rules/`**: **개발 및 운영 규칙**. 코드 컨벤션, 에이전트 지침 등.
- **`records/`**: 주요 결정 사항 및 프로젝트 연대기.

### ⚡ Tasks (작업 프로세스) -> `{{ODD_DIR}}/tasks/`
- **`active/`**: 실행 중인 **Orders(명령)** 및 Progress Logs.
- **`roadmap.md`**: 전체 프로젝트 목표 및 단계별 작업 현황.

### 🗄️ History (기록 보관소) -> `{{ODD_DIR}}/history/`
- **`tasks/`**: 완료된 모든 작업 데이터 (날짜별 보관).
- **`reference/`**: 요약 정보의 이전 버전 기록.

---

## ⚙️ Operational Flow (운영 흐름)

1.  **Read Prompt**: 모든 세션은 이 `{{ODD_PROMPT_NAME}}`을 읽는 것으로 시작합니다.
2.  **Verify Reference**: `reference/summaries/`를 통해 현재 구현 상태를 파악합니다.
3.  **Execute Order**: `tasks/active/`의 명령 절차에 따라 작업을 수행합니다.
4.  **Update & Archive**: 작업 완료 후 보고서를 작성하고, `reference/`를 갱신한 뒤 원본을 `history/`로 이동시킵니다.