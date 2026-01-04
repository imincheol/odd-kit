# ODD Kit vs Spec Kit vs Claude Skills

이 문서는 AI 협업 프레임워크인 **ODD Kit v2.0.0**과 현대적인 다른 도구들(**Spec Kit**, **Claude Skills**)의 차이점을 분석하고, 이를 어떻게 상호보완적으로 사용하여 최상의 개발 효율을 낼 수 있는지 설명합니다.

---

## 1. 프레임워크별 핵심 비교

| 구분 | **ODD Kit (Context Driven)** | **Spec Kit (Workflow)** | **Claude Skills (Ability)** |
| :--- | :--- | :--- | :--- |
| **핵심 목적** | **맥락 유지 및 프롬프트 최적화** | **작업 규격화 및 검증** | **반복 작업의 '능력'화** |
| **동작 방식** | 파일 시스템 기반의 기억(Memory) 관리 | 단계별 승인 워크플로우 (Gates) | 재사용 가능한 능력 패키지 |
| **주요 엔진** | `ODD-KIT-PROMPT.md` + Memory Cells | `Specification` → `Technical Plan` | `SKILL.md` + 실행 스크립트 |
| **사용 환경** | 도구 독립적 (모든 AI 가능) | 에이전트 독립적 (CLI 중심) | Claude 전용 (특화 기능) |

---

## 2. 상세 분석

### 🧠 ODD Kit: "살아있는 프롬프트 시스템"
ODD Kit은 에이전트에게 **"무엇을 기억하고 참고해야 하는지"**를 구조적으로 제공하여, AI의 **'긴 대화에서의 기억 손실(Context Drift)'**을 해결합니다.
*   **Prompt-Ready Memory**: 단순 아카이빙이 아니라, 언제든 프롬프트에 즉시 주입 가능한(Injectable) 상태로 기억을 세포화(Cell)하여 관리합니다.
*   **Order Driven**: "오더(Order) → 프로그레스 → 리포트"의 사이클을 통해 오더를 수행할 때마다 프로젝트의 지능이 강화됩니다.
*   **Trust-Free Protocol**: 에이전트를 믿지 않고 모든 판단을 명시적으로 기록하여 정합성을 보장합니다.

### 📋 Spec Kit: "사양 중심의 엄격함"
GitHub/Google 생태계에서 강조되는 Spec Kit은 **'생각 없는 코딩(Vibe Coding)'**을 방지하는 데 초점을 맞춤니다.
*   **Gated Workflow**: 사양이 확정되지 않으면 계획을 세우지 않고, 계획이 검증되지 않으면 코딩을 시작하지 않는 엄격한 단계를 거칩니다.
*   **표준화된 언어**: AI와 인간이 소통할 때 모호함을 제거하기 위해 고도로 구조화된 문서 템플릿을 제공합니다.

### 🛠️ Claude Skills: "절차적 지식의 캡슐화"
클로드 스킬은 AI에게 **'특정 상황에서의 행동 요령'**을 미리 주입해두는 전문 기술 모듈입니다.
*   **재사용성**: 한 번 정의된 스킬(예: 배포 스킬, 보안 점검 스킬)은 여러 대화에서 공통으로 사용될 수 있습니다.
*   **능력 확장**: 복잡한 실행 명령이나 도구 사용법을 스킬 내부에 감추고, 사용자에게는 단순한 인터페이스만 제공합니다.

---

## 3. 상호보완 전략 (Best Practice)

### ✅ 전략 1: Spec Kit으로 설계하고 ODD Kit으로 실행하기
1.  **설계 단계**: `Spec Kit`의 템플릿을 활용하여 고도로 정밀한 `Product Spec`과 `Technical Plan`을 작성합니다.
2.  **이식**: 작성된 Plan을 ODD Kit의 `docs/specs/`와 `tasks/roadmap.md`에 이식합니다.
3.  **실행**: ODD Kit의 `Order` 시스템을 통해 실제 구현 과정을 기록하고, 그 과정에서 발생하는 지식을 `Memory`에 축적합니다.

### ✅ 전략 2: Claude Skills로 ODD Kit 관리 자동화하기
1.  **자동화**: ODD Kit의 문서 업데이트(Summary 갱신, History 아카이빙)를 수행하는 **`Manager-Skill`**을 생성합니다.
2.  **내용**: "작업이 완료될 때마다 ODD Kit의 `memory/` 폴더를 최신화하고 로그를 기록하라"는 지침을 스킬에 넣습니다.
3.  **효과**: 개발자는 비즈니스 로직에만 집중하고, 문서화 관리는 클로드의 스킬이 자동으로 수행합니다.

### ✅ 전략 3: ODD Kit을 '시스템의 두뇌'로 삼기
*   AI 도구는 바뀔 수 있습니다 (Claude → Gemini → Search1).
*   하지만 프로젝트의 지식과 히스토리는 바뀌면 안 됩니다.
*   모든 핵심 지식과 규칙은 **ODD Kit 체계(`memory/`, `specs/`)**에 표준 Markdown으로 남겨두고, 각 AI 도구의 특수 기능(Spec Kit, Skills)은 이를 보강하는 수단으로 활용하십시오.
