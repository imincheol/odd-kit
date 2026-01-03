---
id: "order_20260103_03_RebrandToPromptKit"
title: "Rebrand System to Prompt Kit"
status: "in_progress"
priority: "high"
assignee: "odd_agent"
created_at: "2026-01-03T17:35:00"
references: 
  - "ODD_PROMPT.md"
  - "README.md"
  - "AI_FRAMEWORKS.md"
---

# 📋 Order: 시스템 명칭을 'Prompt Kit'으로 변경 및 정체성 재정립

## 1. 배경 (Background)
기존 'ODD (Old Order Driven Development)' 명칭이 Google 'Spec Kit', Claude 'Skills'와 비교했을 때 직관적이지 않다는 피드백이 있음.
시스템의 핵심 가치인 "오더 수행 시 참조를 통해 최적의 프롬프트를 구성하는 구조"를 명확히 드러내기 위해 **'Prompt Kit'**으로 리브랜딩이 필요함.

## 2. 목표 (Objectives)
- **리브랜딩**: 시스템 이름을 `ODD`에서 `Prompt Kit`으로 전면 변경.
- **정체성 확립**: `Spec Kit`(설계), `Claude Skills`(능력)와의 명확한 포지셔닝(맥락/프롬프트 최적화) 정립.
- **문서화 강화**: 비교 문서를 루트 디렉토리로 이동하여 접근성 강화.

## 3. 작업 계획 (Tasks)
- [x] **비교 문서 격상**: `odd-template/.../COMPARISON_AI_FRAMEWORKS.md`를 루트의 `AI_FRAMEWORKS.md`로 이동 및 내용 업데이트.
- [x] **README.md 업데이트**: 메인 타이틀 및 설명 수정, 비교 가이드 섹션 강화.
- [x] **Entry Point 수정**: `ODD_PROMPT.md` 내 시스템 명칭 변경.
- [x] **Installer 수정**: `install.sh` 내 출력 메시지 변경.

## 4. 제약 조건 (Constraints)
- 기존 디렉토리 구조(`.odd/`)는 하위 호환성을 위해 유지하되, 개념적 설명에서만 'Engine Directory'로 지칭.
- 파일명 수정 최소화 (내용 위주의 변경).
