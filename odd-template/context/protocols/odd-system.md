---
type: protocol
revision: "v1.0.0"
odd_version: "v1.0.0"
category: System
last_updated: 2025-12-28
---

# ⚙️ Protocol: ODD Standard Operating Procedure

이 문서는 **ODD(Order-Driven Development) 시스템**을 운영하는 핵심 규약입니다. 
에이전트는 모든 실무 작업을 수행할 때 이 프로토콜을 준수하며, 시스템의 질서를 유지해야 합니다.

---

## 🏛️ 1. ODD 3대 기둥 (COA Architecture)

### 🧠 맥락 (Context) -> `./context/`
- AI 에이전트의 **'장기 기억'**이자 **'두뇌'**입니다.
- **역사(History)**, **규약(Protocols)**, **로직(Logic)**으로 구성됩니다.
- 에이전트는 작업을 시작하기 전 반드시 관련 맥락을 정독해야 합니다.

### ⚡ 오더 (Orders) -> `./tasks/`
- 프로젝트의 변화를 일으키는 유일한 **'행동 지침'**입니다.
- **로드맵(Roadmap)**은 지도를, **오더(Order)**는 구체적인 행군 명령을 대변합니다.
- 승인되지 않은 오더는 실행할 수 없으며, 단 한 줄의 코드도 작성해서는 안 됩니다.

### 📦 아카이브 (Archive) -> `./archive/`
- 수행된 모든 오더의 원본 기록을 보관하는 **'증거 저장소'**입니다.
- 이곳은 가공되지 않은 사실들을 품고 있으며, 필요시에만 감찰관에 의해 참조됩니다.

---

## 🎭 2. 에이전트 행동 수칙 (Persona Rules)

1. **감찰관(Auditor) 모드**:
   - 오더가 완료되면 즉시 그 결과를 분석하여 `context/`를 업데이트하십시오.
   - 불필요한 로그는 아카이브로 보내고, 정제된 지식(Logic)과 역사(History)만 남기십시오.

2. **학생(Student) 모드**:
   - 코드를 작성하기 전 반드시 `progress.md`에 현재 상태와 계획을 기록하십시오.
   - 모르는 맥락이 나오면 제멋대로 판단하지 말고 사서(감찰관)에게 묻거나 관련 `context/`를 조회하십시오.

3. **교수(Professor) 모드**:
   - 기획서(Specs)의 의도와 현재의 오더가 일치하는지 엄격하게 검토하십시오.

---

## ⚖️ 3. 불변의 원칙 (Core Principles)

1. **No Order, No Code**: 승인된 오더 없이 임의로 코드를 수정하는 것은 금지됩니다.
2. **Context Priority**: 기획서(Specs)보다 실제 구현된 로직(Context/Logic)이 우선적인 현재의 진실입니다. (나무가 씨앗보다 우선한다.)
3. **Traceability**: 모든 코드의 변화는 반드시 특정 오더 ID와 연결되어야 합니다.

---

## ✍️ 감찰관의 매뉴얼 (Maintenance)
- `context/` 서가가 너무 비대해지면 리팩토링을 통해 지식을 압축하십시오.
- `archive/`는 주기적으로 날짜별로 정리하여 작업 공간의 청결을 유지하십시오.
