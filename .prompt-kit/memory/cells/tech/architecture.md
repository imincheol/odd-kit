---
type: summary
category: tech
version: "v1.2.1"
last_updated: "2026-01-03"
relatedness: 0.90
---

# 🏗️ Prompt Kit v1.2.1 System Architecture

## 1. Overview
Prompt Kit v1.2.1은 **Local Context Manager**로서, AI가 프로젝트의 맥락을 파일 시스템(`memory`)을 통해 영속적으로 기억하게 합니다.

## 2. Core Structure
- **`.prompt-kit/PROMPT_KIT.md`**: Boot Loader. AI가 가장 먼저 읽어야 할 진입점.
- **`.prompt-kit/memory/`**: 로컬 컨텍스트 저장소.
  - `core/`: 핵심 정의 (Task, Rules 등).
  - `cells/`: 도메인/기술 지식의 단위(Unit).
- **`.prompt-kit/tasks/`**: 실행 공간 (Running Context).
- **`.prompt-kit/history/`**: 불변의 기록 (Immutable Record).

## 3. Work Cycle: 4-Turn Protocol
1. **Turn 1 (Planning)**: 오더 생성 및 분석.
2. **Turn 2 (Execution)**: 체크리스트 기반 작업 수행.
3. **Turn 3 (Micro-Update)**: 완료 보고, 아카이빙, 즉시 반영.
4. **Turn 4 (Macro-Update)**: 전체 컨텍스트 동기화 및 최적화.

## 4. Key Advantages
- **Persistence**: 세션이 종료되어도 `.prompt-kit` 폴더에 기억이 남음.
- **Self-Correction**: 체크리스트와 Turn Cycle을 통해 스스로 오류 검증.
