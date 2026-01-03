---
type: protocol
category: memory_management
version: "v1.1.1"
last_updated: "2026-01-03"
---

# 📐 Memory Cell 생성 프로토콜

> **"AI 에이전트가 Turn 3 단계에서 지식을 요약할 때 반드시 따라야 할 규칙"**

---

## 1. 프로토콜 개요

이 문서는 **Turn 3 (Finalize & Archive)** 단계에서 작업 결과를 `memory/cells/`에 요약할 때 적용해야 할 구체적인 절차를 정의합니다.

---

## 2. Cell 생성 워크플로우

### Phase 1: 지식 추출 (Knowledge Extraction)
1. 완료된 작업에서 **재사용 가능한 지식** 식별
2. 기존 `memory/cells/`에 유사한 내용이 있는지 검색
3. 신규 생성 vs 기존 Cell 업데이트 결정

### Phase 2: 입자도 판단 (Granularity Assessment)
**체크리스트 실행**:
- [ ] 추출된 지식이 **단일 개념**인가?
- [ ] 300~800줄 범위로 작성 가능한가?
- [ ] 다른 Cell 없이도 **독립적으로 이해** 가능한가?
- [ ] 여러 컨텍스트에서 **재사용**될 가능성이 있는가?

**판단 결과**:
- ✅ 모두 Yes → 새로운 Cell 생성
- ⚠️ 일부 No → 기존 Cell에 섹션 추가 또는 분리 재검토
- ❌ 대부분 No → Cell 생성 보류, `history/`에만 기록

### Phase 3: Cell 작성 (Cell Writing)
**필수 구조**:
```markdown
---
id: "unique_cell_id"
title: "Cell 제목"
relatedness: 0.0~1.0
references: ["related_cell_1", "related_cell_2"]
tags: ["category", "topic"]
---

# 📖 [Cell 제목]

## 1. 개요 (Overview)
[핵심 개념 1~2문장 요약]

## 2. 상세 설명 (Details)
[본문 내용]

## 3. 연관성 (References)
- `related_cell_1.md` (0.85) - [관계 설명]
- `related_cell_2.md` (0.70) - [관계 설명]
```

### Phase 4: 연관성 설정 (Relatedness Mapping)
1. **`memory/core/relatedness_guideline.md`** 참조
2. 관련 Cell 목록 작성
3. 각 Cell과의 연관성 점수 산정 (0.0 ~ 1.0)
4. 양방향 참조 확인 (A → B, B → A)

### Phase 5: 카테고리 배치 (Categorization)
**디렉토리 선택**:
- `memory/cells/domain/` - 비즈니스 로직, 도메인 지식
- `memory/cells/tech/` - 기술 스택, 아키텍처, 시스템 설계
- `memory/cells/workflow/` - 작업 프로세스, 절차
- `memory/cells/integration/` - 외부 시스템 연동

**파일명 규칙**:
- 소문자 + 언더스코어
- 명확하고 검색 가능한 이름
- 예: `user_authentication.md`, `payment_processing.md`

---

## 3. 분리 결정 트리 (Split Decision Tree)

```
현재 Cell 크기가 800줄 초과?
├─ Yes → 분리 검토 시작
│   └─ 2개 이상의 독립적 개념 존재?
│       ├─ Yes → 각 개념을 별도 Cell로 분리
│       └─ No → 섹션 구조 개선, 분리 보류
└─ No → 현재 상태 유지
```

---

## 4. 실전 시나리오

### Scenario 1: 새로운 기능 개발 완료
**상황**: 사용자 인증 시스템 구축 완료

**절차**:
1. 작업 내용 분석
   - 인증 로직 (JWT 발급/검증)
   - 세션 관리
   - 비밀번호 암호화
2. 입자도 판단
   - 각 주제가 독립적 → 3개 Cell 생성 결정
3. Cell 작성
   - `domain/jwt_authentication.md` (500줄)
   - `domain/session_management.md` (400줄)
   - `tech/password_encryption.md` (350줄)
4. 연관성 설정
   - `jwt_authentication` ↔ `session_management` (0.90)
   - `jwt_authentication` ↔ `password_encryption` (0.75)

### Scenario 2: 기존 Cell 업데이트
**상황**: 결제 시스템에 환불 기능 추가

**절차**:
1. 기존 `domain/payment_processing.md` 확인 (현재 600줄)
2. 환불 로직 추가 시 예상 크기: 900줄
3. 분리 결정: `domain/refund_processing.md` 신규 생성 (300줄)
4. 기존 Cell 업데이트: `payment_processing.md`에서 환불 참조 추가
5. 연관성 설정: `payment_processing` ↔ `refund_processing` (0.95)

---

## 5. 금지 사항 (Don'ts)

❌ **하지 말아야 할 것**:
1. **거대한 통합 문서 생성**: `project_everything.md` (3000줄)
2. **과도한 파편화**: 50줄짜리 Cell 남발
3. **연관성 누락**: `relatedness` 메타데이터 없이 생성
4. **중복 생성**: 기존 Cell 확인 없이 유사 내용 재작성
5. **카테고리 무시**: 모든 Cell을 `cells/` 루트에 배치

---

## 6. 품질 검증 체크리스트

Cell 생성 완료 후 다음을 확인하십시오:

### 구조 검증
- [ ] 메타데이터 완전성 (`id`, `title`, `relatedness`, `references`)
- [ ] 개요 섹션 존재
- [ ] 본문 논리적 구조
- [ ] 연관성 섹션 작성

### 내용 검증
- [ ] 단일 개념 집중
- [ ] 300~800줄 범위
- [ ] 독립적 이해 가능
- [ ] 실전 예시 포함 (선택)

### 연결성 검증
- [ ] 관련 Cell 목록 작성
- [ ] 연관성 점수 산정
- [ ] 양방향 참조 확인

---

## 7. AI 에이전트 자동화 템플릿

```markdown
## Turn 3 체크리스트 (자동 실행)

1. 지식 추출
   - [ ] 작업 결과에서 재사용 가능한 지식 식별
   - [ ] 기존 Cell 검색 완료

2. 입자도 판단
   - [ ] 단일 개념 확인
   - [ ] 크기 적정성 검토 (300~800줄)
   - [ ] 독립성 확인

3. Cell 생성/업데이트
   - [ ] 메타데이터 작성
   - [ ] 본문 작성
   - [ ] 연관성 설정

4. 품질 검증
   - [ ] 구조 검증 통과
   - [ ] 내용 검증 통과
   - [ ] 연결성 검증 통과
```

---

## 8. 요약

**핵심 원칙**:
1. **단일 책임**: 하나의 Cell은 하나의 개념만
2. **적정 크기**: 300~800줄 권장
3. **독립성**: 다른 Cell 없이도 이해 가능
4. **연관성**: 모든 Cell은 네트워크의 일부

**목표**: "2개밖에 안 생기는" 문제를 해결하고, 프로젝트마다 **수십 개의 세밀한 Memory Cell**이 자연스럽게 생성되도록 유도.
