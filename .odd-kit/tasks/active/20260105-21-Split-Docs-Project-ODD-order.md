---
id: "20260105-21-Split-Docs-Project-ODD-order"
odd-kit-version: "v2.0.0"
type: "refactor"
status: "draft"
priority: "high"
created-at: "2026-01-05"
summary: "docs를 project 관리와 odd 스펙으로 명시적 분리"
---

# 📋 Order: Docs를 Project와 ODD로 분리

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> 그리고 docs 를 specs 를 project 관리와 odd 스펙 두가지로 명시적으로 나누자

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- **현재 상황**: 
  - `docs/specs/`에 프로젝트 관리 스펙과 ODD 시스템 스펙이 혼재
  - `docs/origin/`도 마찬가지로 혼재
  - 어떤 문서가 프로젝트 관리용이고 어떤 것이 ODD 스펙인지 불명확

- **분리 기준**:
  - **Project 관리**: odd-starter 프로젝트 자체를 어떻게 관리하는가 (README, CHANGELOG, 프로젝트 구조 등)
  - **ODD 스펙**: ODD Kit 시스템 자체의 작동 방식 (ORW, Turn-Based, Memory Cell 등)

### 🎯 Goal (목표)
- **Primary**: docs를 project와 odd로 명시적 분리
- **Why**: 프로젝트 관리와 ODD 시스템 스펙을 명확히 구분하여 혼란 방지

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)

- [ ] `docs/specs/`: 현재 스펙 문서들
- [ ] `docs/origin/`: 현재 오리진 문서들

## 3. Todo List (할 일)

### Phase 1: 현재 문서 분류
- [ ] docs/specs 파일들 분류
  - Project: 00-project-structure, 06-readme, 05-installer
  - ODD: 01-trust-free-protocol, 02-identity-and-goals, 03-operational-lifecycle, 07-role
- [ ] docs/origin 파일들 분류
  - Project: 01-project-structure-philosophy
  - ODD: 02-trust-free-opr-philosophy, 03-template-philosophy

### Phase 2: 디렉토리 구조 생성
- [ ] `docs/project/specs/` 생성
- [ ] `docs/project/origin/` 생성
- [ ] `docs/odd/specs/` 생성
- [ ] `docs/odd/origin/` 생성

### Phase 3: 파일 이동
- [ ] Project 관련 파일 이동
- [ ] ODD 관련 파일 이동
- [ ] README.md 파일 생성 (각 디렉토리)

### Phase 4: 참조 링크 업데이트
- [ ] 이동한 파일들의 내부 링크 수정
- [ ] 다른 문서들의 참조 링크 수정

## 4. ✅ Success Criteria
- [ ] docs가 project와 odd로 명확히 분리됨
- [ ] 모든 파일이 올바른 위치에 있음
- [ ] 참조 링크가 모두 정상 작동함

---
## ⚖️ Approval
- [x] User Approved (2026-01-05 13:31 - Auto)

---

## Appendix. 새로운 구조

```
docs/
├── project/              # 프로젝트 관리
│   ├── specs/
│   │   ├── 00-project-structure-spec.md
│   │   ├── 05-installer-mechanism-spec.md
│   │   └── 06-readme-spec.md
│   └── origin/
│       └── 01-project-structure-philosophy.md
└── odd/                  # ODD 시스템
    ├── specs/
    │   ├── 01-trust-free-protocol-spec.md
    │   ├── 02-identity-and-goals-spec.md
    │   ├── 03-operational-lifecycle-spec.md
    │   └── 07-role-spec.md
    └── origin/
        ├── 02-trust-free-opr-philosophy.md
        └── 03-template-philosophy.md
```
