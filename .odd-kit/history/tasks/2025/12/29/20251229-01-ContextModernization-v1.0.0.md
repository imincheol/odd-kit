---
id: "20251229_01_ContextModernization_v1.0.0"
type: "docs"
status: "done"
priority: "high"
created-at: "2025-12-29"
summary: "지식 서가(Logic/General) 내용을 v1.0.0 COA 체계 및 감찰관(Auditor) 페르소나에 맞춰 전면 개편"
context:
  - ".odd/ATLAS.md"
  - ".odd/context/protocols/odd-system.md"
  - ".odd/context/general/overview.md"
  - ".odd/context/logic/domain/memory-model.md"
  - ".odd/context/logic/domain/order-system.md"
---

# 📋 Order: Context Modernization (v1.0.0)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- 시스템 아키텍처는 **Context-Order-Archive (COA)**로 진화했으나, 내부 지식 문서들은 여전히 `Library`, `Books`, `Librarian` 등 과거 용어를 사용하고 있음.
- AI가 자신의 역할인 **감찰관(Auditor)**을 인지하고 맥락(Context)을 최우선으로 참조하도록 지식의 내용을 동기화해야 함.

### 🎯 Goal
- [ ] `overview.md`: COA 아키텍처 및 철학 반영.
- [ ] `memory-model.md`: 지식의 3대 구조(Context, Order, Archive) 및 흐름 재정의.
- [ ] `order-system.md`: 오더 시스템을 맥락(Context) 기반으로 재설명하고 감찰관의 역할을 명시.
- [ ] `odd-template` 상의 컨텍스트 예시들도 v1.0.0 수준으로 동기화.

## 2. Todo List (할 일)

### A. Core Context Update (핵심 맥락 갱신)
- [ ] `.odd/context/general/overview.md` 수정.
- [ ] `.odd/context/logic/domain/memory-model.md` 수정.
- [ ] `.odd/context/logic/domain/order-system.md` 수정.

### B. Template Sync & Structure (템플릿 동기화 및 구조)
- [x] **odd-template 구조 개편**: 레거시 `books/`, `history/` 제거 및 `context/` 기반 물리 구조 확립.
- [ ] **Content Sync**: 수정된 내용을 `oddtemplate/context/` 내 문서들에 반영.

### C. Validation (검증)
- [ ] 에이전트가 새로운 맥락 문서를 읽고 자신의 역할과 시스템 구조를 올바르게 답변하는지 확인.
