---
id: "20251227_01_CleanupLegacyDocs"
type: "task"
status: "todo"
priority: "high"
created-at: "2025-12-27"
summary: "구버전 아틀라스(docs/library) 및 레거시 파일 정리 가이드"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/setup/ODD-KIT-MIGRATION.md"
---

# 📋 Order: 레거시 문서 정리 (Cleanup Legacy Docs)

## 1. Context & Objective (배경 및 목표)
`odd-update`를 통해 시스템이 v0.9.4로 업데이트되었으나, 과거 버전의 산출물인 `docs/library` 폴더 등의 레거시 파일이 자동으로 정리되지 않고 남아있을 수 있습니다.
이 오더는 `docs/` 디렉토리를 점검하여 더 이상 사용되지 않는 구버전 아틀라스 및 라이브러리 폴더를 식별하고, 안전하게 제거하거나 필요한 내용을 신규 구조(`docs/odd/books`)로 이관하는 것을 목표로 합니다.

## 2. Todo List (할 일)
- [x] 구버전 JSON 기반 progress/report 파일 식별 및 아카이브 이동 (`active/` 클린업)
- [x] 프로젝트 전반에서 더 이상 사용하지 않는 `.json` 태스크 파일 검색 및 처리
- [x] `docs/library` 디렉토리 존재 여부 최종 확인 (이미 제거된 것으로 보임)
- [x] `ATLAS.md` 및 `README.md` 내 구버전 경로/방식 참조 여부 확인 및 수정
- [x] `000-migration-v0.9.4.md` 오더의 완료 상태 확인 및 리포트 작성
