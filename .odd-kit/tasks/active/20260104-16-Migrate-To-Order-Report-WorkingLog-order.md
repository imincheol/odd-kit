---
id: "20260104-16-Migrate-To-Order-Report-WorkingLog-order"
odd-kit-version: "v2.0.0"
type: "refactor"
status: "draft"
priority: "critical"
created-at: "2026-01-04"
summary: "Order-Progress-Report를 Order-Report-WorkingLog 메타포로 전환하여 AI 할루시네이션 방지"
---

# 📋 Order: Order-Report-WorkingLog 메타포 마이그레이션

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> AI LLM 심각한 성능상의 이슈로 할루시네이션이 반복됨. 
> 오더를 승인하고, 프로그레스로 인터랙티브하게 대화하며 개발하고, 결과를 리포트로 만들고 
> 이 과정을 심각하게 항상 위반함. 심지어 odd-kit 철학을 스펙으로 적고 prompt 파일을 수정한 상태에서
> 충분하게 컨텍스트에 odd 철학을 학습했음에도 불구하고 자기가 오더-프로그레스-리포트 단계를 순식간에 완료시킴.
> 
> 오더-프로그레스-리포트 를 다른 차원으로 승화시켜야함
> - 오더: 요청 내용 정리 및 계획 (불변)
> - 리포트: 오더 생성 시 즉시 생성, 최종 결과물 기록
> - 워킹로그: Progress를 대체, 모든 동작을 로그 형태로 기록
> 
> 워킹로그는 지금의 프로그레스 형태로 일단 가면 돼. 형식은 자유롭게 적어도 상관없지
> 상태는 위치로만 판단: Active 폴더 = 활성, History 폴더 = 완료/보류/실패 모두 포함

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- **핵심 문제**: AI가 Order-Progress-Report 단계를 건너뛰고 즉시 완료 처리하는 할루시네이션 반복
- **근본 원인**: Progress가 "진행 상태"를 나타내는 개념이라 AI가 자의적으로 건너뛸 수 있음
- **해결 방향**: 구조적으로 건너뛸 수 없는 메타포로 전환
  - Progress(상태) → WorkingLog(기록): 모든 동작을 append-only 로그로 기록
  - Report를 Order 생성 시 즉시 생성하여 단계 건너뛰기 방지
  - 상태 관리를 파일 위치로 단순화 (Active/History)

### 🎯 Goal (목표)
- **Primary**: Order-Report-WorkingLog 메타포로 전체 시스템 전환
- **Why**: AI 할루시네이션을 구조적으로 방지하고 신뢰성 있는 워크플로우 확립

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)
*이 오더를 기획할 때 분석한 메모리 셀 목록입니다.*

- [ ] `odd-kit-template/tasks/template/`: 현재 템플릿 구조 분석
- [ ] `.odd-kit/ODD-KIT-PROMPT-odd-starter.md`: 프롬프트 파일 업데이트 필요
- [ ] `.odd-kit/tasks/active/`: 기존 progress 파일 마이그레이션 대상

## 3. Todo List (할 일)

### Phase 1: 템플릿 파일 재구성
- [ ] `progress-template.md` → `workinglog-template.md` 이름 변경 및 내용 수정
  - frontmatter: `id` 패턴을 `*-workinglog`로 변경
  - 제목: `# 🚀 Progress` → `# 📝 WorkingLog`
  - 설명 추가: "모든 작업 동작을 시간순으로 기록하는 로그"
  
- [ ] `report-template.md` 수정
  - frontmatter에서 `status: "completed"` 제거 (상태는 위치로만 판단)
  - 초기 상태 섹션 추가: "## 0. Initial State" (작업 전 상태 명시)
  - 설명 추가: "Order 생성 시 함께 생성되며, 최종 결과물을 기록"

- [ ] `order-template.md` 수정
  - Todo List 섹션의 "턴-태스크-프로그레스" → "턴-태스크-워킹로그"로 변경
  - frontmatter `status` 값 검토 및 단순화

### Phase 2: 프롬프트 파일 업데이트
- [ ] `.odd-kit/ODD-KIT-PROMPT-odd-starter.md` 업데이트
  - Order-Report-WorkingLog 철학 명시
  - 핵심 원칙 추가:
    - "Order 생성 시 Report와 WorkingLog를 즉시 함께 생성"
    - "WorkingLog에 기록하지 않은 작업은 존재하지 않는다"
    - "Report는 WorkingLog의 최종 요약이다"
    - "상태는 파일 위치로만 판단 (Active/History)"
  - 기존 Progress 관련 내용 제거 또는 WorkingLog로 대체

### Phase 3: 기존 파일 마이그레이션
- [ ] `.odd-kit/tasks/active/` 내 `*-progress.md` 파일들 확인
- [ ] 각 progress 파일을 workinglog로 이름 변경
  - frontmatter의 `id` 값도 함께 수정
  - 제목 변경
- [ ] 필요 시 기존 history 폴더의 progress 파일들도 마이그레이션

### Phase 4: 문서화 및 검증
- [ ] `docs/specs/` 에 새로운 메타포 문서화
  - Order-Report-WorkingLog 철학
  - 각 파일의 역할과 생성 시점
  - 아카이빙 로직
- [ ] README.md 업데이트 (필요 시)
- [ ] 전체 시스템 일관성 검증

## 4. ✅ Success Criteria
- [ ] 모든 템플릿 파일이 Order-Report-WorkingLog 구조로 전환됨
- [ ] 프롬프트 파일에 새로운 철학이 명확히 명시됨
- [ ] 기존 active 태스크의 progress 파일이 workinglog로 마이그레이션됨
- [ ] 문서화 완료 및 시스템 일관성 확인
- [ ] AI가 단계를 건너뛸 수 없는 구조적 강제성 확보

---
## ⚖️ Approval
- [x] User Approved (2026-01-04 16:28)

---

## Appendix. Design Decisions

### 왜 Progress를 WorkingLog로 바꾸는가?
- **Progress**: "진행 상태"를 나타내는 개념 → AI가 자의적으로 건너뛸 수 있음
- **WorkingLog**: "작업 기록"을 나타내는 개념 → 건너뛰면 기록이 없으므로 작업하지 않은 것

### 왜 Report를 즉시 생성하는가?
- Order 생성 시 Report도 함께 생성하여 AI가 "Report 생성" 단계를 건너뛸 수 없게 함
- 초기 Report는 비어있거나 "작업 전" 상태를 명시

### 왜 상태 필드를 제거하는가?
- 상태를 파일 내부 필드로 관리하면 AI가 임의로 변경 가능
- 파일 위치(Active/History)로 상태를 판단하면 구조적으로 명확함
