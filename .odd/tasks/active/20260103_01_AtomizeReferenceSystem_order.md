---
id: "20260103_01_AtomizeReferenceSystem"
odd_version: "v1.1.0"
type: "refactor"
status: "draft"
priority: "high"
created_at: "2026-01-03"
summary: "ODD 레퍼런스 시스템을 원자적 단위로 세분화하고 연관성 기반 구조로 개편"
context:
  - ".odd/ODD_PROMPT.md"
  - ".odd/tasks/roadmap.md"
  - ".odd/reference/summaries/tech/architecture.md"
---

# 📋 Order: ODD 레퍼런스 시스템 원자화 및 연관성 기반 개편

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. **문서 단위의 비대함**: 현재 `reference/summaries/` 아래의 파일들이 너무 포괄적인 내용을 담고 있어, AI가 필요한 부분만 정밀하게 참조하기 어려움.
2. **연관성 개념 부재**: 문서 간의 관계가 명시적이지 않아 지식의 연결망을 파악하기 힘듦.
3. **시스템 구성 요소 설명 부족**: ODD의 각 핵심 구성 요소(Order, Progress, Task 등)에 대한 개별적이고 명확한 정의가 부족함.

### 🎯 Goal
- **원자적 레퍼런스 구축**: 각 구성 요소 및 기술 스택을 논문과 같은 소규모 단위로 쪼개어 독립적인 파일로 생성.
- **연관성(Relatedness) 도입**: '언어의 거리' 개념을 차용한 연관성 수치(크면 높은 연관성)를 문서 메타데이터에 포함.
- **구조적 연결**: `README.md`와 `ODD_PROMPT.md`가 이러한 원자적 레퍼런스들을 유기적으로 참조하도록 수정.

## 2. Todo List (할 일)

### A. 레퍼런스 체계 재설계 및 원자화
- [ ] `.odd/reference/core/` 디렉토리 신설 (ODD 핵심 구성 요소 정의)
- [ ] 다음 항목들에 대한 개별 레퍼런스 문서 생성:
    - Order, Progress, Report, Task, Active, History, Reference, Prompt, Readme, ODD Prompt
- [ ] 각 문서에 `relatedness` 메타데이터 및 참조 문헌(References) 섹션 추가.

### B. 연관성(Relatedness) 시스템 정의
- [ ] '언어의 거리' 개념을 기반으로 한 연관성 측정 가이드라인 작성.
- [ ] 연관성 점수(0.0 ~ 1.0) 기준 정의 (값이 클수록 높은 연관성).

### C. 메인 진입점 및 가이드 업데이트
- [ ] `README.md`: 신규 구조 및 원자적 레퍼런스 활용법 설명 추가.
- [ ] `ODD_PROMPT.md`: 원자적 레퍼런스 시스템을 고려한 가이드라인 업데이트.

### D. 기존 문서 마이그레이션 및 정리
- [ ] 기존 `summaries/` 폴더 내의 비대한 문서들을 원자적 단위로 분해하여 재배치.
- [ ] 불필요해진 레거시 파일 삭제 및 정리.
