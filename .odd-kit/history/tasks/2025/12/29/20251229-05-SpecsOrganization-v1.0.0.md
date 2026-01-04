---
id: "20251229_05_SpecsOrganization_v1.0.0"
type: "cleanup"
status: "done"
priority: "high"
created-at: "2025-12-29"
summary: "docs/specs/ 폴더 내 레거시 ODD 잔재 청소 및 v1.0.0 표준 스펙 구조 정비"
---

# 📋 Order: Specs Organization (v1.0.0)

## 🎯 Goal
`docs/specs/` 폴더 내부에 잘못 설치된 ODD 구버전 잔재를 청소하고, v1.0.0 표준 3단계 스펙 구조(`planning`, `design`, `development`)만 남도록 정비합니다.

## 📋 Role & Context
- **Persona**: **Auditor (감찰관)**
- **Context**: 
    - [Standard Protocol](.odd/context/protocols/odd-system.md)
    - [Project Atlas](.odd/atlas-odd-starter.md)

## 🛠️ Plan
1. **분석**: `docs/specs/` 하위의 불필요한 폴더(tasks, context, archive, setup) 및 파편화된 파일 식별.
2. **청소**: `.odd/`에 이미 존재하는 중복 ODD 시스템 잔재를 `docs/specs/`에서 제거.
3. **구조화**: 표준 3단계 폴더(1-planning, 2-design, 3-development) 및 README만 남기기.
4. **검증**: `docs/specs/`가 순수한 문서화 공간으로 남았는지 확인.

## 📝 Approval
- **Auditor**: Antigravity
- **User Approval**: [Wait]
