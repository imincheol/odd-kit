# 🚀 Prompt Kit (v1.3.0)

> **"Prompt Kit: The Local Context Manager for Agents"**
>
> **로컬 저장소 기반의 에이전트 컨텍스트 매니저: 지식의 원자화와 실행의 무결성**

---

# 🌏 English Guide

## 🛠️ 1. Installation

Run the command below in your terminal. The **Interactive Installer** will guide you through the setup.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/pk-template/setup/install.sh | bash
```

### 🌟 Key Features
- **Local Context Manager**: Manages project context locally within the repository (Git-friendly).
- **Prompt-Ready**: Instantly generates optimized prompts for any agent.
- **Memory Cells**: Stores knowledge in granular, atomic "Memory Cells" for zero-amnesia retrieval.
- **Split-Turn Architecture**: Separates Knowledge Sync (Turn-Memory) from Action (Turn-Order).
- **Session-Agnostic**: Preserves context across different AI sessions and models.

### 📂 System Architecture
Prompt Kit manages the **Local Context** (`.prompt-kit/`) to ensure Agents always work with the full picture.

```mermaid
graph TD
    Root[Project Root] --> Specs[Product Specs /docs/specs]
    Root --> PK[.prompt-kit/]
    
    subgraph "Local Context (The Memory)"
        PK --> Prompt[PROMPT_KIT-{{PROJECT_NAME}}.md - Boot Loader]
        PK --> Cells[memory/cells/ - Atomic Knowledge]
        PK --> Rules[reference/rules/ - Protocols]
    end
    
    subgraph "Action (The Workflow)"
        PK --> Tasks[tasks/active/ - Orders & Progress]
        PK --> Roadmap[tasks/roadmap.md - Milestones]
    end
    
    subgraph "Archive (The History)"
        PK --> Storage[history/tasks/ - Execution Logs]
    end
```

### 🧠 The Philosophy: "Kit, Engine, and Memory"
Prompt Kit is not just a folder; it's a **cognitive architecture** for your project.

- **Prompt Kit (The Body)**: The physical container (`.prompt-kit/`) installed in your repo.
- **Split-Turn Engine (The Mind)**: The logic of "Knowledge Sync (Turn-Memory) ↔ Action Execution (Turn-Order)".
- **Local Context (The Memory)**: The knowledge stored in `memory/cells/`, atomic and persistent.

---

# 🇰🇷 한국어 가이드

## 🛠️ 1. 설치 방법

터미널에서 아래 명령어를 실행하세요. **인터랙티브 설치 프로그램**이 프로젝트 맞춤 설정을 가이드합니다.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/pk-template/setup/install.sh | bash
```

### 🧠 Prompt Kit 철학: "도구, 엔진, 그리고 기억"

| 개념 | 역할 | 설명 |
| :--- | :--- | :--- |
| **Prompt Kit** | **Body (신체)** | 프로젝트에 설치되는 물리적 도구 모음 (`.prompt-kit/`) |
| **Split-Turn Engine** | **Mind (정신)** | 지식 동기화(Turn-Memory)와 작업 실행(Turn-Order)의 선순환 체계 |
| **Local Context** | **Memory (기억)** | `memory/cells/`에 원자 단위로 저장된 지식. AI의 장기 기억 역할을 합니다. |

### 📂 시스템 구조 (System Architecture)

Prompt Kit은 에이전트가 프로젝트를 이해하는 데 필요한 모든 **맥락(Context)**을 로컬 저장소 내에서 효율적으로 관리합니다.

| 구성 요소 | 명칭 | 기능 |
| :--- | :--- | :--- |
| **`PROMPT_KIT-{{NAME}}.md`** | **부트 로더** | 에이전트에게 프로젝트의 지식 지도를 주입하는 진입점입니다. |
| **`memory/cells/`** | **기억 세포** | 프로젝트의 모든 지식을 더 이상 쪼갤 수 없는 '원자(Atom)' 단위로 저장합니다. |
| **`tasks/active/`** | **작업 공간** | 현재 실행 중인 오더(Order)와 진행 로그(Progress)를 관리합니다. |
| **`docs/specs/`** | **제품 스펙** | 프로젝트의 공식 설계도이며, 메모리 셀과 항상 동기화됩니다. |

### 🌟 핵심 가치 (Key Values)

*   **기억의 원자화 (Atomization)**: 거대한 문서를 뉴런과 같이 작고 명확한 단위로 쪼개어 참조의 정확도를 높입니다.
*   **지식의 선순환 (Split-Turn)**: 지식을 먼저 전수조사하여 동기화하고(Turn-Memory), 그 기반 위에서 작업을 실행합니다(Turn-Order).
*   **무결성 유지 (Pillar Sync)**: Specs, Template, PK 엔진 세 기둥이 항상 동일한 지식을 공유하도록 강제합니다.
*   **명시적 참조 (Explicit-Based)**: 모든 행동의 근거가 되는 메모리 셀을 오더와 리포트에 명시하여 추적성을 보장합니다.

### � 시스템 폴더 구조 (Structure Diagram)

```text
[Project Root]
 ├── docs/specs/                     # 🏛️ Specs (무엇을 만드는가 - 기획/설계)
 │
 └── .prompt-kit/                    # 🧠 Prompt Kit Engine (어떻게 기억하는가)
     ├── PROMPT_KIT-{{NAME}}.md      #    - 시스템 진입점 (Boot Loader)
     ├── .pk_config                  #    - 로컬 설정 파일
     ├── memory/                     #    - 기억 저장소 (Memory Bank)
     │   ├── core/                   #    - 시스템 핵심 정의
     │   └── cells/                  #    - 도메인/기술 지식 기억 세포 (Atomic Cells)
     ├── tasks/                      #    - 작업 기록 (Active Board)
     │   ├── active/                 #    - 현재 실행 중인 오더/로그/체크리스트
     │   └── _template/              #    - 태스크 템플릿
     ├── history/                    #    - 히스토리 (Record Stacks - 불변의 기록)
     └── reference/                  #    - 참조 지식 및 불변의 규칙 (Rules)
```

## 🔄 2. 운영 생애주기 (Turn-Based Lifecycle)

v1.3.0부터는 **'턴(Turn)'** 단위를 통해 에이전트의 망각을 방지하고 지식의 무결성을 유지합니다.

| 단계 | 명칭 | 기능 | 행동 |
| :--- | :--- | :--- | :--- |
| **Turn-0** | **Bootstrap** | **자아 로딩** | 진입점(`PROMPT_KIT-{{NAME}}.md`) 로딩 및 지식 흡수 |
| **Turn-Memory** | **Sync** | **지식 동기화** | 메모리 셀 원자화(TM-1) 및 스펙 역동기화(TM-2) |
| **Turn-Order** | **Execution** | **작업 실행** | 오더 수행(TO-1) 및 지식 환원/아카이빙(TO-2) |

### 🟦 Step 0: 진입 및 초기화 (Turn-0)
- 모든 대화 세션의 시작입니다. 에이전트 스스로 프로젝트의 현재 상태(로드맵, 활성 오더)를 파악합니다.
- **필수 지시**: "부트로더 파일을 읽고 현재 맥락을 파악해줘."

### 🟩 Step 1: 지식 정합성 유지 (Turn-Memory)
- **TM-0 (Archiving)**: 완료된 오더를 `history/`로 이동하여 지식 조사 준비를 마칩니다.
- **TM-1 (Ingestion)**: 최신 히스토리와 스펙을 원자 단위의 Memory Cell로 응축합니다.
- **TM-2 (Back-Sync)**: 메모리 셀을 기반으로 설계 문서를 최신화합니다.

### 🟧 Step 2: 실제 작업 및 기여 (Turn-Order)
- **TO-1 (Active)**: 명시적 오더(Order)와 체크리스트에 따라 실제 코드나 문서를 수정합니다.
- **TO-2 (Micro-Sync)**: 작업 중 습득한 파편화된 정보를 메모리와 스펙에 즉시 반영합니다.

## 🧭 3. 에이전트 역할 (Roles)

| Role | Responsibility | Location |
| :--- | :--- | :--- |
| **기획자 (Architect)** | 프로젝트의 의도와 설계 방향 정의 및 스펙 문서화 | `docs/specs/` |
| **수행자 (Worker)** | 실제 코드 작성 및 오더/프로그레스 로그 기록 | `.prompt-kit/tasks/` |
| **사서 (Librarian)** | 지식을 원자화하여 세포(Cell)로 관리하고 동기화 수행 | `.prompt-kit/memory/` |

## 💡 유용한 팁

*   **진입점 최우선 호출**: 모든 대화 시작 시 "PROMPT_KIT-프로젝트명.md 읽고 시작해"라고 지시하세요.
*   **메모리 참조 명시**: 오더 생성 시 반드시 관련 메모리 셀 목록을 포함하여 에이전트의 사고를 가이드하세요.
*   **연관성 강화**: 리포트 작성 시 참조된 메모리 간의 연관성을 기록하여 지식 지도를 두텁게 만드세요.

---

## ⚖️ Prompt Kit vs Others

Prompt Kit은 다른 AI 프레임워크와 병행하여 시너지를 낼 수 있습니다.
- **vs Spec Kit (GitHub/Google)**: Spec Kit으로 설계하고, Prompt Kit으로 실행/기억하세요.
- **vs Claude Skills**: Prompt Kit 관리 규칙을 Skill로 등록하여 자동화를 강화하세요.

🔗 [AI_FRAMEWORKS.md](./AI_FRAMEWORKS.md) (상세 비교 확인)

---

## ⚖️ 상세 프로토콜
더 자세한 운영 규칙은 **[.prompt-kit/reference/rules/pk-system.md](.prompt-kit/reference/rules/pk-system.md)**를 참조하십시오.
