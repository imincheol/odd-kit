---
id: "20251226_16_RefineSystemContext"
type: "chore"
status: "approved"
priority: "high"
created_at: "2025-12-26"
summary: "AI 에이전트 가독성 향상을 위한 ATLAS 메타데이터 추가 및 README 현행화"
context:
  - "docs/odd/ATLAS.md"
  - "README.md"
---

# 📋 Order: 시스템 컨텍스트 및 가이드 정교화

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. v0.9.4에서 도입된 '자동 오더 생성' 기능이 README에 명시되지 않아 사용자가 초기 액션을 파악하기 어려움.
2. AI 에이전트가 세션 시작 시 현재 프로젝트의 정체성(이름, 버전, 목표)을 즉시 파악할 수 있는 명시적인 메타데이터 섹션이 ATLAS에 부재함.

### 🎯 Goal
- `ATLAS.md`에 프로젝트 메타데이터 섹션을 추가하여 AI의 페르소나 몰입 및 컨텍스트 파악 도모.
- `README.md`에 v0.9.4의 자동화 워크플로우를 반영하여 사용자 경험(UX) 개선.
- 해당 모든 사항을 `odd-template`에도 동일하게 보급하여 시스템 전수 동기화.

## 2. Todo List (할 일)

### A. Core Document Update
- [x] `docs/odd/ATLAS.md`: Project Metadata 섹션 추가
- [x] `README.md`: 신규 설치 및 업데이트 시 '자동 오더' 활용법 안내 추가

### B. Template Synchronization
- [x] `odd-template/ATLAS_TEMPLATE.md`: 메타데이터 자리표시자({{PROJECT_NAME}}) 반영
- [x] `odd-template/setup/install.sh`: (이전 단계 완료)

### C. Final Verification
- [x] 전체 시스템 버전 v0.9.4 일관성 확인
