# 오더 리포트: 레거시 문서 및 폴더 정리 (Cleanup Legacy Docs)

## 1. 개요 (Overview)
- **오더 ID**: 20251227_01_CleanupLegacyDocs
- **수행 기간**: 2025-12-27
- **목표**: v0.9.4 업데이트에 따른 JSON 방식 폐기 및 레거시 파일 정리.

## 2. 변경 사항 (Changes)

### 2.1. JSON 워크플로우 완전 폐기 (Deprecate JSON)
- **Active Task 정리**: `tasks/active/`에 남아있던 모든 `.json` 기반 progress/report 파일을 `archive/tasks/2025/12/26/`으로 이동하여 작업 영역을 정비했습니다.
- **표준 준수**: 진행 중이던 클린업 작업의 progress 파일도 JSON에서 마크다운(`progress.md`)으로 전환했습니다.
- **가이드 수정**: `docs/odd/setup/` 내의 `ODD-KIT-INIT.md` 및 `ODD-KIT-MIGRATION.md`에서 `progress.json`을 참조하던 문구를 `progress.md`로 수정하여 향후 혼란을 방지했습니다.

### 2.2. 레거시 디렉토리 및 참조 제거 (Legacy Cleanup)
- **docs/library**: 검색 결과 이미 제거되었음을 확인했습니다.
- **참조 경로 현행화**: `ATLAS.md` 및 `README.md`를 검토하여 구버전 아키텍처나 JSON 방식에 대한 참조가 없음을 확인했습니다.

## 3. 결론 (Conclusion)
이로써 ODD Starter Kit은 v0.9.4 표준인 **"마크다운 단일 워크플로우"** 체계로 완전히 전환되었습니다. 불필요한 JSON 파일들이 작업 영역에서 사라졌으며, 가이드 문서들도 최신 규격을 반영하고 있습니다.

## 4. 향후 과제 (Future Works)
- `docs/odd/archive/` 내의 과거 JSON 기록들은 "역사적 기록(Immutable)"으로서 보존하되, 에이전트가 이를 읽을 때 과거 버전의 문맥임을 인식하도록 유도해야 합니다.
