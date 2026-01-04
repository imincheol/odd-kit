---
id: "order_20260103_08_MigrationGuide"
title: "Refactor Update Guide to Migration Guide"
status: "in_progress"
priority: "high"
assignee: "odd-agent"
created-at: "2026-01-03T18:25:00"
---

# 📋 Order: 마이그레이션 가이드 개편

## 1. 배경
단순 업데이트가 아니라 `ODD`에서 `ODD Kit`으로의 시스템 전환(마이그레이션)이므로, 가이드 문서 명칭과 내용을 이에 맞게 변경해야 한다.

## 2. 목표
- `ODD-KIT-UPDATE_TEMPLATE.md` -> `ODD-KIT-MIGRATION_TEMPLATE.md` (파일명 변경)
- **Migration Logic**: `.odd` 디렉토리를 `.odd-kit`으로 이동하고, `ODD-KIT-PROMPT.md`를 리네임하는 절차 명시.
- `install.sh` 연동.

## 3. 체크리스트
- [ ] Rename file
- [ ] Reword content (Guide for migration)
- [ ] Update `install.sh` to link `ODD-KIT-MIGRATION_TEMPLATE.md`
