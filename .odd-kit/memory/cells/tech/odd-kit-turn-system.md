---
type: memory-cell
category: tech
subcategory: architecture
subject: Turn-Based Operational Lifecycle
status: active
priority: critical
last-updated: 2026-01-03
---

# 🧠 Memory Cell: Turn-Based Operational Lifecycle (v2.0.0)

이 셀은 ODD Kit의 시간적 실행 단위인 '턴(Turn)'의 생애주기를 정의한다. 시스템은 지식의 **무결성(Turn-0/Memory)**과 **변화(Turn-Order)**를 철저히 분리하여 운용한다.

## 🔄 1. The Turn Lifecycle (한눈에 보기)

| 단계 | 명칭 | 행동 (Action) | 의미 (Meaning) |
| :--- | :--- | :--- | :--- |
| **Turn-0** | **Bootstrap** | 진입점 로딩 및 지식 흡수 (TM-1) | "나는 누구인가?" (인덱싱) |
| **Turn-Memory** | **Sync** | 지식 간의 불일치 해소 및 정합성 보장 | "기억이 정확한가?" (최적화) |
| **Turn-Order** | **Execution** | 작업 수행, 로그 기록 및 지식 환원 | "무엇을 기여했나?" (생산) |

---

## 🛠️ 2. 단계별 상세 정의

### 🟦 Turn-0: Bootstrap (에이전트 자아 로딩)
- **수정 불필요**: 이 턴은 오직 에이전트가 정보를 **읽고(Read)** 자신의 상태를 **동기화(Sync)**하는 데 집중한다.
- **수행 작업**:
  1. `PROMPT_KIT-{{PROJECT_NAME}}.md` (부트로더) 읽기.
  2. 로드맵 및 활성 오더 현황 파악.
  3. 관련 메모리 셀 로드.

### 🟩 Turn-Memory: Knowledge Sync (지식 항상성 유지)
- **무결성 보장**: 파편화된 정보를 원자적 메모리 셀로 전환하고, 이를 다시 공식 스펙으로 환원한다.
- **구성**:
  - **TM-0 (Archiving)**: `active/`에 완료된 오더가 있다면 `history/`로 선제 이동.
  - **TM-1 (Ingestion)**: 아카이빙된 히스토리와 스펙을 전수조사하여 세포(Cell)로 응축.
  - **TM-2 (Back-Sync)**: 세포의 지식을 스펙 문세에 일괄 반영.

### 🟧 Turn-Order: Execution Cycle (변화와 기여)
- **코드/문서 생산**: 실제 시스템의 상태를 변화시키는 유일한 턴이다.
- **구성**:
  - **TO-1 (Active)**: 오더/프로그레스 기반의 실제 작업 및 결과 보고.
  - **TO-2 (Stabilization)**: 수행된 태스크를 아카이빙하고, 습득된 새로운 지식을 곧바로 메모리에 주입.

---

## ⚖️ 3. 운영 수칙 (The Laws)
1. **No Skip Turn-0**: 어떤 작업도 부트스트랩 없이 시작할 수 없다.
2. **Order Immutability**: Turn-Order 중에 오더의 원본(계약서)을 수정하지 않는다.
3. **Pillar Integrity**: 모든 턴은 최종적으로 'Specs - Template - PK Engine' 세 기둥이 일치되는 방향으로 수렴해야 한다.

---
**Related Documents:**
- `docs/specs/1-planning/odd-kit-operational-protocol.md`
- `.odd-kit/reference/rules/odd-kit-system.md`
- `.odd-kit/tasks/roadmap.md`
