---
id: "20251229_04_SystemIntegrityCheck_v1.0.0"
type: "quality"
status: "done"
priority: "high"
created-at: "2025-12-29"
summary: "v1.0.0 릴리즈 전 모든 템플릿과 문서의 버전 명시, 용어 일관성, 작동 무결성 최종 검수"
context:
  - ".odd/tasks/roadmap.md"
  - "oddtemplate/setup/ODD-KIT-INIT_TEMPLATE.md"
  - "oddtemplate/setup/ODD-KIT-MIGRATION_TEMPLATE.md"
  - "oddtemplate/setup/install.sh"
---

# 📋 Order: System Integrity Check (v1.0.0)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- `odd-template` 내 일부 파일(README, .temp 등)에 버전(`v1.0.0`) 명시가 누락됨.
- `ODD-KIT-INIT_TEMPLATE.md` 및 `ODD-KIT-MIGRATION_TEMPLATE.md`에 과거 용어(`Librarian`, `books/`)와 오타, 중복 섹션이 잔존함.
- 루트 `README.md`의 다이어그램이 최신 3단계 스펙 구조를 반영하지 못함.
- `install.sh`의 플레이스홀더 적용 범위가 좁아 일부 설치 문서에서 변환이 누락될 수 있음.

### 🎯 Goal
- [ ] 전 파일 버전(v1.0.0) 명시 및 프론트매터 표준화.
- [ ] `ODD-KIT-INIT` & `ODD-KIT-MIGRATION` 전문 교정 및 용어 통일.
- [ ] 루트 `README.md` 현행화.
- [ ] `install.sh` 플레이스홀더 로직 강화.

## 2. Todo List (할 일)

### A. Template Polishing
- [ ] `odd-template` 내 모든 README 및 템플릿 상단에 버전 정보 및 타입 명시.
- [ ] `ODD-KIT-INIT_TEMPLATE.md`: `Librarian` -> `Auditor`, `books/` -> `context/` 등으로 교정.
- [ ] `ODD-KIT-MIGRATION_TEMPLATE.md`: 중복 제거, 번호 오류 수정, 용어 현대화.

### B. Logic & Root Update
- [ ] `install.sh`: `apply_placeholders`를 `ATLAS`, `order-template`, `roadmap`, `ODD-KIT-INIT`, `ODD-KIT-MIGRATION`, `odd-system.md` 등에 전격 적용.
- [ ] 루트 `README.md`: 스펙 3단계(`planning`, `design`, `development`) 구조 반영.

### C. Final Validation
- [ ] 전체 파일에서 `Librarian`, `books/` 키워드가 남아있는지 최종 grep 확인.
