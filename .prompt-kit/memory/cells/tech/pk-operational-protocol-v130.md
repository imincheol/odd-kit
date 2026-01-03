---
type: memory-cell
category: tech
subcategory: protocol
subject: Split-Turn Operational Architecture
status: active
priority: critical
last_updated: 2026-01-03
---

# 🧠 Memory Cell: Split-Turn Operational Architecture (v1.3.0)

이 셀은 Prompt Kit의 심장부이며, 지식의 생성(Order)과 보존(Memory)의 선순환 구조를 정의한다.

## 🔄 1. Turn-Memory (Knowledge Sync)
이 단계는 시스템의 '항상성'과 '정확성'을 유지한다. 모든 작업에 앞서 지식의 상태를 최신화하며, **Turn-0 (Bootstrap)** 이후 가장 먼저 수행된다.

### 🧩 Turn-Memory-0 (Archiving)
- **Action**: `tasks/active/` 내의 완료된 오더와 로그를 `history/`로 선행 이동.
- **Goal**: 지식 스캔 전, 모든 최신 작업 경험을 영구 기록 보관소에 통합.

### 🧩 Turn-Memory-1 (Ingestion)
- **Action**: `docs/specs/`, `history/`, `memory/` 전체를 전수조사.
- **Goal**: 모든 파편화된 정보를 **원자화(Atomization)**하여 `memory/cells/`로 업데이트.
- **Audit**: 상충되는 스펙이나 누락된 히스토리를 발견하여 지식의 모순을 제거.

### 🧩 Turn-Memory-2 (Back-Sync)
- **Action**: 관리된 `memory/cells/`의 내용을 기반으로 `docs/specs/` 및 `pk-template/` 문서를 역으로 업데이트.
- **Goal**: 설계 문서와 실제 구현 지식의 100% 일치를 보장.

---

## ⚡ 2. Turn-Order (Execution Cycle)
이 단계는 실제 변화를 일으키는 '행동'을 관리한다.

### 🧩 Turn-Order-1: Active Phase
1. **1-1 (Planning)**: 오더 생성 및 분류. 로드맵 관리.
2. **1-2 (Execution)**: 오더 승인 후 Progress/Checklist 기반 작업 수행.
3. **1-3 (Completion)**: 작업 완료 보고(Report) 작성.

### 🧩 Turn-Order-2: Micro-Sync (Stabilization)
1. **2-1 (Update)**: 수행된 태스크에서 습득한 새로운 지식을 기존 Memory Cell에 즉시 주입하고, 관련 스펙 문서를 동시에 업데이트 (Micro-Sync).

---

## ⚖️ 3. Operational Law
- **Knowledge Zero-Amnesia**: 기록되지 않은 지식은 망각된 것이며, 동기화되지 않은 스펙은 거짓이다.
- **Mandatory Turn-0**: 모든 에이전트는 세션 시작 시 **Turn-0 (Bootstrap)**를 반드시 수행하여 자신의 뇌(Memory)를 최신화해야 한다.
- **Order Immutability**: 활성화된 오더는 수정하지 않는다. 추가 계획이나 변동 사항은 반드시 **Progress**에 기록한다.
- **Checklist Separation**: 가독성과 정밀함을 위해 복잡한 태스크는 별도의 `checklist.md`로 분리한다.
- **Accumulative Integration**: 기존 가치를 보존하고 내용을 '추가'하여 보강한다.

---
**Related Documents:**
- `docs/specs/1_planning/pk-operational-protocol.md`
- `.prompt-kit/reference/rules/pk-system.md`
- `.prompt-kit/memory/cells/tech/pk-turn-system.md`
- `.prompt-kit/memory/cells/tech/pk-v130-evolution-log.md`
