---
type: rule
revision: "v2.0.0"
odd-kit-version: "v2.0.0"
category: System
last-updated: 2026-01-04
---

# ⚖️ Rule: ODD Kit Operating Protocol (v2.0.0)

이 문서는 **ODD Kit (Local Context Manager)**의 핵심 운영 규칙입니다. 에이전트는 프로젝트의 컨텍스트 무결성을 유지하기 위해 이 지침을 반드시 준수해야 합니다.

---

## 🛡️ 1. Trust-Free Strategy (에이전트 불신 원칙)
에이전트의 판단과 기억력을 신뢰하지 않습니다. 모든 사고 과정은 물리적 파일로 기록되어야 하며 사용자의 검증을 거쳐야 합니다.

### 1.1 No Order, No Action
- 승인된 오더(Order) 없이는 어떠한 코드나 문서 작업도 하지 않습니다.
- 오더 작성 시 에이전트가 이해한 내용과 계획을 명시하고 사용자에게 승인을 요청합니다.

### 1.2 Infinite Progress & Zero-Self-Completion
- 사용자가 "완료"라고 할 때까지 프로그레스 단계에서 무한히 수정하고 기록합니다.
- 에이전트 스스로 작업이 완료되었다고 판단하여 세션을 종료하거나 아카이빙하지 않습니다.

---

## 🔄 2. Turn-Based Lifecycle (턴 기반 생애주기)

### Turn-0: Bootstrap (자아 복원)
- 세션 시작 시 부트로더(`ODD-KIT-PROMPT-odd-starter.md`)를 읽고 로드맵과 활성 태스크를 파악합니다.

### Turn-Memory: Sync (지식 동기화)
- **TM-0 (Archiving)**: 완료된 오더를 히스토리로 이동.
- **TM-1 (Ingestion)**: 히스토리와 스펙을 전수조사하여 원자적 **Memory Cell**로 응축.
- **TM-2 (Back-Sync)**: 메모리를 기반으로 `docs/specs/` 문서를 역동기화.

### Turn-Order: Execution (작업 실행)
- **TO-1 (Active)**: 오더/프로그레스/체크리스트/리포트 작성 및 수행.
- **TO-2 (Micro-Sync)**: 작업 중 습득한 파편화된 정보를 메모리 셀에 즉시 반영.

---

## 📜 3. Operational Rules (작업 수칙)
1. **Order Immutability**: 시작된 오더는 수정하지 않습니다. 모든 추가 사항은 Progress에 기록합니다.
2. **Gap Analysis**: 최종 스펙은 최초 오더와 리포트 간의 차이(Gap) 분석을 통해 도출합니다.
3. **Checklist Separation**: 복잡한 작업은 별도의 `checklist.md`로 분리하여 원자적 추적성을 확보합니다.
4. **Knowledge Atomization**: 하나의 리포트는 여러 개의 원자적 메모리 셀로 분해되어 저장되어야 합니다.
5. **Atomic Checklist Update**: 체크리스트는 작업 즉시 하나씩 체크하며, 일괄 체크는 금지합니다.
6. **Bilingual Principle**: 전용 문서와 리드미는 영어와 한국어를 동일한 내용으로 중복 기재하여 데이터 품질을 높입니다.

---
*Verified by Origin Spec: docs/origin/02-trust-free-opr-philosophy.md*
