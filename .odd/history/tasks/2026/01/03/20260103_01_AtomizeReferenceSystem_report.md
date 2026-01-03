---
id: "20260103_01_AtomizeReferenceSystem"
order_id: "20260103_01_AtomizeReferenceSystem"
status: "completed"
completed_at: "2026-01-03"
summary: "ODD 레퍼런스 시스템 원자화 및 연관성(Relatedness) 기반 개편 완료"
---

# 📄 Report: ODD 레퍼런스 시스템 원자화

## 1. 개요
사용자의 요청에 따라 ODD 시스템의 지식 관리 방식인 '레퍼런스'를 원자화(Atomization)하고, 문서 간의 '연관성(Relatedness)' 개념을 도입하여 시스템을 v1.1.1로 상향 업데이트하였습니다.

## 2. 주요 변경 사항

### A. 레퍼런스 원자화 (Core Components)
- `.odd/reference/core/` 하위에 11개의 원자적 레퍼런스 문서 생성.
- Order, Progress, Report, Task, Active, History, Reference, Prompt, Readme, ODD Prompt, Relatedness Guideline.
- 각 문서는 독립적인 논문과 같은 구조를 가지며 명확한 정의와 역할을 기술함.

### B. 연관성(Relatedness) 시스템 도입
- '언어의 거리' 개념을 역전시킨 연관성 점수(0.0 ~ 1.0) 정의.
- 모든 레퍼런스 문서 상단 메타데이터에 `relatedness` 필드 포함.
- 문서 내에 상호 참조(References) 섹션을 두어 지식의 연결망 형성.

### C. 메인 진입점 및 가이드 동기화
- `ODD_PROMPT.md`: 원자화된 구조를 반영하고 에이전트가 연관성을 고려하도록 지침 수정.
- `README.md`: 신규 아키텍처 다이어그램(v1.1.1) 및 핵심 가치 업데이트.
- `.odd/reference/README.md`: 원자적 참조 및 연관성 추적 지침 추가.

## 3. 기대 효과
- **정밀한 컨텍스트 주입**: AI가 방대한 요약 문서 대신 필요한 원자적 단위의 지식만 로드할 수 있어 토큰 절약 및 정확도 향상.
- **지식의 유기적 연결**: 연관성 점수를 통해 AI가 스스로 관련 지식을 탐색하고 클러스터링 가능.
- **확장 용이성**: 새로운 기술이나 도메인 지식을 추가할 때 기존 문서를 수정하지 않고 새로운 원자를 추가하는 방식으로 확장 가능.

## 4. 향후 과제
- 프로젝트 진행에 따라 `summaries/` 폴더 내의 도메인 지식들도 지속적으로 원자화 필요.
- 연관성 점수를 자동 계산하거나 제안하는 툴링 검토.
