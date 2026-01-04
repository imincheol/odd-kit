---
id: "20260104-07-Update-Templates-with-New-Protocol"
odd-kit-version: "v2.0.0"
type: "task-order"
status: "in-progress"
priority: "high"
created-at: "2026-01-04"
linked-order: "20260104-06-Document-Origins-and-Philosophy-report.md"
---

# 📋 Order: Update Templates with New Protocol (Turn Names & Order Structure)

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> 해

## 1. Goal (목표)
- **Primary**: 이전 태스크(`06`)에서 확립된 **"Appendix형 오더 구조"**와 **"직관적 한글 턴 명칭"**을 실제 프로젝트 템플릿 파일들에 전면 적용한다.
- **Why**: "메모리 = 스펙 = 템플릿"의 가치를 실현하기 위함. 사용자가 새 오더를 만들 때 자동으로 변경된 표준 구조를 따르게 해야 함.

## 2. Context (맥락 - Gap Analysis)
- **From Report-06**:
    1. 오더 파일은 프롬프트 히스토리를 포함해야 한다 (`Appendix` 섹션).
    2. 턴 명칭은 한글(`턴-태스크-오더` 등)이어야 한다.
- **Target Files**:
    - `odd-kit-prompt-template/tasks/template/order-template.md` (구조 변경)
    - `odd-kit-prompt-template/tasks/template/progress-template.md` (명칭 변경)
    - `odd-kit-prompt-template/tasks/template/report-template.md` (명칭 변경)
    - 필요 시 `.odd-kit/memory/template/` 내의 시스템 템플릿도 동기화.

## 3. Plan (계획)
### 턴-태스크-오더 (Order)
- [x] 현재 오더 생성 (`20260104-07ing`).

### 턴-태스크-프로그레스 (Progress)
- [ ] `order-template.md`: `## Appendix. Origin Prompts` 섹션 추가, `## 0. Origin Prompt` 섹션 추가.
- [ ] `progress-template.md`: Work Log의 단계 명칭을 `Turn-Order-1` → `턴-태스크-오더` 형식으로 변경.
- [ ] 검증: 변경된 템플릿이 문법적으로 올바른지 확인.

### 턴-태스크-리포트 (Report)
- [ ] 작업 완료 보고 및 파일 시스템 최종 상태 점검.

## 4. Requirements (요구사항)
- [ ] 오더 템플릿의 최상단(`Origin Prompt`)과 최하단(`Appendix`) 구조 필수 적용.
- [ ] 모든 템플릿의 `Turn-X` 표기를 한글 명칭으로 교체.
