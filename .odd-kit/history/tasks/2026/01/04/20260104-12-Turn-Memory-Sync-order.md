# Order: Turn-Memory-1 Full Sync (20260104-12)

> **Status**: Proposed
> **Context**: Post-structural audit knowledge synchronization.
> **Referenced Memory Cells**: `odd-kit-system-v200.md`, `odd-kit-naming-spec.md`

## 🎯 Goal
프로젝트의 전수 조사를 통해 모든 스펙, 역사, 오리진 문서의 지식을 원자적 **Memory Cell**로 추출하고 정합성을 100% 동기화합니다.

## 📋 Todo List
- [ ] **Turn-Memory-0 (Archiving Check)**: 히스토리 폴더 구조 및 아카이빙 상태 재검토.
- [ ] **Turn-Memory-1 (Ingestion)**:
    - [ ] `docs/origin/` 전수 조사 및 핵심 가치 추출.
    - [ ] `docs/specs/` 전수 조사 및 실환경 적용 규칙 추출.
    - [ ] `history/` 최신 기록 분석 및 지식화.
- [ ] **Cell Update**: `.odd-kit/memory/cells/` 내의 모든 파일을 v2.0.0 표준에 맞게 업데이트 또는 신규 생성.
- [ ] **Turn-Memory-2 (Back-Sync)**: 메모리 셀을 기반으로 스펙 문서의 마이너 업데이트 수행.

## 🚩 Success Criteria
- [ ] 모든 스펙 지식이 `.odd-kit/memory/cells/`에 중복 없이 원자적으로 보관됨.
- [ ] 에이전트가 `ODD-KIT-PROMPT.md`를 통해 로드하는 컨텍스트의 무결성이 증명됨.
