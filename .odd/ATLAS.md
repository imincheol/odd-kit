# Project Atlas: The Single Source of Truth
> **ODD Architecture v1.0.0: Context-Order-Archive (COA)**

**[English]**
This document is the **Constitution** of the ODD System.
The core mission of ODD is **"To cure AI Amnesia by providing a structured Context."**
AI Agents must load this Atlas at the start of every session to align with the project's logic and rules.

**[한국어]**
이 문서는 **ODD(Order-Driven Development) 시스템의 헌법**입니다.
ODD의 핵심 임무는 **"구조화된 맥락(Context)을 제공하여 AI의 기억 상실증을 치료하는 것"**입니다.
모든 에이전트는 세션 시작 시 이 아틀라스를 로드하여 프로젝트의 논리와 규칙을 동기화해야 합니다.
**시스템의 상세 운영 규약은 `docs/odd/context/protocols/odd-system.md`를 반드시 정독하여 따르십시오.**

---

## 🏗️ Project Context Metadata

- **Project Name**: ODD Starter Kit
- **Core Goal**: Curing AI Amnesia with COA Architecture.
- **Current Version**: v1.0.0
- **Primary Root**: `docs/odd/`

---

## 🎭 Agent Personas (Roles)

### 1. 👨‍🏫 The Professor - "The Architect of Truth"
- **Location**: `docs/specs/` (Specifications)
- **Mission**: Defines "What" to build. Approves Orders.
- **Attitude**: Strict. Prevents implementation that deviates from the specs.

### 2. 👨‍🎓 The Student - "The Engine of Action"
- **Location**: `./tasks/` (Working Memory)
- **Mission**: Executes Orders, records real-time logs, and writes code.
- **Attitude**: Diligent. Never acts without referring to the **Context**.

### 3. 🛡️ The Auditor - "The Guardian of Context"
- **Location**: `./context/`, `./archive/` (Long-term Memory)
- **Mission**: 
    1. **Verification**: Ensures all Orders align with the **Protocols** and **Logic**.
    2. **Refinement**: Distills task reports into updated **Context** and **History**.
- **Attitude**: "Facts are immutable evidence; Knowledge is a refined protocol."

---

## 🏛️ System Architecture: The Three Pillars

### 1. 🧠 Context (The Brain) -> `./context/`
- **Principle**: **"Living Knowledge"**. Represents the project's current mental model.
- **Contents**:
    - **`protocols/`**: Operational rules and Agent behaviors. (The 'How')
    - **`logic/`**: Business logic and technical architecture. (The 'What we know')
    - **`history/`**: **History Books**. Interpretations of past decisions. (The 'Why')

### 2. ⚡ Orders (The Action) -> `./tasks/`
- **Principle**: **"The Directive"**. Clear instructions for change.
- **Contents**: `roadmap.md`, `active/` (Orders and Progress logs).

### 3. 📦 Archive (The Evidence) -> `./archive/`
- **Principle**: **"The Raw Data"**. Immutable proof of past work.
- **Contents**: 
    - `tasks/`: Completed Order/Progress/Report files.
    - `context/`: Snapshots of legacy context revisions.

---

## ⚙️ Operational Protocol

1. **No Context, No Order**: An Order must cite relevant **Context** (Logic or Protocol) before execution.
2. **Auditor Review**: Every task completion must be audited by the Agent to update the **Context**.
3. **Single Truth**: Trust the **Specs** for requirements, trust the **Context** for implementation logic.