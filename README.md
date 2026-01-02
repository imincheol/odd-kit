# 🚀 ODD Starter Kit (v1.1.0 Functional)

> **"AI의 기억 상실을 방지하는 명시적 프롬프트 & 참조 시스템."**
>
> **Order Driven Development (ODD) v1.1.0: Functional Architecture**

---

# 🌏 English Guide

## 🛠️ 1. Installation

Run the command below in your terminal. The **Interactive Installer** will guide you through the setup.

```bash
curl -sL https://raw.githubusercontent.com/imincheol/odd-starter/main/odd-template/setup/install.sh | bash
```

### 🌟 Key Features in v1.1.0 (Functional)
- **ODD_PROMPT**: Explicit entry point for AI agents.
- **Reference System**: Replaced metaphors with "Summaries" and "Rules" for better clarity.
- **History Focus**: Dedicated storage for past tasks and logic snapshots.
- **Session-Agnostic Memory**: Works seamlessly across any AI model or device.

### 📂 System Architecture
ODD v1.1.0 separates "Knowledge" (Reference) from "Action" (Tasks).

```mermaid
graph TD
    Root[Project Root] --> Specs[Product Specs /docs/specs]
    Root --> ODD[{{ODD_DIR}}]
    
    subgraph "Knowledge (The Reference)"
        ODD --> Prompt[ODD_PROMPT.md - Entry Point]
        ODD --> Summaries[reference/summaries/ - Current State]
        ODD --> Rules[reference/rules/ - Protocols & Guidelines]
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

### 🧠 ODD 컨셉: "기능 중심 아키텍처 (Functional Architecture)"

ODD v1.1.0은 추상적인 메타포를 걷어내고, AI와 인간이 **'데이터'**와 **'명령'**으로 소통하는 실용적인 시스템을 지향합니다.

| 구성 요소 | 명칭 | 기능 |
| :--- | :--- | :--- |
| **`ODD_PROMPT.md`** | **진입점** | AI 에이전트가 가장 먼저 읽어야 할 핵심 지침서입니다. |
| **`reference/`** | **참조 정보** | 프로젝트의 **요약된 상태(Summaries)**와 **실행 규칙(Rules)**이 들어있습니다. |
| **`tasks/`** | **작업 기록** | 실행 중인 명령(Order)과 실시간 진행 로그(Progress)를 관리합니다. |
| **`history/`** | **히스토리** | 완료된 작업의 결과물과 증거 자료를 시간순으로 보관합니다. |

### 🌟 핵심 가치

*   **명확한 프롬프트 주입**: `ODD_PROMPT.md` 파일을 통해 AI에게 프로젝트의 정체성과 현재 위치를 즉각 인식시킵니다.
*   **요약 정보의 자산화**: 개별 작업 로그를 누적하는 데 그치지 않고, 시스템의 현재 로직을 `summaries/`에 압축하여 AI의 지능을 유지합니다.
*   **세션 독립적 연속성**: 브라우저가 꺼지거나 기기가 바뀌어도, 파일 시스템에 기록된 오더와 요약 정보를 통해 즉시 작업을 재개합니다.

### 📂 시스템 폴더 구조 (Structure Diagram)

```
[Project Root]
 ├── docs/specs/          # 🏛️ Specs (무엇을 만드는가)
 │   ├── 1_planning/      #    - 요구사항 정의
 │   ├── 2_design/        #    - UI/UX 설계
 │   └── 3_development/   #    - 기술 아키텍처
 │
 └── {{ODD_DIR}}          # 🧠 ODD Engine (어떻게 기억하는가)
     ├── ODD_PROMPT.md    #    - 시스템 진입점 (Entry Point)
     ├── reference/       #    - 참조 정보 (Knowledge Base)
     │   ├── summaries/   #    - 기능 및 로직 요약본 (Current State)
     │   └── rules/       #    - 개발 규칙 및 지침 (Rules)
     ├── tasks/           #    - 작업 기록 (Active Board)
     │   └── roadmap.md   #    - 전체 목표 및 현황
     └── history/         #    - 히스토리 (Record Stacks)
```

## 📖 2. 사용 가이드

1.  **설치**: 명령어를 통해 ODD 환경을 구축합니다.
2.  **부팅**: 생성된 `{{ODD_DIR}}/setup/ODD_INIT.md`를 AI에게 전달하여 프로젝트를 브리핑합니다.
3.  **순환**: 매 오더 작업이 끝나면 **history/`**에 기록을 남기고 **reference/summaries/**를 갱신하도록 하세요.

---

## 🧭 3. 에이전트 역할 (Roles)

| Role | Responsibility | Location |
| :--- | :--- | :--- |
| **기획자 (Architect)** | 프로젝트의 의도와 설계 방향 정의 | `docs/specs/` |
| **수행자 (Worker)** | 실제 코드 작성 및 작업 로그 기록 | `tasks/` |
| **분석자 (Analyst)** | 지식 요약 및 히스토리 관리 | `reference/`, `history/` |

## 💡 유용한 팁

*   **프롬프트 우선 호출**: 모든 대화 시작 시 "ODD_PROMPT.md 읽고 시작해"라고 말하세요.
*   **문서 업데이트 자동화**: AI에게 "작업 끝나면 요약 정보(Summaries) 업데이트해"라고 명령하는 습관을 들이세요.
