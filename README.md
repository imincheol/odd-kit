# 🚀 ODD Kit (v2.0.0)

> **"Assume Zero Trust, Ensure Total Clarity with Order-Driven Context Management."**
> 
> *Curing AI Amnesia by anchoring logical context in the file system.*

---

# 🌏 English Guide

## 🛠️ 1. Installation

Run the command below in your terminal. The **Interactive Installer** will guide you through the setup.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/odd-kit-template/setup/install.sh | bash
```

## 🏗️ 2. Core Philosophy: The 3 Pillars

ODD Kit is structured into three main folders representing different temporal and functional states of the project.

| Pillar | Importance | Temporal Focus | Role |
| :--- | :--- | :--- | :--- |
| **`docs/`** | **Highest (1)** | **Present (The Spec)** | Current active blueprint. "If it's not in the specs, it doesn't exist." |
| **`odd-kit-template/`** | **High (2)** | **Future (The Frame)** | Distribution prototype used for installing ODD Kit in other projects. |
| **`.odd-kit/`** | **Standard (3)** | **Past ~ Present (The Engine)** | Internal workspace for the project itself, documenting development history. |

## 🛡️ 3. Trust-Free Protocol (OPR Lifecycle)

We do not trust AI Agents by default. To counteract potential amnesia or hallucination, we follow the **Order-Report-WorkingLog (ORW)** cycle.

1.  **Order (Planning)**: The Agent proposes a plan. **User approval is mandatory** before execution. Once approved, the Order is immutable.
2.  **Progress (Execution)**: Real-time logging of thoughts, actions, and bug fixes. Continues until the **User says "Done"**.
3.  **Report (Knowledge Sync)**: Final outcome is summarized. New knowledge is distilled into **Specs** and **Memory Cells**.

## 🔄 4. Turn-Based Lifecycle

ODD Kit operates on a three-phase lifecycle to ensure context integrity across sessions.

| Turn | Name | Role |
| :--- | :--- | :--- |
| **Turn-0** | **Bootstrap** | Agent self-loads context and establishes identity. |
| **Turn-Memory** | **Sync** | Atomic knowledge sync between history and specs. |
| **Turn-Order** | **Execution** | Active task execution based on approved orders. |

## 📂 5. System Architecture

```mermaid
graph TD
    Root[Project Root] --> Specs[Docs /docs/specs - Blueprint]
    Root --> Template[Template /odd-kit-template - Future Frame]
    Root --> Engine[.odd-kit/ - Development Engine]
    
    subgraph "Engine Context"
        Engine --> Boot[ODD-KIT-PROMPT-{{NAME}}.md]
        Engine --> Cells[memory/cells/ - Atomic Knowledge]
        Engine --> Tasks[tasks/active/ - Orders & Progress]
    end
```

---

# 🇰🇷 한국어 가이드

## 🛠️ 1. 설치 방법

터미널에서 아래 명령어를 실행하세요. **인터랙티브 설치 프로그램**이 프로젝트 맞춤 설정을 가이드합니다.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/odd-kit-template/setup/install.sh | bash
```

## 🏗️ 2. 핵심 철학: 3대 기둥 (The 3 Pillars)

ODD Kit은 프로젝트의 시간적, 기능적 상태를 대변하는 세 개의 핵심 폴더로 구성됩니다.

| 폴더 | 중요도 | 시간적 관점 | 역할 |
| :--- | :--- | :--- | :--- |
| **`docs/`** | **최우선 (1)** | **현재 (Present)** | 프로젝트의 실체인 '현행 설계도'. 스펙에 없는 기능은 존재하지 않습니다. |
| **`odd-kit-template/`** | **높음 (2)** | **미래 (Future)** | 타 프로젝트에 ODD Kit을 이식할 때 사용되는 '미래의 틀'이자 원형. |
| **`.odd-kit/`** | **보통 (3)** | **과거 ~ 현재 (Past~Now)** | 프로젝트 자체를 ODD 방식으로 빌드해 나가는 과정의 기록과 엔진룸. |

## 🛡️ 3. 불신 기반 프로토콜 (Trust-Free ORW)

에이전트(AI)의 판단과 기억력을 신뢰하지 않는 것이 원칙입니다. 이를 위해 **오더-리포트-워킹로그(ORW)** 사이클을 강제합니다.

1.  **오더 (Order)**: 에이전트가 이해한 작업을 제안하고 **사용자의 명시적 승인**을 받습니다. 시작된 오더는 수정하지 않습니다.
2.  **프로그레스 (Progress)**: 작업의 모든 과정과 버그 수정을 기록합니다. **사용자가 승인할 때까지** 무한히 보완합니다.
3.  **리포트 (Report)**: 최종 결과를 요약하고, 습득한 지식을 **Specs**와 **Memory Cell**에 즉시 환원합니다.

## 🔄 4. 운영 생애주기 (Turn-Based Lifecycle)

ODD Kit은 3단계의 턴(Turn) 체계를 통해 지식의 유실을 방지하고 작업의 생산성을 확보합니다.

| 단계 | 명칭 | 기능 |
| :--- | :--- | :--- |
| **Turn-0** | **Bootstrap** | 에이전트가 정보를 읽고 자신의 상태를 동기화하는 자아 로딩 단계 |
| **Turn-Memory** | **Sync** | 스펙과 히스토리 간의 지식을 원자화(Cell)하여 동기화하는 단계 |
| **Turn-Order** | **Execution** | 실제 승인된 오더를 바탕으로 작업을 수행하고 환원하는 단계 |

## 📁 5. 시스템 폴더 구조 (Structure Diagram)

```text
[Project Root]
 ├── docs/specs/                     # 🏛️ Specs (현재 - 무엇을 만드는가)
 │   ├── 00-project-structure-spec.md
 │   ├── 01-trust-free-protocol-spec.md
 │   └── ...
 ├── odd-kit-template/               # 📦 Template (미래 - 어떻게 배포되는가)
 └── .odd-kit/                       # 🧠 Engine (과거~현재 - 어떻게 일하는가)
     ├── ODD-KIT-PROMPT-{{NAME}}.md  #    - 시스템 진입점 (Boot Loader)
     ├── memory/cells/               #    - 원자 단위 기억 (Atomic Cells)
     └── tasks/active/               #    - 현재 실행 중인 오더/로그
```

---

## ⚖️ 상세 프로토콜
더 자세한 운영 규칙은 **[docs/specs/README.md](docs/specs/README.md)**를 통해 각 세부 스펙을 참조하십시오.
*Origin Spec: [docs/origin/01-project-structure-philosophy.md](docs/origin/01-project-structure-philosophy.md), [02-trust-free-opr-philosophy.md](docs/origin/02-trust-free-opr-philosophy.md)*
