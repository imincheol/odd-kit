# 🧠 Concept: ODD Kit & Local Context (v2.0.0)

> **"The brain of your AI Agent lives in your file system."**

## 1. Core Philosophy (핵심 철학)
ODD Kit은 AI 에이전트의 '망각(Amnesia)' 문제를 해결하기 위해 탄생했습니다. 프로젝트의 설계, 규칙, 기록을 세포 단위의 **Memory Cell**로 로컬에 보존하여, 어떤 AI 모델이나 세션에서도 즉각적으로 문맥을 복원할 수 있게 합니다.

### The Metaphor (ODD Kit Metaphor)
- **Body (System)**: ODD Kit (파일 구조, 프로토콜)
- **Mind (Engine)**: AI Agent (LLM)
- **Memory (Context)**: Local Context (`.odd-kit/memory/cells/`)

## 2. Operational Architecture: Split-Turn
v2.0.0부터는 지식의 보존과 작업의 실행을 분리하여 더욱 정밀한 컨텍스트 제어가 가능해졌습니다.

### 🔄 Turn-Memory (지식 동기화)
- **Ingestion**: 스펙/히스토리 전수조사 후 지식을 원자화(Cell)하여 메모리에 저장.
- **Back-Sync**: 메모리 셀을 기반으로 최신 스펙 문서와 템플릿을 역으로 업데이트.

### ⚡ Turn-Order (작업 실행)
- **Active Phase**: 오더 생성, 작업 수행, 진행 로그 기록, 결과 보고.
- **Task Sync**: 완료된 태스크 아카이빙 및 배운 지식을 메모리/스펙에 즉시 반영.

## 3. Key Principles
1.  **Atomization (원자화)**: 거대한 문서를 작은 세포 단위로 쪼개어 참조의 정밀도를 높입니다.
2.  **Explicit Reference (명시적 참조)**: 오더와 프로그레스에서 어떤 메모리 셀을 사용하는지 명시합니다.
3.  **The 3 Pillars Sync**: `docs/specs/`, `odd-kit-prompt-template/`, `.odd-kit/` 세 구조는 항상 하나로 일치되어야 합니다.
