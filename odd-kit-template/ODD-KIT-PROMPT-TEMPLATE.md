# ODD-KIT-PROMPT: {{PROJECT-NAME}}
> **ODD Kit v2.0.0: The Order-Driven Context Management Kit**

이 문서는 에이전트의 작업 메모리에 **오더 기반 개발 컨텍스트(Order-Driven Context)**를 주입하는 **부트 로더(Boot Loader)**입니다. 에이전트는 이 프로젝트의 모든 철학, 프로토콜, 구조를 이 한 장의 문서를 통해 이해해야 합니다.

---

## 🏗️ 1. Project Philosophy (3 Pillars)
본 프로젝트는 시간과 기능에 따라 세 가지 핵심 영역으로 구분됩니다.

1. **`docs/` (Present)**: 현행 설계도. "스펙에 없는 기능은 존재하지 않는다."
2. **`odd-kit-template/` (Future)**: 타 프로젝트 배포를 위한 원형 프레임워크.
3. **`{{ODD-KIT-DIR}}/` (Past~Now)**: 프로젝트를 직접 빌드하는 개발 엔진 및 작업 기록.

## 🛡️ 2. Trust-Free Protocol (OPR Lifecycle)
에이전트의 판단과 기억력을 신뢰하지 않습니다. 모든 사고와 행동은 물리적 파일로 증명되어야 합니다.

1. **Order (오더)**: 작업 시작 전 에이전트의 계획을 제안하고 **사용자의 명시적 승인**을 받습니다. 승인된 오더는 수정하지 않습니다.
2. **Progress (프로그레스)**: 모든 작업 과정, 생각, 버그 수정 내역을 실시간으로 기록합니다. 사용자가 **"완료"를 선언할 때까지** 반복합니다.
3. **Report (리포트)**: 최종 결과를 요약하고, 습득한 지식을 **Docs Specs**와 **Memory Cells**에 즉시 환원합니다.

## 🔄 3. Operational Flow (Turn-Based)
지식의 보존(Memory)과 작업의 실행(Order)을 분리하여 운용합니다.

- **Turn-0 (Bootstrap)**: 현재 이 파일(부트로더)을 읽고 작업 맥락을 파악합니다.
- **Turn-Memory (Sync)**: 히스토리 아카이빙(TM-0) -> 지식 원자화(TM-1) -> 스펙 역동기화(TM-2).
- **Turn-Order (Execution)**: 오더/프로그레스 작성(TO-1) -> 지식 환원 업데이트(TO-2).

## 🧭 4. Navigation (Context Map)

### 🧠 Local Context (Memory) -> `{{ODD-KIT-DIR}}/memory/`
- **`core/`**: 시스템 핵심 정의 (Role, Protocol)
- **`cells/`**: 도메인 및 기술 지식의 최소 단위 (Atomic Cells)
  - [System Rules](./memory/cells/tech/odd-kit-system-v200.md): 상세 운영 수칙 및 Trust-Free 규칙

### ⚡ Workflow (Action) -> `{{ODD-KIT-DIR}}/tasks/`
- **`roadmap.md`**: 거시적 마일스톤 및 전략.
- **`active/`**: 현재 진행 중인 오더, 프로그레스, 체크리스트.

### 🗄️ History (Archive) -> `{{ODD-KIT-DIR}}/history/`
- 과거의 모든 태스크 수행 기록 (Order-Progress-Report 세트).

---

## ⚖️ Operational Laws
1. **No Order, No Action**: 승인된 오더 없이 어떠한 코드나 문서도 수정하지 않습니다.
2. **Infinite Progress**: 사용자가 만족할 때까지 모든 수정 과정은 프로그레스에 투명하게 남깁니다.
3. **Pillar Sync**: Specs, Template, Engine은 항상 동일한 지식 평면을 유지해야 합니다.
4. **Bilingual Spec**: README 등 주요 문서는 영어와 한국어를 동일한 비중으로 중복 기재합니다.

> **에이전트에게**: 지금 바로 `{{ODD-KIT-DIR}}/tasks/active/`의 오더와 `roadmap.md`를 확인하여 다음 작업을 준비하십시오.