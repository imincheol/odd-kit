---
id: "20260105-17-Complete-Bootloader-Prompt-order"
odd-kit-version: "v2.0.0"
type: "docs"
status: "draft"
priority: "critical"
created-at: "2026-01-05"
summary: "ODD-KIT-PROMPT-TEMPLATE.md를 완전한 부트로더로 확장 - 모든 ODD 철학과 디테일 포함"
---

# 📋 Order: ODD-KIT-PROMPT-TEMPLATE 완전한 부트로더 확장

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> 전체적으로 개념을 한번 점검을 해봐야 할 것 같은데 
> 일단 root 의 readme 와 odd-template 의 odd-kit-prompot-template 이 두가지가 
> 하나는 외부를 기준으로 거시적 설명이 있고, 다른 하나는 내부를 기준으로 모든 디테일이 기록되어 있어야 하잖아? 
> 그럼 이 두가지 문서 만으로도 모든 odd 의 철학이 다 녹아 있어야 해 
> 
> odd-kit-prompot-template 이 이 프로젝트의 output 결과물이야 
> 여기에 일단 명시적으로 모든게 다 설명되어 있어야해. 
> 프롬프트가 길더라도 말이지

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- **현재 문제**: `ODD-KIT-PROMPT-TEMPLATE.md`가 85줄로 너무 짧아 AI가 이 문서만으로 100% 이해하고 실행하기 어려움
- **핵심 이슈**: 
  - ORW의 구체적인 작동 방식 부족
  - 파일 구조와 명명 규칙 상세 설명 없음
  - Memory Cell 시스템 설명 부족
  - 구체적인 예시와 금지 사항 시나리오 없음
  - AI가 자주 위반하는 규칙에 대한 명시적 경고 부족

- **두 문서의 역할**:
  - `README.md`: 외부 사용자를 위한 거시적 소개 (마케팅/온보딩)
  - `ODD-KIT-PROMPT-TEMPLATE.md`: AI를 위한 완전한 운영 매뉴얼 (부트로더)

### 🎯 Goal (목표)
- **Primary**: `ODD-KIT-PROMPT-TEMPLATE.md`를 AI가 이 문서 하나만으로 ODD Kit을 완벽히 이해하고 실행할 수 있는 완전한 부트로더로 확장
- **Why**: AI 할루시네이션과 프로토콜 위반을 구조적으로 방지하고, 별도 문서 참조 없이 단일 진입점으로 모든 철학과 규칙을 전달

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)
*이 오더를 기획할 때 분석한 메모리 셀 목록입니다.*

- [ ] `odd-kit-template/ODD-KIT-PROMPT-TEMPLATE.md`: 현재 부트로더 (85줄)
- [ ] `README.md`: 외부 사용자용 소개 문서
- [ ] `docs/specs/01-trust-free-protocol-spec.md`: Trust-Free 프로토콜 상세
- [ ] `docs/origin/02-trust-free-opr-philosophy.md`: ORW 철학 원본
- [ ] `.odd-kit/tasks/active/20260104-16-Migrate-To-Order-Report-WorkingLog-*`: ORW 마이그레이션 태스크 (실제 예시)

## 3. Todo List (할 일)

### Phase 1: 현재 구조 분석 및 설계
- [ ] 현재 ODD-KIT-PROMPT-TEMPLATE.md 구조 분석
- [ ] 추가해야 할 섹션 목록 작성
- [ ] 각 섹션의 상세 내용 설계
- [ ] 전체 문서 구조 재설계 (목차 포함)

### Phase 2: ORW 프로토콜 상세 확장
- [ ] **Section 2.1**: ORW 상세 워크플로우 추가
  - Order 생성 시 정확한 절차
  - Report 초기화 및 업데이트 절차
  - WorkingLog 기록 규칙
  - Triple Creation 상세 설명
- [ ] **Section 2.2**: 파일 명명 규칙 및 구조
  - `YYYYMMDD-NN-Title-{order|report|workinglog}.md` 형식 설명
  - frontmatter 필수 필드 및 선택 필드
  - 파일 위치 규칙 (active/history)
- [ ] **Section 2.3**: 각 문서 타입별 템플릿 구조
  - Order 문서 구조 및 필수 섹션
  - Report 문서 구조 및 필수 섹션
  - WorkingLog 문서 구조 및 필수 섹션

### Phase 3: Memory Cell 시스템 상세 설명
- [ ] **Section 6**: Memory Cell Architecture
  - Memory Cell이란 무엇인가
  - 언제 생성하는가 (Turn-Memory 상세)
  - 어떻게 참조하는가
  - Cell 명명 규칙 및 카테고리
  - Cell 간 관계 표현 방법

### Phase 4: 구체적인 예시 추가
- [ ] **Section 7**: Practical Examples
  - 완전한 Order 예시 (실제 태스크 기반)
  - 완전한 Report 예시
  - 완전한 WorkingLog 예시 (시간순 로그)
  - Triple Creation 실행 예시
  - Memory Cell 생성 및 참조 예시

### Phase 5: 금지 사항 및 엄격한 규칙 강화
- [ ] **Section 8**: Strict Rules & Violations
  - 각 황금률에 대한 구체적 설명
  - 위반 시나리오 예시
  - 올바른 대응 방법
  - AI가 자주 저지르는 실수 목록
  - 프로토콜 위반 시 복구 절차

### Phase 6: Turn-Based System 상세 확장
- [ ] **Section 3 확장**: Operational Lifecycle 상세
  - Turn-0 (Bootstrap) 상세 절차
  - Turn-Memory 각 단계별 상세 설명
  - Turn-Order 각 단계별 상세 설명
  - 각 Turn에서 생성/수정되는 파일 목록

### Phase 7: Agent Persona 및 책임 명확화
- [ ] **Section 4 확장**: Agent Persona 상세
  - 각 페르소나의 구체적 책임
  - 페르소나 전환 시점
  - 각 페르소나가 생성/수정하는 파일
  - 페르소나별 금지 사항

### Phase 8: 문서 통합 및 검증
- [ ] 전체 섹션 통합
- [ ] 목차 생성 (자동 링크)
- [ ] 일관성 검증
- [ ] 길이 확인 (목표: 300-500줄)
- [ ] AI 테스트 (이 문서만으로 이해 가능한지)

### Phase 9: README.md 간소화 및 역할 명확화
- [ ] README.md를 외부 사용자용 소개로 간소화
- [ ] ODD-KIT-PROMPT-TEMPLATE.md로의 명확한 분리
- [ ] 두 문서 간 역할 구분 명시

## 4. ✅ Success Criteria
- [ ] ODD-KIT-PROMPT-TEMPLATE.md가 300-500줄로 확장됨
- [ ] AI가 이 문서만 읽고 다음을 100% 이해할 수 있음:
  - [ ] ORW 프로토콜의 정확한 실행 방법
  - [ ] 파일 생성 및 명명 규칙
  - [ ] Memory Cell 시스템
  - [ ] 금지 사항과 올바른 대응
- [ ] 모든 섹션에 구체적인 예시 포함
- [ ] 황금률 각각에 대한 상세 설명 및 위반 시나리오 포함
- [ ] Turn-Based System의 각 단계별 상세 절차 포함
- [ ] README.md와 ODD-KIT-PROMPT-TEMPLATE.md의 역할이 명확히 구분됨

---
## ⚖️ Approval
- [x] User Approved (2026-01-05 10:07)

---

## Appendix A. 추가해야 할 주요 섹션 목록

### 현재 섹션 (85줄)
1. Project Philosophy: The 3-Pillar Architecture
2. Core Protocol: Trust-Free ORW Lifecycle
3. Operational Lifecycle (Turn-Based System)
4. Agent Persona (Role Spec)
5. Identity & Installer Mechanism
6. Cautions
7. Navigation

### 추가/확장할 섹션
1. **ORW Protocol Details** (새로 추가)
   - 1.1 Triple Creation Workflow
   - 1.2 File Naming Convention
   - 1.3 Document Structure Templates
   - 1.4 State Management (Location is State)

2. **Memory Cell Architecture** (새로 추가)
   - 2.1 What is Memory Cell
   - 2.2 When to Create
   - 2.3 How to Reference
   - 2.4 Cell Categories & Naming

3. **Turn-Based System Details** (확장)
   - 3.1 Turn-0: Bootstrap (상세 절차)
   - 3.2 Turn-Memory: Knowledge Sync (각 단계 상세)
   - 3.3 Turn-Order: Execution (각 단계 상세)

4. **Practical Examples** (새로 추가)
   - 4.1 Complete Order Example
   - 4.2 Complete Report Example
   - 4.3 Complete WorkingLog Example
   - 4.4 Triple Creation Example
   - 4.5 Memory Cell Example

5. **Strict Rules & Common Violations** (새로 추가)
   - 5.1 Golden Rules Detailed
   - 5.2 Violation Scenarios
   - 5.3 Correct Responses
   - 5.4 Common AI Mistakes
   - 5.5 Recovery Procedures

6. **Agent Persona Details** (확장)
   - 6.1 Architect Responsibilities
   - 6.2 Worker Responsibilities
   - 6.3 Librarian Responsibilities
   - 6.4 Persona Switching Rules

## Appendix B. 목표 문서 구조 (예상 500줄)

```
# ODD-KIT-PROMPT: {{PROJECT-NAME}}
> Universal Boot Loader

## 📖 Table of Contents
[자동 생성 목차]

## 🏛️ 1. Project Philosophy: The 3-Pillar Architecture (기존 유지)

## 🛡️ 2. Core Protocol: Trust-Free ORW Lifecycle
### 2.1 ORW Overview (기존)
### 2.2 Triple Creation Workflow (새로 추가)
### 2.3 File Naming Convention (새로 추가)
### 2.4 Document Structure Templates (새로 추가)
### 2.5 State Management: Location is State (새로 추가)
### 2.6 Golden Rules Detailed (확장)

## 🔄 3. Operational Lifecycle (Turn-Based System)
### 3.1 Turn-0: Bootstrap (상세 확장)
### 3.2 Turn-Memory: Knowledge Sync (상세 확장)
### 3.3 Turn-Order: Execution Cycle (상세 확장)

## 🎭 4. Agent Persona (Role Spec)
### 4.1 Architect (확장)
### 4.2 Worker (확장)
### 4.3 Librarian (확장)
### 4.4 Persona Switching (새로 추가)

## 🧠 5. Memory Cell Architecture (새로 추가)
### 5.1 What is Memory Cell
### 5.2 When to Create
### 5.3 How to Reference
### 5.4 Cell Categories & Naming

## 📚 6. Practical Examples (새로 추가)
### 6.1 Complete Order Example
### 6.2 Complete Report Example
### 6.3 Complete WorkingLog Example
### 6.4 Triple Creation Example
### 6.5 Memory Cell Example

## ⚠️ 7. Strict Rules & Common Violations (새로 추가)
### 7.1 Golden Rules Detailed
### 7.2 Violation Scenarios
### 7.3 Correct Responses
### 7.4 Common AI Mistakes
### 7.5 Recovery Procedures

## 🛠️ 8. Identity & Installer Mechanism (기존 유지)

## 🧭 9. Navigation (기존 유지)

## 🚀 10. Getting Started (새로 추가)
> 에이전트에게: 이 문서를 읽었다면...
```
