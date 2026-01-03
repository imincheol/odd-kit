---
id: "20260102_02_CleanupLegacyStructure"
odd_version: "v1.1.0"
type: "chore"
status: "approved"
priority: "medium"
created_at: "2026-01-02"
summary: "구 버전(메타포) 잔재 폴더 및 파일 정리 및 마이그레이션 완료"
context:
  - ".odd/ODD_PROMPT.md"
  - ".odd/tasks/roadmap.md"
---

# 📋 Order: Cleanup Legacy Structure

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. "살아있는 도서관" 메타포 시절에 생성된 폴더들이 새 "기능 중심 아키텍처"에 잔존함.
2. `general`, `history`(reference 내부) 등 모호한 명칭이 혼란을 가중시킴.
3. `docs/odd`와 `.odd`가 중복되어 존재할 경우 단일 진실 공급원(SSOT) 원칙에 위배됨.

### 🎯 Goal
- 배포용 템플릿(`odd-template`) 및 현재 프로젝트(`.odd`)의 레거시 구조를 완전히 제거.
- 필요 없는 빈 폴더 및 관리되지 않는 히스토리 폴더 정리.
- 전체 변경 사항을 Git에 커밋.

## 2. Todo List (할 일)

### A. Template Cleanup
- [ ] `odd-template/reference/general` 삭제
- [ ] `odd-template/reference/history` 삭제
- [ ] `odd-template/history/roadmaps` 삭제 (Task History로 통합)

### B. Project System Cleanup (.odd)
- [ ] `.odd/reference/general` 삭제
- [ ] `.odd/reference/history` 삭제
- [ ] `.odd/history/roadmaps` 삭제
- [ ] `docs/odd` 폴더 전체 삭제 (모든 정보는 `.odd`로 관리됨)

### C. Finalize
- [ ] 작업 완료 보고서 작성 및 로드맵 갱신
- [ ] Git Commit & Push (v1.1.0 Functional Edition 정식 반영)
