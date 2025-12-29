---
id: "20251229_00_Standardization_v1.0.0"
type: "refactor"
status: "done"
priority: "high"
created_at: "2025-12-29"
summary: "odd-template의 디테일 정교화 및 프로젝트 ODD 폴더를 v1.0.0 표준(.odd)으로 이전 (Dogfooding)"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/tasks/active/20251228_00_Migration_v1.0.0_progress.md"
  - "odd-template/setup/install.sh"
---

# 📋 Order: v1.0.0 표준화 및 도그푸딩(Dogfooding)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- 마이그레이션 테스트 결과 `logic` 서가의 계층 구조화와 레거시 정리 지침의 보완이 필요함을 발견함.
- 현재 `odd-starter` 프로젝트는 `docs/odd`를 사용 중이나, v1.0.0의 권장 표준인 숨김 폴더(`.odd`)로 이전하여 모범 사례를 제시해야 함.
- 프로젝트명 기반의 동적 네이밍 로직을 더 견고하게 다듬어야 함.

### 🎯 Goal
- **템플릿 정교화**: `install.sh`, `ODD_UPDATE.md`, `context/README.md`의 디테일 수정.
- **프로젝트 표준화**: `docs/odd` -> `.odd` 이전 및 설정 현행화.
- **배포 준비**: 모든 오더를 완료하고 정식 v1.0.0 배포를 위한 최종 상태 확보.

## 2. Todo List (할 일)

### A. Template Refinement (템플릿 정교화)
- [ ] `install.sh`: `context/logic/` 하위에 `domain`, `tech` 서가 자동 생성 추가.
- [ ] `install.sh`: 프로젝트명이 없을 때 `ATLAS.md` 기본 명명 로직 수정.
- [ ] `ODD_UPDATE.md`: 레거시 폴더(`books`, `history`) 삭제 지침 강화.
- [ ] `context/README.md`: 서가별 바로가기 링크 및 가이드 보완.

### B. Project Dogfooding (프로그램 자체 적용)
- [ ] `docs/odd` 내용을 루트의 `.odd` 폴더로 이전.
- [ ] `.odd_config`가 새 경로(`.odd`)를 가리키도록 업데이트.
- [ ] `install.sh`를 실행하여 새로운 구조가 표준에 맞게 생성되는지 최종 확인.
- [ ] 구버전 `docs/odd` 완전 삭제.

### C. Final Push
- [ ] 변경 사항 커밋 및 원격 저장소 푸시.
