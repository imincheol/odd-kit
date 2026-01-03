---
type: summary
category: tech
version: "v1.1.1"
last_updated: "2026-01-03"
relatedness: 0.85
---

# 🏗️ ODD v1.1.1 Memory Cell Architecture Summary

## 1. 개요 (Overview)
ODD v1.1.1은 기존의 "살아있는 도서관" 메타포를 제거하고, AI 에이전트의 동작 원리에 최적화된 **"기억 세포 아키텍처(Memory Cell Architecture)"**로 개편되었습니다.

## 2. 핵심 폴더 구조 (Core Structure)
- **`.odd/ODD_PROMPT.md`**: 프로젝트의 메인 진입점. AI가 로드될 때 가장 먼저 읽어야 하는 마스터 가이드.
- **`.odd/memory/`**: 현재 프로젝트를 이해하기 위한 기억 저장소.
  - `core/`: ODD 핵심 구성 요소의 원자적 정의 (Memory Cells).
  - `cells/`: 도메인 및 기술 아키텍처의 고수준 요약 (Memory Cells).
  - `rules/`: 코딩 스타일, 개발 원칙, 협업 규칙.
- **`.odd/tasks/`**: 현재 진행 및 계획 중인 모든 명시적 작업(Order).
  - `active/`: 현재 수행 중인 오더, 진행상황(Progress), 가보고(Report).
  - `roadmap.md`: 프로젝트 마일스톤 관리.
- **`.odd/history/`**: 완료된 작업의 기록 보관소.
  - `tasks/YYYY/MM/DD/`: 날짜별 오더 기록 보관.

## 3. 작동 프로세스: 3단계 턴 (Turn-Based Flow)
1. **Turn 1 (Analysis & Order)**: 상황 분석 후 오더를 작성하고 승인을 대기합니다. (소스 코드 수정 금지)
2. **Turn 2 (Execution)**: 승인된 오더에 따라 실제 작업을 수행하고 진행 상황을 기록합니다.
3. **Turn 3 (Finalize & Archive)**: 작업 완료 후 리포트를 작성하고, 지식을 Memory Cells에 반영한 뒤 파일을 히스토리로 이동합니다.

## 4. 아키텍처의 강점
- **AI Amnesia 해결**: 명시적인 기록과 Memory Cells를 통해 세션 간 지식 단절을 방지.
- **명확성**: 기능 중심의 명칭과 세포화된 지식 구조로 AI와 개발자 간의 의도를 일치시킴.
- **확장성**: 프로젝트 규모에 따라 `memory/`와 `history/` 구조를 유연하게 확장 가능.
