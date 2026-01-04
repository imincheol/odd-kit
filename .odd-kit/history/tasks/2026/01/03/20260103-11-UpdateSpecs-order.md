---
id: "order_20260103_11_UpdateSpecs"
title: "Update Project Specifications (Docs)"
status: "queued"
priority: "high"
assignee: "odd-agent"
created-at: "2026-01-03T18:45:00"
references: 
  - "checklist_20260103_11_UpdateSpecs"
---

# 📋 Order: 프로젝트 스펙 문서 현행화

## 1. 배경
기능 구현과 리팩토링은 완료되었으나, `docs/specs/` 폴더는 여전히 템플릿의 빈 구조(`1-planning`, `2-design`...)만 유지하고 있다.
코드는 변했지만 '설계도'가 업데이트되지 않은 상태이므로, 이를 프로젝트 실정에 맞게 채워 넣어야 한다.

## 2. 목표
- `docs/specs/` 내의 불필요한 템플릿 폴더/파일 정리.
- `odd-starter` (ODD Kit) 프로젝트의 실제 기획, 디자인, 개발 명세를 작성.
    - **Planning**: Local Context Manager 개념, 4-Turn Cycle.
    - **Design**: 파일 시스템 구조, 네이밍 규칙.
    - **Development**: `install.sh`의 동작 원리 (Self-Update, Migration).

## 3. 작업 계획
1. `checklist` 생성 (상세 문서 목록).
2. `docs/specs/` 클린업.
3. 각 카테고리별 핵심 문서(`MD`) 작성.
