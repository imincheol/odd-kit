---
type: memory-cell
category: tech
subcategory: architecture
subject: ODD Kit v2.0.0 System Architecture
status: active
priority: critical
last-updated: 2026-01-03
---

# 🏗️ Memory Cell: ODD Kit v2.0.0 System Architecture

## 1. Overview
ODD Kit v2.0.0은 **Context-Oriented Architecture (COA)**를 지향하는 로컬 컨텍스트 매니저이다. 지식의 보존과 작업의 실행을 분리하여 에이전트의 사고 정밀도를 극대화한다.

## 2. The 3 Pillars (삼대 구조)
이 프로젝트는 다음 세 가지 레이어가 동기화되어 유지되어야 한다.
1.  **Docs Specs (`docs/specs/`)**: 프로젝트의 공식 설계도 및 외부 지침.
2.  **Product Template (`odd-kit-prompt-template/`)**: 배포 가능한 ODD Kit의 원형(Prototype).
3.  **Active Memory (`.odd-kit/`)**: 현재 저장소에서 실행 중인 에이전트의 실제 뇌.

## 3. Core Directory Structure
- **`.odd-kit/ODD-KIT-PROMPT-odd-starter.md`**: Boot Loader. 에이전트 진입점.
- **`.odd-kit/memory/`**: 로컬 컨텍스트 저장소 (Cells 단위).
- **`.odd-kit/tasks/`**: 작업 관리 (Orders, Progress, Checklists).
- **`.odd-kit/reference/`**: 백과사전적 지식 및 고정 규칙.
- **`.odd-kit/history/`**: 불변의 작업 기록 아카이브.

## 4. Key Mechanism: Split-Turn
- **Turn-Memory**: 지식의 전수조사, 원자화(Atomization), 동기화.
- **Turn-Order**: 오더 생성, 작업 수행(Execution), 마이크로 업데이트.

---
**Related Cells:**
- `odd-kit-operational-protocol-v200.md`
- `odd-kit-philosophy.md`
- `odd-kit-structure-spec.md`
