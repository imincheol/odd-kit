---
id: "20260105-19-Restructure-Docs-ODD-vs-Project-order"
odd-kit-version: "v2.0.0"
type: "refactor"
status: "draft"
priority: "critical"
created-at: "2026-01-05"
summary: "Docs 구조 재정의 - ODD 시스템 vs 프로젝트 관리 분리"
---

# 📋 Order: Docs 구조 재정의 (ODD vs Project)

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> docs 는 두가지 관점이 있어야해. 하나는 이 프로젝트에 대한 것들 그리고 다른 하나는 odd 에 대한 것들이야. 
> 
> odd 에 대한 것이라면 말 그대로 odd 시스템에 대한 것이지 
> 이것에 대한 결과물이 바로 odd-kit-prompt-template 인 것이고 
> 
> 그리고 프로젝트에 대한 것이라면 odd 를 포함해서 이 프로젝트를 관리하는 개념이야 
> 먼저 리드미에 대한 것, 채인지로그에 대한 것처럼 루트에 대한 것이 있어야지 
> 그리고 setup 에 대해서 있고 각 역활을 설명하는게 필요하지 
> 리드미에 그래서 setup 의 내용이 있지 
> 
> 그러니까 odd-kit-template 은 
> odd
> ㄴ history, memory, tasks, odd-kit-prompt 가 있고 
> tool 
> ㄴ setup 
> 이 있다고 보면 되지 
> 
> 프로젝트는 이 tool 과 root 에 대한 것을 담고 있고

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- **현재 문제**: `docs/`가 ODD 시스템과 프로젝트 관리를 혼재하여 관리
- **핵심 인사이트**: 
  - **ODD 시스템**: ODD Kit 자체의 철학과 작동 방식 (결과물: `odd-kit-prompt-template`)
  - **프로젝트 관리**: 이 프로젝트(odd-starter)를 어떻게 관리하는가 (결과물: `README.md`, `CHANGELOG.md`, `setup/`)

- **새로운 구조 개념**:
  ```
  odd-kit-template/
  ├── odd/                    # ODD 시스템 (배포될 것)
  │   ├── ODD-KIT-PROMPT-TEMPLATE.md
  │   ├── memory/
  │   ├── tasks/
  │   └── history/
  └── tool/                   # 프로젝트 도구 (배포될 것)
      └── setup/
  
  root/                       # 프로젝트 관리 (배포 안 됨)
  ├── README.md
  ├── CHANGELOG.md
  └── docs/                   # 프로젝트 문서
      ├── origin/             # 프로젝트 철학
      └── specs/              # 프로젝트 스펙
  ```

### 🎯 Goal (목표)
- **Primary**: Docs 구조를 ODD 시스템과 프로젝트 관리로 명확히 분리
- **Why**: 
  - ODD 시스템 문서는 `odd-kit-template/odd/`에 집중
  - 프로젝트 관리 문서는 `docs/`에 집중
  - 배포 시 혼란 방지

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)

- [ ] `docs/specs/00-project-structure-spec.md`: 현재 프로젝트 구조
- [ ] `odd-kit-template/`: 배포 템플릿 구조
- [ ] `README.md`: 프로젝트 루트 문서

## 3. Todo List (할 일)

### Phase 1: 구조 분석 및 설계
- [ ] 현재 `docs/` 내용 분석
  - ODD 시스템 관련 문서 식별
  - 프로젝트 관리 관련 문서 식별
- [ ] 새로운 구조 설계:
  ```
  odd-kit-template/
  ├── odd/                              # ODD 시스템
  │   ├── ODD-KIT-PROMPT-TEMPLATE.md   # 부트로더
  │   ├── memory/
  │   │   ├── cells/
  │   │   └── template/
  │   ├── tasks/
  │   │   ├── template/
  │   │   └── roadmap-template.md
  │   └── history/
  └── tool/                             # 프로젝트 도구
      └── setup/
          ├── install.sh
          ├── ODD-KIT-MIGRATION-TEMPLATE.md
          └── SPECS-README-TEMPLATE.md
  
  docs/                                 # 프로젝트 문서
  ├── origin/                           # 프로젝트 철학
  │   ├── 01-project-structure-philosophy.md
  │   └── 02-trust-free-opr-philosophy.md
  └── specs/                            # 프로젝트 스펙
      ├── 00-project-structure-spec.md
      ├── 01-trust-free-protocol-spec.md
      └── ...
  ```

### Phase 2: ODD 시스템 문서 정리
- [ ] `odd-kit-template/odd/` 구조 확정
- [ ] ODD 시스템 관련 문서 이동/정리
- [ ] `ODD-KIT-PROMPT-TEMPLATE.md` 위치 확정

### Phase 3: 프로젝트 문서 정리
- [ ] `docs/origin/` 내용 검토 및 정리
- [ ] `docs/specs/` 내용 검토 및 정리
- [ ] 프로젝트 vs ODD 시스템 명확히 구분

### Phase 4: README 및 루트 문서 업데이트
- [ ] `README.md` 업데이트:
  - ODD Kit 소개 (외부 사용자용)
  - Setup 가이드
  - 프로젝트 구조 설명
- [ ] `CHANGELOG.md` 검토
- [ ] 루트 문서들과 `docs/` 관계 명확화

### Phase 5: 3-Pillar 재정의
- [ ] 3-Pillar 개념 재검토:
  - `docs/` = 프로젝트 설계 (Present)
  - `odd-kit-template/` = ODD 시스템 + 도구 (Future)
  - `.odd-kit/` = 개발 엔진 (Past~Now)
- [ ] 각 Pillar의 역할 명확화

### Phase 6: 문서화 및 검증
- [ ] 새로운 구조 문서화
- [ ] 모든 참조 링크 업데이트
- [ ] 일관성 검증

## 4. ✅ Success Criteria
- [ ] `odd-kit-template/`이 `odd/`와 `tool/`로 명확히 분리됨
- [ ] ODD 시스템 문서와 프로젝트 문서가 명확히 구분됨
- [ ] `README.md`가 프로젝트 관리 + ODD Kit 소개 역할 수행
- [ ] 3-Pillar 개념이 새 구조에 맞게 재정의됨
- [ ] 모든 문서 링크가 올바르게 업데이트됨

---
## ⚖️ Approval
- [x] User Approved (2026-01-05 10:27 - Auto)

---

## Appendix A. 현재 vs 새로운 구조

### 현재 구조
```
odd-kit-template/
├── ODD-KIT-PROMPT-TEMPLATE.md
├── memory/
├── tasks/
├── history/
└── setup/

docs/
├── origin/
└── specs/
```
문제: ODD 시스템과 프로젝트 도구가 혼재

### 새로운 구조
```
odd-kit-template/
├── odd/                    # ODD 시스템 (순수)
│   ├── ODD-KIT-PROMPT-TEMPLATE.md
│   ├── memory/
│   ├── tasks/
│   └── history/
└── tool/                   # 프로젝트 도구
    └── setup/

docs/                       # 프로젝트 문서
├── origin/
└── specs/
```
장점: 명확한 분리, 배포 시 혼란 없음

## Appendix B. 두 가지 관점

### 1. ODD 시스템 관점
- **목적**: ODD Kit 자체의 작동 방식
- **결과물**: `odd-kit-template/odd/ODD-KIT-PROMPT-TEMPLATE.md`
- **내용**: ORW 프로토콜, Memory Cell, Turn-Based System 등

### 2. 프로젝트 관리 관점
- **목적**: odd-starter 프로젝트를 어떻게 관리하는가
- **결과물**: `README.md`, `docs/specs/`, `tool/setup/`
- **내용**: 프로젝트 구조, 설치 방법, 개발 가이드 등
