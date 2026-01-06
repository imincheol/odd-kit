---
id: "20260105-18-Refine-ORW-Creation-Flow-order"
odd-kit-version: "v2.0.0"
type: "refactor"
status: "draft"
priority: "high"
created-at: "2026-01-05"
summary: "ORW 생성 플로우 수정 - Order만 먼저, Report+WorkingLog는 작업 시작 시"
---

# 📋 Order: ORW 생성 플로우 수정

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> 기존 orw 를 좀 수정해야겠다 
> order 는 항상 바로 만들어 
> 그리고 작업이 진행이 안되면 아무것도 없지 
> 그 후에 작업을 진행하면 report 와 woringlog 를 바로 만들어 
> 그러면 두 파일이 있으면 뭐라도 작업이 진행됐다는걸 알 수 있지 
> 오더를 바로 만들자 마자 수행 했다면 3 파일이 동시에 생길거고

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- **현재 문제**: Triple Creation 원칙에서 Order 생성 시 Report와 WorkingLog를 즉시 생성하도록 했으나, 이는 불필요한 파일을 만들 수 있음
- **개선 방향**: 
  - Order는 항상 즉시 생성 (계획 단계)
  - Report와 WorkingLog는 **작업이 실제로 시작될 때** 생성
  - 파일 존재 여부로 작업 진행 상태 판단 가능:
    - Order만 있음 = 계획만 있고 작업 미시작
    - Order + Report + WorkingLog = 작업 진행 중 또는 완료

### 🎯 Goal (목표)
- **Primary**: ORW 생성 플로우를 "Order 먼저 → 작업 시작 시 Report+WorkingLog" 방식으로 변경
- **Why**: 불필요한 파일 생성 방지, 작업 상태를 파일 존재로 명확히 판단 가능

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)

- [ ] `.odd-kit/ODD-KIT-PROMPT-odd-starter.md`: 현재 ORW 프로토콜
- [ ] `odd-kit-template/ODD-KIT-PROMPT-TEMPLATE.md`: 템플릿 프롬프트
- [ ] `.odd-kit/tasks/active/20260104-16-*`: ORW 마이그레이션 태스크

## 3. Todo List (할 일)

### Phase 1: 프로토콜 수정
- [ ] `.odd-kit/ODD-KIT-PROMPT-odd-starter.md` 수정:
  - Triple Creation → Dual Creation (작업 시작 시)
  - "Order 생성 시 즉시" → "작업 시작 시"
  - 새로운 황금률 추가: "Order First, Then Work"
- [ ] `odd-kit-template/ODD-KIT-PROMPT-TEMPLATE.md` 동일하게 수정

### Phase 2: 템플릿 파일 수정
- [ ] `report-template.md` 수정:
  - "Order 생성 시 즉시 함께 생성" → "작업 시작 시 생성"
- [ ] `workinglog-template.md` 수정:
  - "Order 생성 시 즉시 함께 생성" → "작업 시작 시 생성"
  - 첫 로그 예시 수정

### Phase 3: 문서화
- [ ] 새로운 플로우 문서화:
  ```
  1. Order 생성 (사용자 승인 대기)
  2. 승인 후 작업 시작 결정
  3. 작업 시작 시 Report + WorkingLog 생성
  4. WorkingLog에 작업 기록
  5. 작업 완료 시 Report 업데이트
  ```

## 4. ✅ Success Criteria
- [ ] ORW 프로토콜이 "Order 먼저, 작업 시작 시 Report+WorkingLog" 방식으로 변경됨
- [ ] 모든 프롬프트 파일과 템플릿 파일이 새 플로우 반영
- [ ] 파일 존재 여부로 작업 상태 판단 가능:
  - Order만 = 계획 단계
  - Order + Report + WorkingLog = 작업 진행/완료

---
## ⚖️ Approval
- [x] User Approved (2026-01-05 10:27 - Auto)

---

## Appendix. 새로운 ORW 플로우

### 기존 (Triple Creation)
```
사용자 요청 → Order 생성 → Report 생성 → WorkingLog 생성 → 사용자 승인 → 작업 수행
```
문제: Report와 WorkingLog가 비어있는 상태로 생성됨

### 개선 (Order First)
```
사용자 요청 → Order 생성 → 사용자 승인 → 작업 시작 → Report + WorkingLog 생성 → 작업 수행
```
장점: 
- 작업하지 않으면 파일이 생성되지 않음
- 파일 존재로 작업 상태 명확히 판단
- Order만 먼저 생성하면 즉시 수행하는 경우 3개 파일 동시 생성
