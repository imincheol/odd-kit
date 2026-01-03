# 🚀 ODD Starter Kit (v1.1.1 Memory Cell)

> **"기억을 세포화하고 연관성으로 연결하는 AI 기억 시스템."**
>
> **Order Driven Development (ODD) v1.1.1: Memory Cell Architecture**

---

# 🌏 English Guide

## 🛠️ 1. Installation

Run the command below in your terminal. The **Interactive Installer** will guide you through the setup.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/odd-template/setup/install.sh | bash
```

### 🌟 Key Features in v1.1.1 (Memory Cell)
- **ODD_PROMPT**: Explicit entry point with enhanced memory mapping.
- **Memory Cells**: Knowledge is broken down into granular, focused cells (like neurons).
- **Relatedness System**: Cells are linked by a "Relatedness" score (0.0 to 1.0) representing synaptic strength.
- **Session-Agnostic Memory**: Works seamlessly across any AI model or device.

### 📂 System Architecture
ODD v1.1.1 focuses on **Memory Cells** and **Synaptic Relatedness**.

```mermaid
graph TD
    Root[Project Root] --> Specs[Product Specs /docs/specs]
    Root --> ODD[{{ODD_DIR}}]
    
    subgraph "Knowledge (The Memory)"
        ODD --> Prompt[ODD_PROMPT.md - Entry Point]
        ODD --> Core[memory/core/ - ODD Component Cells]
        ODD --> Cells[memory/cells/ - Knowledge Cells]
        Core -- Relatedness --> Cells
    end
    
    subgraph "Action (The Tasks)"
        ODD --> Orders[tasks/active/ - Orders & Progress]
        ODD --> Roadmap[tasks/roadmap.md - Goals]
    end
    
    subgraph "Record (The History)"
        ODD --> Storage[history/tasks/ - Evidence Log]
    end
```

---

# 🇰🇷 한국어 가이드

## 🛠️ 1. 설치 방법

터미널에서 아래 명령어를 실행하세요. **인터랙티브 설치 프로그램**이 프로젝트 맞춤 설정을 가이드합니다.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/odd-template/setup/install.sh | bash
```

### 🧠 ODD 컨셉: "기억 세포 아키텍처 (Memory Cell Architecture)"

ODD v1.1.1은 지식을 최소 단위로 조개고, 그들 간의 **'연관성(Relatedness)'**을 정의하여 AI가 필요한 정보를 정밀하게 찾아낼 수 있도록 합니다.

| 구성 요소 | 명칭 | 기능 |
| :--- | :--- | :--- |
| **`ODD_PROMPT.md`** | **진입점** | 시스템의 뇌와 같은 역할로, 현재 상태와 기억 지도를 관리합니다. |
| **`memory/core/`** | **핵심 세포** | ODD 자체의 구성 요소(Order, Progress 등)를 정의합니다. |
| **`memory/cells/`** | **기억 세포** | 프로젝트의 도메인/기술 지식을 세포 단위로 저장합니다. |
| **`tasks/`** | **작업 기록** | 현재 실행 중인 오더와 태스크의 상태를 관리합니다. |

### 🌟 핵심 가치

*   **기억의 세포화**: 거대한 문서를 뉴런과 같이 작고 명확한 단위로 조개어 참조의 정확도를 높입니다.
*   **연관성 기반 시냅스**: '언어의 거리' 개념을 활용해 세포 간 연관성 점수를 매기고, 연관된 기억을 유기적으로 연결합니다.
*   **컨텍스트 효율성**: 필요한 Cell만 선택적으로 로드하여 불필요한 정보 로딩을 방지합니다. (I/O 3회 vs 컨텍스트 8배 절약)
*   **프롬프트 정밀도**: AI가 방대한 데이터 속에서 길을 잃지 않도록 `ODD_PROMPT`가 최적의 컨텍스트를 주입합니다.

### 📂 시스템 폴더 구조 (Structure Diagram)

```
[Project Root]
 ├── docs/specs/          # 🏛️ Specs (무엇을 만드는가)
 │
 └── {{ODD_DIR}}          # 🧠 ODD Engine (어떻게 기억하는가)
     ├── ODD_PROMPT.md    #    - 시스템 진입점 (v1.1.1)
     ├── memory/          #    - 기억 저장소 (Memory Bank)
     │   ├── core/        #    - ODD 핵심 구성 요소 세포화 문서
     │   ├── cells/       #    - 도메인/기술 지식 기억 세포
     │   └── rules/       #    - 개발 규칙 및 지침
     ├── tasks/           #    - 작업 기록 (Active Board)
     └── history/         #    - 히스토리 (Record Stacks)
```

## 📖 2. 사용 가이드

1.  **설치**: 명령어를 통해 ODD 환경을 구축합니다.
2.  **부팅**: `ODD_PROMPT.md`를 AI에게 전달하여 프로젝트의 기억 지도를 인식시킵니다.
3.  **세포화**: 새로운 지식은 최대한 작게 조개어 `memory/`에 저장하고 `relatedness` 점수를 기록하세요.

---

## 🧭 3. 에이전트 역할 (Roles)

| Role | Responsibility | Location |
| :--- | :--- | :--- |
| **기획자 (Architect)** | 프로젝트의 의도와 설계 방향 정의 | `docs/specs/` |
| **수행자 (Worker)** | 실제 코드 작성 및 작업 로그 기록 | `tasks/` |
| **세포화 전문가 (Cell Engineer)** | 지식을 조개고 연관성을 정의하여 `memory/` 관리 | `memory/` |

## 💡 유용한 팁

*   **프롬프트 우선 호출**: 모든 대화 시작 시 "ODD_PROMPT.md 읽고 시작해"라고 말하세요.
*   **세포화 원칙 준수**: 작업 완료 후 지식을 요약할 때, 하나의 거대한 문서 대신 **수십 개의 세밀한 Cell**로 분해하세요. ([입자도 가이드라인](./odd/memory/core/cell_granularity_guideline.md) 참조)
*   **연관성 명시**: 모든 Cell에 `relatedness` 점수를 포함하여 시냅스 네트워크를 구축하세요.

---

## ⚖️ ODD vs Others

ODD는 다른 AI 프레임워크와 병행하여 시너지를 낼 수 있습니다.

*   **vs Spec Kit (GitHub/Google)**: Spec Kit으로 **정교하게 설계**하고, ODD로 그 과정을 **지속적으로 기억**하세요.
*   **vs Claude Skills**: **ODD 관리 규칙**을 Claude Skill로 등록하여 문서 업데이트를 자동화하세요.

> 더 자세한 비교와 상호보완 전략은 [AI 프레임워크 비교 가이드](./odd-template/reference/rules/COMPARISON_AI_FRAMEWORKS.md)를 확인하세요.
