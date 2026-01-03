---
id: "20260103_04_RenameProjectMigration"
odd_version: "v1.2.1"
type: "chore"
status: "done"
priority: "high"
created_at: "2026-01-03"
summary: "GitHub 프로젝트명 변경(odd-starter -> prompt-kit)에 따른 참조 URL 및 문서 업데이트"
context:
  - ".prompt-kit/tasks/roadmap.md"
  - "README.md"
  - "pk-template/setup/install.sh"
---

# 📋 Order: 프로젝트 리네임 마이그레이션 (odd-starter -> prompt-kit)

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. GitHub 리포지토리 이름이 `odd-starter`에서 `prompt-kit`으로 변경됨.
2. 현재 `README.md` 및 설치 스크립트(`install.sh`) 내의 URL이 여전히 `odd-starter`를 가리키고 있어, 설치 및 링크가 깨질 위험이 있음.
3. 프로젝트의 공식 명칭이 "Prompt Kit"으로 확고해짐에 따라, 코드 베이스 내의 구 프로젝트 명(`odd-starter`) 참조를 갱신해야 함.

### 🎯 Goal
- 모든 `odd-starter` 참조 URL을 `prompt-kit`으로 변경.
- 문서 및 스크립트의 정합성 확보.
- 로컬 Git Remote URL 점검 및 업데이트 가이드.

## 2. Todo List (할 일)

### A. 참조 URL 업데이트
- [x] `README.md`: 설치 커맨드 URL 변경 (`imincheol/odd-starter` -> `imincheol/prompt-kit`)
- [x] `pk-template/setup/install.sh`: `REMOTE_SCRIPT_URL`, `REPO_URL` 변수 수정
- [x] `docs/specs/2_design/STRUCTURE.md`: 프로젝트 명칭 참조 수정

### B. 검증
- [x] 변경된 URL이 유효한지 확인 (가능한 범위 내)
- [x] `git remote` 업데이트 제안
