# PROMPT_KIT: Prompt Kit Entry Point
> **Prompt Kit v1.2.1: The Local Context Manager for Agents**

**[English]**
This document is the **Boot Loader** for the Prompt Kit context system.
It injects the **Local Repository Context** into the Agent's working memory.

**[한국어]**
이 문서는 **Prompt Kit 컨텍스트 시스템의 부트 로더**입니다.
에이전트의 작업 메모리에 **로컬 저장소 컨텍스트(Local Repository Context)**를 주입합니다.

---

## 🏗️ Project Metadata

- **Project Name**: prompt-kit (formerly odd-starter)
- **Core Goal**: Curing AI Amnesia with Local Context (v1.2.1)
- **Current Version**: v1.2.1
- **Primary Root**: `.prompt-kit/` (Engine Directory)

---

## 🧭 Navigation (Context Map)

### 1. 🧠 Local Context (The Memory) -> `.prompt-kit/memory/`
The project's "Long-term Memory" and "Unconscious Knowledge".
- **`core/`**: System definitions (Role, Protocol).
- **`cells/`**: Domain knowledge cells (Features, Rules).

### 2. ⚡ Workflow (The Action) -> `.prompt-kit/tasks/`
The project's "Active Working Memory".
- **`roadmap.md`**: Strategic milestones.
- **`active/`**: Tasks currently in progress (Orders, Progress, Checklists).

### 3. 📚 Reference (The Knowledge) -> `.prompt-kit/reference/`
The project's "Encyclopedia".
- **`rules/`**: Immutable laws (`odd-system.md`).
- **`summaries/`**: Current state snapshots.
- **`records/`**: Meeting notes and decisions.

### 4. 🗄️ History (The Archive) -> `.prompt-kit/history/`
The project's "Past Records".

---

## ⚙️ Operational Flow (Turn-Based)

1. **Turn 1 (Analysis & Order)**: `PROMPT_KIT.md` 충전 후, 오더를 작성하고 복잡하면 **체크리스트**를 생성합니다.
2. **Turn 2 (Execution)**: 체크리스트를 하나씩 처리하며 작업을 수행하고 `progress.md`를 기록합니다.
3. **Turn 3 (Finalize & Archive)**: 작업 완료 후 지식을 요약하여 `reference/` 및 `memory/`를 갱신하고 원본을 `history/`에 보관합니다.

> **System Rules**: 상세 운영 규칙은 반드시 [odd-system.md](./reference/rules/odd-system.md)를 참조하십시오.