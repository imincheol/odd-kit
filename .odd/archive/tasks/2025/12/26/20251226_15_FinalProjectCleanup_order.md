---
id: "20251226_15_FinalProjectCleanup"
type: "chore"
status: "approved"
priority: "medium"
created_at: "2025-12-26"
summary: "불필요한 중복 폴더 제거 및 시스템 동기화 최종 정비"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/setup/install.sh"
---

# 📋 Order: 최종 프로젝트 구조 정비 및 클린업

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. `docs/odd/specs/` 폴더가 `docs/specs/`와 중복으로 존재함 (과거 버전의 잔재).
2. `docs/odd/history/` 하위에 구버전의 날짜별 빈 폴더들이 남아있어 관리에 혼선을 줄 수 있음.
3. `install.sh`에서 일부 새롭게 추가된 가이드 파일들이 동기화 목록에서 누락되어 있음.

### 🎯 Goal
- 중복된 `docs/odd/specs/` 폴더 삭제.
- `docs/odd/history/` 하위의 레거시 빈 폴더 정리.
- `install.sh` 동기화 목록 상시화 및 최종 검증.

## 2. Todo List (할 일)

### A. Directory Cleanup
- [ ] `docs/odd/specs/` 폴더 및 하위 파일 삭제
- [ ] `docs/odd/history/2025/` 등 비어있는 레거시 날짜 폴더 삭제

### B. Sync Script Update
- [ ] `install.sh`에 `books/general/structure.md` 등 누락된 기본 파일 동기화 로직 추가 여부 검토
- [ ] `odd-template` 내의 불필요한 빈 폴더들에 `.gitkeep` 확인

### C. Final Verification
- [ ] 전체 구조 스캔 및 무결성 확인
- [ ] 최종 커밋 및 푸시
