---
id: "20260106-22-Git-Worktree-Commits-order"
odd-kit-version: "v2.0.0"
type: "chore"
status: "draft"
priority: "high"
created-at: "2026-01-06"
summary: "git worktree를 사용하여 작업별로 분리 커밋 후 통합"
---

# 📋 Order: Git Worktree를 사용한 작업별 분리 커밋

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> 적당하게 나눠서 커밋하고 싶은데 git worktree 를 써서 작업별로 분리해서 커밋하고 전체가 다 되면 하나로 합친 다음에 푸시하자

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- **현재 상황**: 
  - Task 17-21까지 5개 태스크 완료
  - 많은 파일 변경사항이 한 번에 쌓여있음
  - 논리적으로 분리해서 커밋하고 싶음

- **완료된 작업들**:
  1. **Task 17**: ODD-KIT-PROMPT-TEMPLATE 확장 (85줄 → 591줄)
  2. **Task 18**: ORW 플로우 수정 (Triple Creation → Order First)
  3. **Task 19**: odd-kit-template 구조 재정의 (odd/ + tool/)
  4. **Task 20**: Docs 내용 Prompt 반영 (운영 규칙 4가지 추가)
  5. **Task 21**: Docs 분리 (project/ + odd/)

### 🎯 Goal (목표)
- **Primary**: git worktree를 사용하여 각 작업을 별도 브랜치에서 커밋 후 통합
- **Why**: 논리적으로 분리된 커밋 히스토리 유지, 작업별 추적 용이

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)

- [ ] `.odd-kit/tasks/active/20260105-17-*`: Task 17 파일들
- [ ] `.odd-kit/tasks/active/20260105-18-*`: Task 18 파일들
- [ ] `.odd-kit/tasks/active/20260105-19-*`: Task 19 파일들
- [ ] `.odd-kit/tasks/active/20260105-20-*`: Task 20 파일들
- [ ] `.odd-kit/tasks/active/20260105-21-*`: Task 21 파일들

## 3. Todo List (할 일)

### Phase 1: Git 상태 확인 및 준비
- [ ] 현재 브랜치 확인
- [ ] 변경사항 확인 (`git status`)
- [ ] 메인 브랜치 이름 확인 (main/master)

### Phase 2: Worktree 생성 및 작업별 커밋
- [ ] **Worktree 1**: Task 17 - ODD-KIT-PROMPT-TEMPLATE 확장
  - 브랜치: `feat/task17-complete-bootloader`
  - 파일: `odd-kit-template/odd/ODD-KIT-PROMPT-TEMPLATE.md`
  - 커밋 메시지: "feat: expand ODD-KIT-PROMPT-TEMPLATE to 591 lines"

- [ ] **Worktree 2**: Task 18 - ORW 플로우 수정
  - 브랜치: `refactor/task18-orw-order-first`
  - 파일: 
    - `.odd-kit/ODD-KIT-PROMPT-odd-starter.md`
    - `odd-kit-template/tasks/template/report-template.md`
    - `odd-kit-template/tasks/template/workinglog-template.md`
  - 커밋 메시지: "refactor: change ORW flow to Order First"

- [ ] **Worktree 3**: Task 19 - odd-kit-template 구조 재정의
  - 브랜치: `refactor/task19-restructure-template`
  - 파일: `odd-kit-template/` 디렉토리 구조 변경
  - 커밋 메시지: "refactor: split odd-kit-template into odd/ and tool/"

- [ ] **Worktree 4**: Task 20 - Docs 내용 Prompt 반영
  - 브랜치: `docs/task20-sync-docs-to-prompt`
  - 파일: `odd-kit-template/odd/ODD-KIT-PROMPT-TEMPLATE.md` (운영 규칙 추가)
  - 커밋 메시지: "docs: add operational rules to prompt template"

- [ ] **Worktree 5**: Task 21 - Docs 분리
  - 브랜치: `refactor/task21-split-docs`
  - 파일: `docs/` 디렉토리 구조 변경
  - 커밋 메시지: "refactor: split docs into project/ and odd/"

- [ ] **Worktree 6**: Task Files - 태스크 파일들
  - 브랜치: `chore/task-files`
  - 파일: `.odd-kit/tasks/active/20260105-*`
  - 커밋 메시지: "chore: add task files for tasks 17-21"

### Phase 3: 브랜치 통합
- [ ] 메인 브랜치로 돌아가기
- [ ] 각 브랜치를 순서대로 merge
  - `feat/task17-complete-bootloader`
  - `refactor/task18-orw-order-first`
  - `refactor/task19-restructure-template`
  - `docs/task20-sync-docs-to-prompt`
  - `refactor/task21-split-docs`
  - `chore/task-files`

### Phase 4: Worktree 정리 및 푸시
- [ ] 모든 worktree 제거
- [ ] 통합된 메인 브랜치 푸시
- [ ] 작업 브랜치들 삭제 (선택)

## 4. ✅ Success Criteria
- [ ] 각 작업이 별도 커밋으로 분리됨
- [ ] 커밋 히스토리가 논리적으로 구성됨
- [ ] 모든 변경사항이 메인 브랜치에 통합됨
- [ ] 원격 저장소에 푸시 완료

---
## ⚖️ Approval
- [x] User Approved (2026-01-06 18:54 - Auto)

---

## Appendix A. Git Worktree 전략

### Worktree란?
- 하나의 저장소에서 여러 브랜치를 동시에 작업할 수 있게 해주는 기능
- 각 worktree는 독립적인 작업 디렉토리를 가짐

### 사용 명령어
```bash
# Worktree 생성
git worktree add <path> -b <branch-name>

# Worktree 목록 확인
git worktree list

# Worktree 제거
git worktree remove <path>
```

### 작업 순서
1. 메인 디렉토리에서 worktree 생성
2. 각 worktree로 이동하여 파일 변경 및 커밋
3. 메인 브랜치로 돌아와서 merge
4. Worktree 정리

## Appendix B. 커밋 메시지 컨벤션

- `feat:` - 새로운 기능
- `refactor:` - 리팩토링
- `docs:` - 문서 변경
- `chore:` - 기타 작업 (빌드, 설정 등)
