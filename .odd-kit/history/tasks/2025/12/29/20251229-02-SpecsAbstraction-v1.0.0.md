---
id: "20251229_02_SpecsAbstraction_v1.0.0"
type: "refactor"
status: "done"
priority: "medium"
created-at: "2025-12-29"
summary: "스펙(Specs) 구조를 특정 도메인(프론트엔드 등)에 종속되지 않은 보편적이고 추상적인 3단계 구조로 재편"
context:
  - ".odd/context/logic/domain/memory-model.md"
  - "oddtemplate/specs/README.md"
  - "oddtemplate/setup/install.sh"
---

# 📋 Order: Specs Structure Abstraction (v1.0.0)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- 현재 `specs` 구조(Planning, Design, Markup, Development)는 프론트엔드 개발 관점에 다소 치우쳐 있음.
- ODD는 모든 소프트웨어 및 시스템 공학에 적용 가능한 보편적 프레임워크를 지향함.
- 스펙은 '씨앗'이며, 실제 구현 지식인 `Context/Logic`으로 자라나기 전의 원형을 보관하는 곳임.

### 🎯 Goal
- [ ] 스펙 폴더 구조를 **기획설계, 디자인, 개발**의 추상적 3단계로 단순화.
- [ ] `odd-template` 및 `install.sh`의 스펙 초기화 로직 수정.
- [ ] `specs/README.md`를 신규 체계에 맞게 개정.

## 2. Todo List (할 일)

### A. Template Update (템플릿 수정)
- [ ] `oddtemplate/specs/README.md` 수정: 
    - 1-planning (기획/설계)
    - 2-design (디자인/UIUX)
    - 3-development (개발/기술설계)
- [ ] `oddtemplate/setup/install.sh` 수정: `mkdir` 로직을 신규 3개 폴더로 변경.

### B. Project Apply (프로젝트 적용)
- [ ] 현재 프로젝트의 `docs/specs` 폴더가 있다면 새로운 구조로 마이그레이션 제안 혹은 수동 조정. (본 프로젝트는 이미 `docs/specs`를 사용 중일 수 있음)

### C. Clean Up (정리)
- [ ] `oddtemplate/specs/` 하위의 레거시 폴더들 삭제.
