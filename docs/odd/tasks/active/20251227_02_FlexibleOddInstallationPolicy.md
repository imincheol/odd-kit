---
id: "20251227_02_FlexibleOddInstallationPolicy"
type: "feat"
status: "draft"
priority: "high"
created_at: "2025-12-27"
summary: "ODD 설치 시 프로젝트 구조(기존 docs 폴더 존재, 모노레포 등)에 따른 유연한 적용 방안 논의 및 수립"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/tasks/roadmap.md"
  - "docs/odd/setup/ODD_INIT.md"
---

# 📋 Order: ODD 설치 및 구조의 유연성 확보 전략 수립

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. **기존 `docs` 폴더와의 충돌**: 많은 프로젝트가 이미 `docs` 폴더를 프로젝트 스펙이나 문서화 용도로 사용하고 있음. 현재 ODD가 이를 강제로 점유하거나 혼용하는 것은 부자연스러울 수 있음.
2. **모노레포 및 풀스택 대응**: 하나의 저장소에 백엔드(BE)와 프론트엔드(FE)가 공존하는 경우, 각각의 도메인에 맞는 별도의 ODD 체계가 필요할 수 있음.
3. **설치 스크립트의 고정된 로직**: 현재 `install.sh` 이후 적용되는 로직이 일방향적임. 다양한 프로젝트 상황을 상정한 유연한 설정값이 필요함.

### 🎯 Goal
- 프로젝트 상황에 따른 ODD 설치 경로 및 구조 분리 방안 확정.
- 모노레포 환경에서의 멀티 ODD(BE/FE) 운영 가이드라인 수립.
- 설치 스크립트 실행 후 적용되는 초기 설정 단계의 유연성 확보.
- **최우선 목표**: 위 내용들에 대해 충분한 논의와 토론을 거쳐 합의된 방향성을 도출함.

## 2. Todo List (할 일)

### A. 전략 논의 및 합의 (Discussion Phase)
- [ ] 기존 `docs` 폴더가 있는 프로젝트에서의 ODD 위치(예: `.odd/`, `docs/odd/` 외 대안 등) 검토.
- [ ] 모노레포 대응을 위한 계층적 ODD 또는 분리된 ODD 구조 설계 논의.
- [ ] 설치 스크립트(`install.sh`)에서 사용자 선택권을 어떻게 제공할지 논의.

### B. 정책 정의 및 문서화 (Policy Definition)
- [ ] 논의 결과에 따른 `ATLAS_TEMPLATE.md` 및 설치 가이드 업데이트안 작성.
- [ ] `ODD_INIT.md`, `ODD_UPDATE.md` 등에 관련 정책 반영 준비.

### C. 구현 계획 수립 (Implementation Planning)
- [ ] 논의된 내용을 바탕으로 설치 스크립트 및 템플릿 수정 계획 수립.
