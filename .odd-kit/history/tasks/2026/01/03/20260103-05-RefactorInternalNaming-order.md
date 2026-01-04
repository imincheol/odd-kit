---
id: "order_20260103_05_RefactorInternalNaming"
title: "Refactor Internal Naming to Match ODD Kit Identity"
status: "in_progress"
priority: "high"
assignee: "odd-agent"
created-at: "2026-01-03T17:52:00"
references: 
  - "ODD-KIT-PROMPT.md"
  - "install.sh"
---

# 📋 Order: 시스템 내부 명칭 재정립 (ODD -> ODD Kit)

## 1. 배경 (Background)
시스템 명칭이 `ODD Kit`으로 변경되었으나, 디렉토리명(`.odd/`)과 핵심 파일명(`ODD-KIT-PROMPT`)은 여전히 `ODD`를 사용 중이다.
사용자는 'ODD'를 실행 방법론(Engine)으로, 'ODD Kit'을 시스템 전체(Container)로 정의하였다. 이에 맞게 내부 구조를 일치시켜야 한다.

## 2. 목표 (Objectives)
- **루트 디렉토리 변경**: `.odd/` -> `.odd-kit/` (또는 적절한 이름)
- **진입점 파일 변경**: `ODD-KIT-PROMPT.md` -> `ODD-KIT-PROMPT.md` (또는 적절한 이름)
- **설정 파일 변경**: `.odd-config` -> `.odd-kit-config`

## 3. 핵심 논의 사항 (Decision Points)
- **Root Directory Name**: `ODD Kit`의 정체성을 담을 폴더명은?
- **Prompt File Name**: 부트 로더 역할을 하는 프롬프트 파일의 이름은?

## 4. 예상 작업 (Tasks)
- [ ] 이름 변경 결정 (User Agreement)
- [ ] `install.sh` 내 경로 및 변수 전면 수정
- [ ] 기존 `.odd` 폴더 마이그레이션 스크립트 작성
- [ ] 템플릿 파일명 일괄 변경
