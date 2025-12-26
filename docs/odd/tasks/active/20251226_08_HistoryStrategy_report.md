# 오더 리포트: 히스토리 전략 세분화 (History Strategy Refinement)

## 1. 개요 (Overview)
- **오더 ID**: 20251226_08_HistoryStrategy
- **수행 기간**: 2025-12-26
- **목표**: ODD 시스템의 히스토리 관리 체계를 "시스템(코드)"과 "도메인(지식)"으로 분리하여, 지식의 진화 맥락을 명확히 보존함.

## 2. 변경 사항 (Changes)

### 2.1. 히스토리 구조 이원화 (Restructured History)
`docs/odd/history/` 디렉토리를 다음 두 가지 목적별 하위 디렉토리로 분리하였습니다.

1.  **`system/` (System History)**
    *   **대상**: 코드베이스, 아키텍처, 릴리즈 노트, 라이브러리 의존성 등 기술적 변경.
    *   **내용**: 기존의 `CHANGELOG.md` 및 날짜별 시스템 로그가 이곳으로 이동되었습니다.
    *   **질문**: "이 기능이 언제 추가되었지?", "버전 0.9.0 변경사항이 뭐지?"

2.  **`domain/` (Domain History)**
    *   **대상**: 비즈니스 정책, 도메인 지식, 설계 의도(Why)의 변경.
    *   **내용**: `books/domain/*.md` 파일들과 대응되는 변경 이력 파일들 (예: `order-system.md`).
    *   **질문**: "왜 오더 포맷을 JSON에서 Markdown으로 바꿨지?", "언어 정책이 언제부터 이원화되었지?"

### 2.2. 문서 및 템플릿 업데이트
- **ATLAS.md**: 히스토리 섹션의 정의를 업데이트하고, System/Domain 분리 원칙을 명시하였습니다.
- **Structure.md**: 파일 구조 설명에 `history/`의 세부 구조를 반영하였습니다.
- **odd-template**: 새로운 히스토리 구조가 신규 설치 시에도 적용되도록 동기화하였습니다.

## 3. 결론 (Conclusion)
이제 ODD 시스템은 코드의 변화뿐만 아니라 **"생각의 변화"**를 체계적으로 기록할 수 있는 준비가 되었습니다. 앞으로 `books/`의 내용을 수정할 때는, 단순한 git commit message를 넘어 `history/domain/`에 그 배경을 기록함으로써 "망각 없는 개발"을 실현할 것입니다.

## 4. 향후 과제 (Future Works)
- `history/domain/`에 실제로 내용을 채워넣는 습관(Workflow)을 정착시켜야 합니다.
- Book 수정 시 History 업데이트를 강제하거나 유도하는 프로세스 점검이 필요할 수 있습니다.
