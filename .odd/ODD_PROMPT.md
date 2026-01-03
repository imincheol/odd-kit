# ODD_PROMPT: ODD Starter Kit Entry Point
> **ODD Architecture v1.1.1 (Memory Cell Architecture)**

**[English]**
This document is the **Main Instruction** for the ODD Starter project.
We have refactored the system to a **"Memory Cell Architecture"**.

**[한국어]**
이 문서는 **ODD Starter 프로젝트의 메인 프롬프트**입니다.
시스템을 **"기억 세포 아키텍처(Memory Cell Architecture)"**로 개편 완료했습니다.

---

## 🏗️ Project Metadata

- **Project Name**: odd-starter
- **Core Goal**: Curing AI Amnesia with Memory Cells (v1.1.1)
- **Current Version**: v1.1.1
- **Primary Root**: `.odd/`

---

## 📂 ODD Structure (v1.1.1)

### 🧠 Memory (기억 저장소) -> `.odd/memory/`
- **`core/`**: ODD 핵심 구성 요소(Order, Progress, Task 등)의 원자적 정의. 각 문서는 **Memory Cell**입니다.
- **`cells/`**: 프로젝트 지식의 원자화된 기억 세포. 각 Cell은 '연관성(Relatedness)' 점수를 포함합니다.
- **`rules/`**: 프로젝트 개발 규칙 및 운영 가이드라인.

### ⚡ Tasks (작업 프로세스) -> `.odd/tasks/`
- **`active/`**: 현재 진행 중인 작업 관리. (Order, Progress 등)
- **`roadmap.md`**: 전반적인 프로젝트 마일스톤 관리.

### 🗄️ History (기록 보관소) -> `.odd/history/`
- **`tasks/`**: 완료된 작업 기록 보관.

---

## 🔗 Relatedness & Memory Cells (연관성 시스템)

ODD v1.1.1부터는 모든 기억 세포(Memory Cell)에 **`relatedness` (0.0 ~ 1.0)** 메타데이터가 포함됩니다.
- 에이전트는 현재 작업과 연관성 점수가 높은 Cell을 우선적으로 참조해야 합니다.
- **`memory/core/relatedness_guideline.md`**를 참조하여 기억 간의 시냅스 강도를 유지하십시오.

---

## ⚙️ Operational Flow (Turn-Based)

1. **Turn 1 (Analysis & Order)**: `ODD_PROMPT.md`와 `memory/`를 분석하여 오더를 작성하고 승인을 받습니다.
2. **Turn 2 (Execution)**: 승인된 오더에 따라 작업을 수행하고 `progress.md`를 기록합니다.
3. **Turn 3 (Finalize & Archive)**: 작업 완료 후 지식을 요약하여 `memory/`를 갱신하고 원본을 `history/`에 보관합니다.