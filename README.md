# 🚀 Prompt Kit (v1.2.0)

> **"Prompt Kit: The Local Context Manager for Agents"**
>
> **로컬 저장소 기반의 에이전트 컨텍스트 매니저**

---

# 🌏 English Guide

## 🛠️ 1. Installation

Run the command below in your terminal. The **Interactive Installer** will guide you through the setup.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/odd-template/setup/install.sh | bash
```

### 🌟 Key Features
- **Local Context Manager**: Manages project context locally within the repository (Git-friendly).
- **Prompt-Ready**: Instantly generates optimized prompts for any agent.
- **Memory Cells**: Stores knowledge in granular "Memory Cells" for efficient retrieval.
- **Session-Agnostic**: Preserves context across different AI sessions and models.

### 📂 System Architecture
Prompt Kit manages the **Local Context** to ensure Agents always work with the full picture.

```mermaid
graph TD
    Root[Project Root] --> Specs[Product Specs /docs/specs]
    Root --> PK[{{PROMPT_KIT_DIR}}]
    
    subgraph "Local Context (The Memory)"
        PK --> Prompt[ODD_PROMPT.md - Boot Loader]
        PK --> Core[memory/core/ - System Context]
        PK --> Cells[memory/cells/ - Domain Context]
    end
    
    subgraph "Action (The Workflow)"
        PK --> Orders[tasks/active/ - Active Tasks]
        PK --> Roadmap[tasks/roadmap.md - Milestones]
    end
    
    subgraph "Archive (The History)"
        PK --> Storage[history/tasks/ - Execution Logs]
    end
```

---

# 🇰🇷 한국어 가이드

## 🛠️ 1. 설치 방법

터미널에서 아래 명령어를 실행하세요. **인터랙티브 설치 프로그램**이 프로젝트 맞춤 설정을 가이드합니다.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/odd-template/setup/install.sh | bash
```

### 🧠 Prompt Kit 컨셉: "로컬 컨텍스트 매니저 (Local Context Manager)"

Prompt Kit은 에이전트가 프로젝트를 이해하는 데 필요한 모든 **맥락(Context)**을 로컬 저장소 내에서 효율적으로 관리하는 도구입니다.

| 구성 요소 | 명칭 | 기능 |
| :--- | :--- | :--- |
| **`ODD_PROMPT.md`** | **부트 로더** | 에이전트에게 현재 프로젝트의 맥락을 주입하는 진입점입니다. |
| **`memory/`** | **컨텍스트 저장소** | 프로젝트의 지식과 상태를 작은 '세포(Cell)' 단위로 나누어 저장합니다. || **`memory/cells/`** | **기억 세포** | 프로젝트의 도메인/기술 지식을 세포 단위로 저장합니다. |
| **`tasks/`** | **작업 기록** | 현재 실행 중인 오더와 태스크의 상태를 관리합니다. |

### 🌟 핵심 가치

*   **기억의 세포화**: 거대한 문서를 뉴런과 같이 작고 명확한 단위로 쪼개어 참조의 정확도를 높입니다.
*   **연관성 기반 시냅스**: '언어의 거리' 개념을 활용해 세포 간 연관성 점수를 매기고, 연관된 기억을 유기적으로 연결합니다.
*   **컨텍스트 효율성**: 필요한 Cell만 선택적으로 로드하여 불필요한 정보 로딩을 방지합니다. (I/O 3회 vs 컨텍스트 8배 절약)
*   **프롬프트 정밀도**: AI가 방대한 데이터 속에서 길을 잃지 않도록 최적의 컨텍스트를 주입합니다.

### 📂 시스템 폴더 구조 (Structure Diagram)

```
[Project Root]
 ├── docs/specs/          # 🏛️ Specs (무엇을 만드는가)
 │
 └── {{ODD_DIR}}          # 🧠 Prompt Kit Engine (어떻게 기억하는가)
     ├── ODD_PROMPT.md    #    - 시스템 진입점 (Boot Loader)
     ├── memory/          #    - 기억 저장소 (Memory Bank)
     │   ├── core/        #    - 핵심 구성 요소 세포화 문서
     │   ├── cells/       #    - 도메인/기술 지식 기억 세포
     │   └── rules/       #    - 개발 규칙 및 지침
     ├── tasks/           #    - 작업 기록 (Active Board)
     └── history/         #    - 히스토리 (Record Stacks)
```

## 📖 2. 사용 가이드

1.  **설치**: 명령어를 통해 Prompt Kit 환경을 구축합니다.
2.  **부팅**: `ODD_PROMPT.md`를 AI에게 전달하여 프로젝트의 기억 지도를 인식시킵니다.
3.  **세포화**: 새로운 지식은 최대한 작게 쪼개어 `memory/`에 저장하고 `relatedness` 점수를 기록하세요.

---

## 🧭 3. 에이전트 역할 (Roles)

| Role | Responsibility | Location |
| :--- | :--- | :--- |
| **기획자 (Architect)** | 프로젝트의 의도와 설계 방향 정의 | `docs/specs/` |
| **수행자 (Worker)** | 실제 코드 작성 및 작업 로그 기록 | `tasks/` |
| **세포화 전문가 (Cell Engineer)** | 지식을 쪼개고 연관성을 정의하여 `memory/` 관리 | `memory/` |

## 💡 유용한 팁

*   **프롬프트 우선 호출**: 모든 대화 시작 시 "ODD_PROMPT.md 읽고 시작해"라고 말하세요.
*   **세포화 원칙 준수**: 작업 완료 후 지식을 요약할 때, 하나의 거대한 문서 대신 **수십 개의 세밀한 Cell**로 분해하세요. ([입자도 가이드라인](./odd/memory/core/cell_granularity_guideline.md) 참조)
*   **연관성 명시**: 모든 Cell에 `relatedness` 점수를 포함하여 시냅스 네트워크를 구축하세요.

---

## ⚖️ Prompt Kit vs Others

Prompt Kit은 다른 AI 프레임워크와 병행하여 시너지를 낼 수 있습니다.

> **[필독] AI 프레임워크 비교 가이드: Prompt Kit vs Spec Kit vs Skills**
>
> 🔗 [AI_FRAMEWORKS.md](./AI_FRAMEWORKS.md) (클릭하여 상세 비교 확인)

*   **vs Spec Kit (GitHub/Google)**: Spec Kit으로 **정교하게 설계**하고, Prompt Kit으로 **실행하고 기억**하세요.
*   **vs Claude Skills**: **Prompt Kit 관리 규칙**을 Claude Skill로 등록하여 문서 업데이트를 자동화하세요.

