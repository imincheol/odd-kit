---
id: "checklist_20260103_10_DefineTurnSystem"
order_id: "order_20260103_10_DefineTurnSystem"
status: "active"
---

# ✅ Checklist: 4-Turn Lifecycle Implementation

## 1. Protocol Definition (`odd-kit-template/reference/rules/odd-kit-system.md`)
템플릿 파일부터 수정하여 향후 생성되는 프로젝트에도 적용되도록 함.
- [ ] **Turn 1 (Planning)**
    - Order 생성, 작업의 크기 산정.
- [ ] **Turn 2 (Execution)**
    - Checklist 필수 생성.
    - Progress에 로그 기록.
- [ ] **Turn 3 (Completion & Micro-Update)**
    - Report 작성 (필수).
    - **Archiving**: `active/` -> `history/tasks/YYYY/MM/DD/` 이동.
    - **Micro-Memory**: `memory/core/active.md` 등 관련 메모리 셀에 현재 변경사항 즉시 반영.
- [ ] **Turn 4 (Global Sync)**
    - 별도의 유지보수 턴 (Context Optimization).
    - 전체 History를 읽고 `memory/cells/` 간의 연결성(Relatedness) 재조정 및 Macro-Correction.

## 2. Local Protocol Update (`.odd-kit/reference/rules/odd-kit-system.md`)
현재 프로젝트(로컬)에도 동일하게 적용.
- [ ] Copy logic from `odd-kit-template` to `.odd-kit`.

## 3. Validation (Test Run)
- [ ] 이 오더(`20260103_10`) 완료 후 Turn 3 로직을 직접 수행하여 `active` 폴더가 비워지는지 검증.
