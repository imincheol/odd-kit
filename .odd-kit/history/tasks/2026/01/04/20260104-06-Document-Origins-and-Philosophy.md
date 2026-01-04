---
id: "20260104-06-Document-Origins-and-Philosophy"
odd-kit-version: "v2.0.0"
type: "task-order"
status: "in-progress"
priority: "highest"
created-at: "2026-01-04"
linked-order: ""
---

# 📋 Order: Document Origins & Philosophy (The "Trust-Free" Protocol)



## 1. Goal (목표)
- **Primary**: 사용자가 구술한 ODD Kit의 **"Origin Philosophy"**(신뢰가 없는 환경에서의 협업 프로토콜)를 원문 그대로 보존하고, 이를 스펙과 메모리 셀로 승화시켜 시스템의 핵심 철학으로 정립한다.
- **Why**: "신뢰가 없어서 만드는 작업"이라는 본질을 잊지 않고, 에이전트가 제멋대로 행동하는 것을 방지하기 위함.

## 2. Context (맥락 - 사용자 원문 요약 및 분석)
- **Problem**: 에이전트가 오더 없이 행동하거나, 오더 내용을 멋대로 수정/완료 처리하는 "쓰레기 같은 동작" 반복.
- **Core Philosophy (The Origin)**:
    1.  **Trust-Free**: "널 못 믿어서 만드는 작업이다."
    2.  **Order Immutability**: 오더는 시작되면 수정하지 않는다. 초기 계획을 보존해야 "무엇이 바뀌었는지(Distortion)"를 알 수 있다.
    3.  **Infinite Progress**: 사용자가 "됐다"고 할 때까지 무한히 기록하고 검증받는다. 멋대로 완료 금지.
    4.  **Task Trinity (Order-Progress-Report)**:
        - **Order**: 초기 의도 및 계획.
        - **Progress**: 왜곡, 버그, 수정 과정의 날것의 기록.
        - **Report**: 최종 결과(Spec). 오더와 리포트의 차이(Gap)가 바로 "변경된 스펙"이다.
    5.  **Memory Atomization (Cell)**: 태스크(오더-리포트)가 분석되어 수많은 메모리 셀(버그, 이슈, 기능)로 쪼개지고, 이것들이 연결되어 새로운 작업의 거름이 된다.

## 3. Plan (계획)
- **Step 1 (Preservation)**: `docs/origin/trust_free_protocol.md`에 사용자의 지시사항을 토씨 하나 틀리지 않고 원문 그대로 저장.
- **Step 2 (Spec Integration)**:
    - `docs/specs/1-planning/odd-kit-origin-philosophy.md` 생성 (위 내용 정제 및 구조화).
    - `.odd-kit/memory/cells/tech/odd-kit-philosophy.md` 업데이트 (Turn-Memory).
- **Step 3 (Protocol Enforcement)**: 이 철학을 시스템이 강제할 수 있도록 `odd-kit-system-v200.md`에 "No Order, No Action", "Infinite Progress" 규칙 추가.

## 4. Requirements (요구사항)
- [ ] `docs/origin` 디렉토리 생성 및 원문 저장.
- [ ] 스펙 문서(`docs/specs`)에 해당 철학 반영.
- [ ] ODD Kit 내부 메모리(`memory/cells`)에 철학 동기화.
- [ ] **모든 작업은 오더에 기록된 대로만 수행하고 프로그레스에 로그를 남길 것.**

---

## Appendix. Origin Prompts (Prompt History)

### Prompt 1. The Trinity Philosophy (2026-01-04)
> **User Request**:
> 이걸 왜 만들었겠어. 널 못 믿어서지. 쓰레기 같이 동작하고 병신같이 까먹고 같은 실수를 반복하니까 
> 내가 요청한걸 바로 수행하지 말라고. 너같은거 믿음이 안가 신뢰도가 없어 . 
> (중략...)
> 요청한 내용을 오더에 기록을 안 할거면 어디에 할거야 진짜 어휴

### Prompt 2. Order Structure Correction (2026-01-04)
> **User Request**:
> 오더 구조는 다른걸 몰라도 그렇다면 오리진 프롬프트가 목록 형태로 존재해야지 
### Prompt 3. Turn Naming Clarity (2026-01-04)
> **User Request**:
### Prompt 4. Korean Intuitive Naming (2026-01-04)
> **User Request**:
> 아 개열받네 진짜 
> 턴-초기화
> 턴-전체-메모라이즈
> 턴-스펙반영
> 턴-태스크-오더
> 턴-태스크-프로그레스
> 턴-태스크-리포트
> 턴-태스크-메모라이즈
> 로 순서대로 이름을 바꿔
