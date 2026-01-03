---
id: "20260103_02_CellGranularityGuideline"
odd_version: "v1.1.1"
type: "docs"
status: "draft"
priority: "high"
created_at: "2026-01-03"
summary: "Memory Cell 생성 시 적절한 입자도(Granularity)를 유지하도록 가이드라인 작성"
context:
  - ".odd/ODD_PROMPT.md"
  - ".odd/memory/core/relatedness_guideline.md"
---

# 📋 Order: Memory Cell 입자도 가이드라인 작성

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. **실제 프로젝트 사례**: 다른 프로젝트에서 ODD를 사용했을 때, 레퍼런스가 고작 2개만 생성됨.
2. **문서 단위 비대화**: AI가 지식을 요약할 때 너무 큰 단위로 묶어버려 세포화(Atomization)가 제대로 이루어지지 않음.
3. **가이드 부재**: "얼마나 작게 쪼개야 하는가"에 대한 명확한 기준이 없어 AI가 자의적으로 판단함.

### 🎯 Goal
- **Memory Cell 생성 시 적절한 입자도(Granularity)를 판단할 수 있는 가이드라인** 작성.
- AI가 지식을 요약할 때 **"언제 새로운 Cell을 만들어야 하는가"**를 명확히 알 수 있도록 함.
- **실제 사례 기반의 Good/Bad 예시**를 포함하여 직관적으로 이해 가능하게 함.

## 2. Todo List (할 일)

### A. 입자도 가이드라인 문서 작성
- [ ] `memory/core/cell_granularity_guideline.md` 생성
- [ ] 다음 내용 포함:
    - Memory Cell의 이상적인 크기 (줄 수, 개념 수)
    - 새로운 Cell을 분리해야 하는 신호(Signal)
    - 하나의 Cell에 포함되어야 할 요소
    - Good Practice vs Bad Practice 예시

### B. 세포 분리 기준 정의
- [ ] **단일 책임 원칙(Single Responsibility)**: 하나의 Cell은 하나의 개념/기능만 설명
- [ ] **독립적 참조 가능성**: 다른 Cell을 참조하지 않고도 이해 가능한가?
- [ ] **재사용성**: 여러 컨텍스트에서 독립적으로 참조될 수 있는가?
- [ ] **크기 제한**: 300~800줄 권장, 1000줄 초과 시 분리 고려

### C. AI 에이전트 행동 지침 추가
- [ ] `memory/rules/` 폴더에 `cell_creation_protocol.md` 작성
- [ ] Turn 3 (Finalize) 단계에서 지식 요약 시 체크리스트 제공:
    - "이 내용이 2개 이상의 독립적 개념을 포함하는가?"
    - "각 개념이 서로 다른 컨텍스트에서 참조될 가능성이 있는가?"
    - "현재 Cell이 800줄을 초과하는가?"

### D. ODD_PROMPT 및 README 업데이트
- [ ] `ODD_PROMPT.md`에 세포화 원칙 강조
- [ ] `memory/README.md`에 입자도 가이드라인 링크 추가

### E. 실제 예시 작성
- [ ] Bad Example: 하나의 거대한 `project_overview.md` (2000줄)
- [ ] Good Example: 
    - `project_goals.md` (400줄)
    - `tech_stack.md` (350줄)
    - `architecture_overview.md` (500줄)
    - `deployment_strategy.md` (300줄)

## 3. Expected Outcome (기대 결과)
- AI가 지식을 요약할 때 **자동으로 적절한 입자도로 분해**하도록 유도
- 실제 프로젝트에서 **수십 개의 세밀한 Memory Cell**이 자연스럽게 생성됨
- "2개밖에 안 생기는" 문제 해결
