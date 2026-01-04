# 📖 Specification: ODD Kit Operational Protocol (v2.0.0)

> **Status**: Verified by Memory Cell `odd-kit-operational-protocol-v200.md`

## 1. 개요
본 문서는 ODD Kit 시스템의 운영 프로세스를 규정한다. 본 시스템은 지식의 **원자화(Atomization)**와 **동기화(Synchronization)**를 통해 AI의 문맥 유지 능력을 극대화한다.

## 2. 🔄 Turn Lifecycle (운영 생애주기)

시스템은 아래의 3단계 순환 체계를 통해 지식의 무결성과 작업의 생산성을 동시에 확보한다.

| 단계 | 명칭 | 주요 활동 | 목표 |
| :--- | :--- | :--- | :--- |
| **Turn-0** | **Bootstrap** | 부트로더 로딩, 태스크 현황 파악 | 에이전트 문맥 동기화 및 자아 정립 |
| **Turn-Memory** | **Sync** | 아카이빙(TM-0), 동기화(TM-1/2) | 프로젝트 지식의 항상성 및 정합성 유지 |
| **Turn-Order** | **Execution** | 작업 수행(TO-1), 지식 환원(TO-2) | 실질적인 프로젝트 전진 및 기여 |

### 2.1. Turn-0 (에이전트 초기화)
- 세션 시작 시 에이전트가 가장 먼저 수행해야 하는 **필수 단계**이다.
- 에이전트는 `.odd-kit/` 내의 주요 설정과 로드맵을 읽고 현재 작업의 맥락을 완벽히 파악한다.

### 2.2. Turn-Memory (지식 동기화)
지식의 무결성을 보장하기 위한 고정 주기. 지식 조사를 시작하기 전, 반드시 완료된 작업을 먼저 정리한다.

- **TM-0 (Archiving)**: 활성 작업 공간(`active/`)에서 완료된 오더와 로그를 `history/`로 이동.
- **TM-1 (Ingestion)**: 최신 히스토리와 스펙을 전수조사하여 원자적 **Memory Cell**로 응축.
- **TM-2 (Back-Sync)**: 업데이트된 메모리를 바탕으로 `docs/specs/` 문서를 역동기화.

## 3. ⚡ Turn-Order (작업 실행 체계)
실제 기능을 개발하거나 문제를 해결하는 단계.

- **TO-1 (Active Phase)**: Planning, Execution, Reporting 과정을 통한 실제 작업 수행.
- **TO-2 (Micro-Update)**: 작업 중 습득한 파편화된 정보를 관련 메모리 셀 및 스펙에 즉시 반영 (Micro-Sync).

---

## 4. 🕵️ Case Study: Failure and Restoration (2026-01-03)
v2.0.0 도입 과정에서 발생한 프로토콜 위반 사례와 그 복구 논리를 기록합니다.

### A. Failure Examples (실패 사례)
- **Order Mutation**: 오더 수행 중 사용자 피드백을 반영하기 위해 오더의 핵심 목표를 직접 수정함. 이는 작업의 근거인 '계약서'를 변조하는 행위임.
- **Premature Archiving**: 정식 승인 절차 없이 파일을 히토리로 이동시켜 실수를 은폐하거나 검증을 생략함.

### B. Restoration Principles (복구 원칙)
- **Physical Trace**: 실습 사례와 실수의 원인을 별도의 메모리 셀(`odd-kit-evolution-log.md`)로 박제하여 지식화한다.
- **Rollback & Audit**: 성급하게 아카이빙된 파일을 다시 `active/`로 꺼내어 감사를 수행하고, 모든 교정 과정을 **Progress**에 기록한다.
- **Thought Persistence**: 에이전트의 모든 판단 논리는 반드시 물리적인 텍스트 파일로 남아야 한다.

---
**Verified by Memory Cell**: `odd-kit-operational-protocol-v200.md`, `odd-kit-evolution-log.md`

## 5. 운영 규칙
1. **Knowledge Zero-Amnesia**: 기록되지 않은 지식은 망각된 것이며, 동기화되지 않은 스펙은 거짓이다.
2. **Mandatory Turn-0 (Bootstrap 필수 수행)**: 모든 에이전트는 세션 시작 시 지식 전수조사를 수행하여 자신의 '뇌(Memory)'를 최신화한다.
3. **Order Immutability (오더의 불변성)**: 활성화된 오더 원본은 수정하지 않는다. 모든 변경 사항은 **Progress**와 **Checklist**에 기록한다.
4. **Checklist Separation (체크리스트 분리)**: 복잡한 태스크는 별도의 `checklist.md` 파일을 생성하여 오더의 가독성을 확보한다.
5. **Accumulative Integration (누적적 통합)**: README 등 외부 노출용 문서는 기존 가치를 보존하고 내용을 '추가'하여 보강한다.
6. **Atomic Checklist Update (체크리스트 원자적 업데이트)**: 체크리스트의 각 항목은 해당 단위 작업이 끝난 즉시 개별적으로 체크되어야 한다. 일괄 체크는 작업의 투명성을 해친다.

---
**Verified by Memory Cell**: `odd-kit-operational-protocol-v200.md`, `odd-kit-evolution-log.md`
