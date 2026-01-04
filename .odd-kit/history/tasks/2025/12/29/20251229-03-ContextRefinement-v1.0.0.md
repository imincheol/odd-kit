---
id: "20251229_03_ContextRefinement_v1.0.0"
type: "refactor"
status: "done"
priority: "high"
created-at: "2025-12-29"
summary: "맥락(Context) 디렉토리의 중복 파일 제거 및 ODD 시스템 메타 지식을 protocols로 통합"
context:
  - ".odd/context/README.md"
  - "oddtemplate/context/protocols/odd-system.md"
---

# 📋 Order: Context Structural Refinement (v1.0.0)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- `odd-template`은 사용자 프로젝트의 맥락을 담기 위한 틀인데, 현재 ODD 자체의 설명 파일(Overview, Memory Model 등)이 너무 많이 섞여 있음.
- `context/history/`와 `context/template/`에 `history-template.md`가 중복 존재함.
- 사용자는 자신의 프로젝트 로직에 집중해야 하므로, ODD 시스템 관련 지식은 `protocols/` 하위로 단일화하거나 예시 파일(`.temp`)로 격리해야 함.

### 🎯 Goal
- [ ] ODD 시스템 메타 지식(Overview, Memory Model, Order System)을 `context/protocols/odd-system.md`로 통합.
- [ ] 중복된 `history-template.md` 제거 (`context/template/` 하나로 단일화).
- [ ] 사용자 프로젝트 폴더(`logic/`, `general/`)를 비우거나 최소한의 가이드만 남김.
- [ ] 모든 작업 과정을 Progress에 기록.

## 2. Todo List (할 일)

### A. Consolidation (통합)
- [ ] `context/logic/domain/memory-model.md` 및 `order-system.md` 내용을 `protocols/odd-system.md`로 통합.
- [ ] `context/general/overview.md`, `structure.md` 등의 핵심 가이드를 `protocols/odd-system.md` 또는 `README.md`로 흡수.

### B. Cleanup (청소)
- [ ] `oddtemplate/context/history/template/` 삭제 (redundant).
- [ ] `oddtemplate/context/logic/domain/` 내의 ODD 문서 삭제 (protocols로 이관됨).
- [ ] `oddtemplate/context/general/` 내의 ODD 설명 문서 삭제.

### C. Example Isolation (예시 격리)
- [ ] 남겨둘 필요가 있는 참고 문서는 `.temp` 확장자를 붙여 사용자가 선택적으로 사용하게 함.
