# PROMPT_KIT: Prompt Kit Entry Point
> **Prompt Kit v1.3.0: The Local Context Manager for Agents**

**[English]**
This document is the **Boot Loader** for the Prompt Kit context system.
It injects the **Local Repository Context** into the Agent's working memory.

**[한국어]**
이 문서는 **Prompt Kit 컨텍스트 시스템의 부트 로더**입니다.
에이전트의 작업 메모리에 **로컬 저장소 컨텍스트(Local Repository Context)**를 주입합니다.

---

## 🏗️ Project Metadata

- **Project Name**: odd-starter
- **Core Goal**: Curing AI Amnesia with COA Architecture
- **Current Version**: v1.3.0
- **Primary Root**: `.prompt-kit/` (Engine Directory)

---

## 🧭 Navigation (Context Map)

### 1. 🧠 Local Context (The Memory) -> `.prompt-kit/memory/`
The project's "Long-term Memory" and "Unconscious Knowledge".
- **`core/`**: System definitions (Role, Protocol).
- **`cells/`**: Domain knowledge cells (Features, Rules).
  - [PK Naming Spec](./memory/cells/tech/pk-naming-spec.md): 핵심 명명 및 자동화 규칙
  - [PK Operational Protocol](./memory/cells/tech/pk-operational-protocol-v130.md): v1.3.0 분리턴 아키텍처
  - [PK Philosophy](./memory/cells/tech/pk-philosophy.md): AI 건망증 치료 철학

### 2. ⚡ Workflow (The Action) -> `.prompt-kit/tasks/`
The project's "Active Working Memory".
- **`roadmap.md`**: Strategic milestones.
- **`active/`**: Tasks currently in progress (Orders, Progress, Checklists).

### 3. 📚 Reference (The Knowledge) -> `.prompt-kit/reference/`
The project's "Encyclopedia".
- **`rules/`**: Immutable laws ([pk-system.md](./reference/rules/pk-system.md)).
- **`summaries/`**: Current state snapshots.
- **`records/`**: Meeting notes and decisions.

### 4. 🗄️ History (The Archive) -> `.prompt-kit/history/`
The project's "Past Records".

---

## ⚙️ Operational Flow (Split-Turn Architecture)

본 시스템은 지식의 보존(**Turn-Memory**)과 작업의 실행(**Turn-Order**)을 분리하여 운용합니다.

### 🔄 1. Turn-Memory (Knowledge Sync)
*모든 작업에 앞서 또는 지식의 불일치가 느껴질 때 수행합니다.*
1. **Turn-Memory-1 (Ingestion)**: 스펙/히스토리 전수조사 후 지식을 **원자화(Cell)**하여 메모리에 저장.
2. **Turn-Memory-2 (Back-Sync)**: 메모리 셀을 기반으로 스펙 문서를 역으로 업데이트.

### ⚡ 2. Turn-Order (Execution Cycle)
*실제 프로젝트의 기능을 구현하거나 문제를 해결할 때 수행합니다.*
1. **Turn-Order-1 (Active)**: 오더 생성(1-1) -> 오더 수행 및 Progress(1-2) -> 리포트 작성(1-3).
2. **Turn-Order-2 (Task Sync)**: 히스토리 아카이빙(2-1) -> 메모리 및 스펙 마이크로 업데이트(2-2).

> **Important**: 상세 운영 규칙 및 원칙은 **[pk-system.md](./reference/rules/pk-system.md)**를 참조하십시오.