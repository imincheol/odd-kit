---
id: "20260102_01_RefactorToFunctionalV3"
odd-version: "v1.1.0"
type: "refactor"
status: "approved"
priority: "high"
created-at: "2026-01-02"
summary: "ODD 아키텍처를 메타포 중심에서 기능 중심(v3: ODD-KIT-PROMPT, reference, history)으로 전면 개편"
context:
  - ".odd/ODD-KIT-PROMPT.md"
  - ".odd/reference/rules/odd-system.md"
  - ".odd/tasks/roadmap.md"
---

# 📋 Order: Refactor ODD Architecture to Functional v3

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. 기존 "Library/Book" 메타포가 직관적이지 못하다는 피드백 수용.
2. AI 에이전트와 개발자 모두에게 명확한 '기능 및 실체' 중심의 명칭이 필요함.
3. `ODD-KIT-PROMPT`, `reference`, `history` 등 핵심 키워드를 통해 시스템의 목적을 명시화함.

### 🎯 Goal
- `odd-template` 전체 구조를 Functional v3로 개편.
- `install.sh` 및 관련 템플릿 파일들의 명칭과 내용 업데이트.
- `README.md`를 포함한 문서 전반의 메타포 제거 및 기능 중심 설명 도입.

## 2. Todo List (할 일)

### A. Template Refactoring
- [ ] `odd-template` 폴더 구조 변경 (`library` -> `reference`, `store` -> `history` 등)
- [ ] `ATLAS_TEMPLATE.md` -> `ODD-KIT-PROMPT_TEMPLATE.md` 변경 및 내용 수정
- [ ] `reference/summaries/`, `reference/rules/` 구조 생성 및 관련 README 업데이트
- [ ] `tasks/` 하위 템플릿(`order`, `progress`, `report`) 버전 및 경로 업데이트

### B. System Update
- [ ] `install.sh` 내의 설정, 경로 생성, 파일 동기화 로직 전면 수정
- [ ] `ODD-KIT-INIT_TEMPLATE.md`, `ODD-KIT-MIGRATION_TEMPLATE.md` 내용 업데이트

### C. Documentation & Finalize
- [ ] `README.md` 가이드를 새 명칭 체계로 업데이트
- [ ] 프로젝트 자체의 `.odd` 시스템도 새 체계로 마이그레이션 (선택 사항이나 권장됨)
- [ ] 최종 결과 보고 및 작업 완료
