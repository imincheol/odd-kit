---
id: "order_20260103_06_RefactorTemplateAndAudit"
title: "Refactor Template Directory and Full System Audit"
status: "in_progress"
priority: "highest"
assignee: "odd-agent"
created-at: "2026-01-03T18:05:00"
references: 
  - "oddtemplate/"
  - ".odd-kit/"
---

# 📋 Order: 템플릿 디렉토리 리팩토링 및 시스템 전수 조사

## 1. 배경 (Background)
`.odd-kit`으로 루트 명칭을 변경했으나, `odd-template` 폴더명이 여전히 남아있어 정체성의 혼란이 있다.
또한, 자동화된 변경 과정에서 파일 내부의 `ODD` 용어 잔재가 남아있을 가능성이 높으므로, 파일 단위의 전수 조사가 필요하다.

## 2. 목표 (Objectives)
- **Directory Rename**: `oddtemplate/` -> `odd-kit-template/`
- **Full Audit**: 모든 파일과 폴더를 리스트업하고, 내용에 `ODD` 잔재가 있는지 100% 검수한다.
- **Checklist Driven**: 체크리스트를 통해 검수 과정을 투명하게 기록한다.

## 3. 작업 계획 (Plan)
1. 상세 체크리스트(Checklist) 생성.
2. `odd-template` 폴더명 변경.
3. `install.sh` 등 참조 코드 수정.
4. 파일 하나하나 열어서 내용 검수 및 수정.
