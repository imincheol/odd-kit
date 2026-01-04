---
id: "20260103_01_ODD-KIT-v130_Stabilization"
odd-kit-version: "v2.0.0"
type: "chore"
status: "active"
priority: "high"
created-at: "2026-01-03"
summary: "ODD Kit v2.0.0 분리턴 체계 정립 및 삼대 구조(Specs, Template, PK) 동기화"
---

# 📋 Order: PK v2.0.0 Stabilization

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- 설치 스크립트의 자동화 로직 누락으로 프로젝트별 고유 컨텍스트 식별(Naming Spec)이 깨짐.
- 기존의 Turn 1~4 방식은 지식의 전수조사와 원자화(Atomization)를 명시적으로 강제하지 못함.
- `docs/specs/`, `odd-kit-template/`, `.odd-kit/` 세 구조가 일치하지 않아 설정과 실제 구현이 따로 노는 현상 발생.

### 🎯 Goal
- **Split-Turn 운영 체계**를 시스템 전반(Specs, Memory, Template)에 완벽 상속.
- 세 가지 주요 폴더(`docs/specs/`, `odd-kit-template/`, `.odd-kit/`)의 내용을 100% 동기화.
- 사용자가 즉시 사용할 수 있는 '무결한 제품(Template)' 상태 확보.

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)
*이 오더를 기획할 때 분석한 메모리 셀 목록입니다.*

- [x] [[.odd-kit/memory/cells/tech/odd-kit-naming-spec.md]]: 프로젝트명 기반 진입점 생성 규칙 확인.
- [x] [[.odd-kit/memory/cells/tech/odd-kit-operational-protocol-v130.md]]: Split-Turn(Turn-Memory & Turn-Order) 운영 프로콜 확인.

## 3. Todo List (할 일)
- **[Separate Checklist Created]**: `20260103_01_ODD-KIT-v130_Stabilization_checklist.md`에서 상세 수행.

### C. Turn-Order-2 (Final Archive)
- [ ] 본 오더 수행 완료 후 리포트 작성 (메모리 셀 활용 정량화 및 연관성 점수 기록).
- [ ] 작업 이력을 History로 아카이빙.

---
## ⚖️ Approval
- [x] User Approved
