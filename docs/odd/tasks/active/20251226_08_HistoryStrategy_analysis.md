# 오더 분석: 히스토리 전략 세분화 (History Strategy Refinement)

## 1. 배경 (Background)
사용자 피드백에 따르면, 현재의 히스토리(`history/`) 관리는 시스템 의존성(디펜던시, 기술적 변경) 위주로 치우쳐 있습니다. ODD 시스템의 핵심인 "지식(Books)"이 진화하는 과정, 즉 **도메인 히스토리**를 별도로 관리해야 한다는 요구사항이 제기되었습니다.

## 2. 문제점 (Issues)
1.  **혼재된 기록**: 코드 리팩토링(System)과 비즈니스 정책 변경(Domain)이 명확히 구분되지 않음.
2.  **지식의 맥락 부재**: `books/domain/order-system.md`가 수정되었을 때, *왜* 정책이 바뀌었는지에 대한 서사가 `git log`에만 남음. Agent나 비개발자가 이를 추적하기 어려움.
3.  **구조적 레벨 불일치**: 라이브러리(Books) 내의 책들과 대응되는 수준의 히스토리 관리 체계가 없음.

## 3. 목표 (Objectives)
1.  **히스토리 이원화 (System vs Domain)**:
    *   **System History**: 프로젝트/코드 레벨의 변화 (Release Notes, Tech Stack updates).
    *   **Domain History**: 지식/정책 레벨의 변화 (Why we changed the policy).
2.  **구조 재설계**:
    *   `docs/odd/history/system/`: 시스템 관련 로그.
    *   `docs/odd/history/domain/`: 각 Book(주제)별 변경 이력 파일 (예: `order-system_chronicle.md`).
3.  **연결성 확보**: Book(현재)을 읽을 때, 해당 지식의 역사가 궁금하면 어디를 봐야 하는지 명시.

## 4. 제안하는 구조 (Proposed Structure)

```text
docs/odd/history/
├── system/
│   ├── CHANGELOG.md       (통합 버전/릴리즈 기록)
│   └── migration_logs.md  (대규모 기술 이전 등)
└── domain/
    ├── order-system.md    (order-system.md의 변경 연대기)
    ├── policy-language.md (언어 정책 변화 기록)
    └── ...
```

## 5. 실행 계획 (Action Plan)
1.  **디렉토리 생성**: `history/system` 및 `history/domain` 생성.
2.  **파일 이동**: 기존 `CHANGELOG.md` 등을 `system/`으로 이동.
3.  **도메인 히스토리 파일 생성**: 현재 존재하는 주요 Book(`order-system.md` 등)에 대응하는 빈 히스토리 파일 생성.
4.  **문서 업데이트**: `ATLAS.md` 및 `structure.md`에 히스토리 이원화 정책 반영.
