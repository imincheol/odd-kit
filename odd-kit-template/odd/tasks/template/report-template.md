---
id: "{{YYYYMMDD}}-{{NN}}-{{CamelCaseTitle}}-report"
odd-kit-version: "v2.0.0"
type: "report"
created-at: "{{YYYY-MM-DD}}"
linked-order: "{{Order-File-Name}}.md"
---

# 🏁 Report: {{Title}}

> **Report는 작업 시작 시 WorkingLog와 함께 생성되며, 최종 결과물을 기록합니다.**
> - 초기 상태는 "대기 중"으로 작업 미시작을 나타냅니다.
> - 작업 완료 후 WorkingLog의 최종 요약을 이 문서에 기록합니다.
> - 상태는 파일 위치로 판단합니다: Active 폴더 = 활성, History 폴더 = 완료/보류/실패

## 0. Initial State (작업 전 상태)
- **Status**: 대기 중 (Order 생성 완료, 작업 미시작)
- **Description**: {{작업 전 현재 상황}}

## 1. Summary (요약)
- **Result**: 작업 전 / Success / Fail
- **Key Changes**:
    - {{작업 완료 후 업데이트}}

## 2. Gap Analysis (Order vs Report)
- **Initial Order**: {{초기 계획}}
- **Changed Spec (The Gap)**: 
    - {{변경된 상세 사항}}

## 3. Artifacts (산출물)
- {{작업 완료 후 업데이트}}

## 4. Lessons Learned (교훈 & 회고)
- {{작업 완료 후 업데이트}}

## 5. Updates to Memory (지식 현행화 / 턴-태스크-메모라이즈)
- [ ] `{{ODD-KIT-DIR}}/memory/cells/xxx.md` (New/Updated)
- [ ] `{{ODD-KIT-DIR}}/history/tasks/` (Archived)
