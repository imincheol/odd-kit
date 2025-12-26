# ODD Starter Kit Version History

## v0.9.1 (2025-12-26)
### Major Updates
- **ATLAS Templatization**: `odd/ATLAS.md`를 `ATLAS_TEMPLATE.md`로 전환하고, `order`, `progress`, `report` 템플릿을 JSON 포맷(`*.json`)으로 전면 변경하여 데이터 구조화 강화.
- **Documentation Restructure**: 
    - `specs` 디렉토리 위치를 `docs/specs`에서 `docs/odd/specs`로 명확히 정의.
    - `books/README.md`, `specs/README.md` 등 네비게이션 가이드 문서 추가.
- **Epoch Archive Policy**: 프로젝트 마일스톤(Epoch) 단위의 로드맵 백업 규칙을 `ATLAS`에 신설.

### Features & Improvements
- **Context Retention**: `progress.json` 템플릿과 워크플로우를 개선하여 작업 재개 시 참조했던 Spec/Book을 확인할 수 있게 함 (20251225_02_ImproveContextRetention).
- **Dogfooding**: `docs/odd` 폴더를 통해 ODD Starter 프로젝트 자체를 ODD 시스템으로 관리하도록 설정.
- **Empty Dirs Maintenance**: `.gitkeep` 파일 추가 및 설치 스크립트 수정을 통해 빈 폴더 구조가 Git과 설치본에서 유지되도록 보완.

## v0.9.0 (2025-12-25)
### Major Refactoring
- **Directory Structure**: `.odd` (숨김 폴더)를 `odd` (일반 폴더)로 변경하여 접근성 향상.
- **Install Script Update**: 폴더명 변경에 맞춰 `install.sh` 로직 수정 (Remote `odd` -> Local `.odd` Temp -> Target).

## v0.8.0 (2025-xx-xx)
- **Release**: ODD v0.8.0 Standard Edition w/ Order Driven Development Core.

> *Note: This changelog is automatically curated from ODD System reports and Git history.*
