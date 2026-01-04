---
type: rule
revision: "v2.0.0"
odd-kit-version: "v2.0.0"
category: System
last-updated: 2026-01-03
---

# ⚖️ Rule: ODD Kit Operating Protocol (v2.0.0)

이 문서는 **ODD Kit (Local Context Manager)**의 핵심 운영 규칙입니다. 에이전트는 프로젝트의 컨텍스트 무결성을 유지하기 위해 이 지침을 반드시 준수해야 합니다.

### 📌 핵심 원칙 (Core Principles)
ODD Kit은 AI가 프로젝트의 **로컬 컨텍스트(Local Context)**를 완벽하게 유지하도록 설계되었습니다. 모든 지식은 원자화되어야 하며, 실행은 명시적 근거를 바탕으로 이루어집니다.

---

## 🔄 1. Turn-Memory (지식 동기화)
지식의 정합성과 항상성을 유지하기 위한 프로세스입니다.

### Turn-Memory-0 (Archiving)
- **Action**: `tasks/active/`에 완료된 오더가 있다면 `history/`로 선행 이동.
- **Rules**: 지식 업데이트 전, 모든 작업 기록을 최신 상태로 정리.

### Turn-Memory-1 (Ingestion & Atomization)
- **Action**: `docs/specs/`, `history/`, `memory/`를 전수조사.
- **Rules**: 정보를 최소 단위의 **Memory Cell**로 분해하고 중복/충돌을 해결하여 메모리에 업데이트.

### Turn-Memory-2 (Back-Sync)
- **Action**: 업데이트된 메모리를 기반으로 `docs/specs/` 및 `odd-kit-prompt-template/`를 역동기화.
- **Rules**: "메모리 = 스펙" 상태를 100% 유지.

---

## ⚡ 2. Turn-Order (작업 실행)
실제 변화를 일으키는 행동 주기입니다.

### Turn-Order-1 (Active Phase)
1. **1-1 (Planning)**: 오더 생성 및 분류. 참조할 메모리 셀 명시.
2. **1-2 (Execution)**: 프로그레스/체크리스트 생성 및 작업 수행.
3. **1-3 (Reporting)**: 결과 보고서(Report) 작성. 메모리 활용도 기록.

### Turn-Order-2 (Micro-Sync/Update)
1. **2-1 (Update)**: 작업 중 습득한 지식을 관련 메모리 셀과 스펙에 즉시 반영.

---

## ⚖️ 3. 핵심 운영 규칙 (Operational Laws)
1. **Knowledge Zero-Amnesia**: 기록되지 않은 지식은 망각된 것이며, 동기화되지 않은 스펙은 거짓입니다.
2. **Mandatory Turn-0**: 모든 에이전트는 세션 시작 시 **Turn-0 (Bootstrap)**를 반드시 수행하여 자신의 뇌(Memory)를 최신화해야 합니다.
3. **Order Immutability**: 활성화된 오더는 수정하지 않습니다. 모든 추가 사항은 **Progress**와 **Checklist**에 기록합니다.
4. **Checklist Separation**: 가독성과 정밀함을 위해 복잡한 태스크는 별도의 `checklist.md`로 분리하여 관리합니다.
5. **Accumulative Integration**: README 등 외부 노출용 문서는 기존 가치를 보존하고 내용을 '추가'하여 보강합니다.
6. **Explicit-Based**: 모든 오더는 참조하는 메모리 셀을 명시하고, 행동의 근거를 물리적 파일로 남겨야 합니다.
7. **Atomic Checklist Update**: 체크리스트의 각 항목은 해당 작업이 완료된 즉시 개별적으로 체크되어야 합니다. 여러 항목을 일괄적으로 처리한 후 한 번에 체크하는 행위는 작업의 투명성과 추적성을 저해하므로 엄격히 금지합니다.
