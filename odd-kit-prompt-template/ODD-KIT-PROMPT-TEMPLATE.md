# ODD-KIT-PROMPT: {{PROJECT-NAME}}
> **ODD Kit v2.0.0: The Order-Driven Context Management Kit**

**[English]**
This document is the **Boot Loader** for the ODD Kit context system.
It injects the **Order-Driven Development Context** into the Agent's working memory.

**[한국어]**
이 문서는 **ODD Kit 컨텍스트 시스템의 부트 로더**입니다.
에이전트의 작업 메모리에 **오더 기반 개발 컨텍스트(Order-Driven Context)**를 주입합니다.

---

## 🏗️ Project Metadata

- **Project Name**: {{PROJECT-NAME}}
- **Core Goal**: {{PROJECT-GOAL}}
- **Current Version**: v2.0.0
- **Primary Root**: `{{ODD-KIT-DIR}}/` (Engine Directory)

---

## 🧭 Navigation (Context Map)

### 1. 🧠 Local Context (The Memory) -> `{{ODD-KIT-DIR}}/memory/`
The project's "Long-term Memory" and "Unconscious Knowledge".
- **`core/`**: System definitions (Role, Protocol, Templates).
- **`cells/`**: Domain & Technical knowledge cells.
  - [ODD Kit System Rules](./memory/cells/tech/odd-kit-system-v200.md): 핵심 운영 수칙 및 체크리스트 규칙

### 2. ⚡ Workflow (The Action) -> `{{ODD-KIT-DIR}}/tasks/`
The project's "Active Working Memory".
- **`roadmap.md`**: Strategic milestones.
- **`active/`**: Tasks currently in progress (Orders, Progress, Checklists).

### 3. 🗄️ History (The Archive) -> `{{ODD-KIT-DIR}}/history/`
The project's "Past Records" (Execution logs and archived orders).

---

## ⚙️ Operational Flow (Split-Turn Architecture)

본 시스템은 지식의 보존(**Turn-Memory**)과 작업의 실행(**Turn-Order**)을 분리하여 운용합니다.

### 🔄 1. Turn-Memory (Knowledge Sync)
*모든 작업에 앞서 또는 지식의 불일치가 느껴질 때 수행합니다.*
1. **Turn-Memory-0 (Archiving)**: 완료된 오더를 히스토리로 이동하여 정리.
2. **Turn-Memory-1 (Ingestion)**: 스펙/히스토리 전수조사 후 지식을 **원자화(Cell)**하여 메모리에 저장.
3. **Turn-Memory-2 (Back-Sync)**: 메모리 셀을 기반으로 스펙 문서를 역으로 업데이트.

### ⚡ 2. Turn-Order (Execution Cycle)
*실제 프로젝트의 기능을 구현하거나 문제를 해결할 때 수행합니다.*
1. **Turn-Order-1 (Active Phase)**: 오더 및 체크리스트 생성(1-1) -> 작업 수행(1-2) -> 결과 보고(1-3).
2. **Turn-Order-2 (Micro-Sync)**: 작업 중 습득한 파편화된 정보를 메모리와 스펙에 즉시 반영.

> **Important**: 상세 운영 규칙 및 원칙은 **[odd-kit-system-v200.md](./memory/cells/tech/odd-kit-system-v200.md)**를 참조하십시오.