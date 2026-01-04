---
id: "20260103_01_AtomizeReferenceSystem"
order_id: "20260103_01_AtomizeReferenceSystem"
status: "in_progress"
started_at: "2026-01-03"
last-updated: "2026-01-03"
---

# 🕒 Progress: ODD 레퍼런스 시스템 원자화

## 1. 현재 진행 상황
- [x] ODD 레퍼런스 시스템 체계 재설계 (v1.1.1 Atomic Reference)
- [x] `.odd/reference/core/` 디렉토리 신설 및 원자적 문서 생성
    - [x] relatedness-guideline.md (연관성 가이드)
    - [x] order.md
    - [x] progress.md
    - [x] report.md
    - [x] task.md
    - [x] active.md
    - [x] history.md
    - [x] reference.md
    - [x] prompt.md
    - [x] odd-prompt.md
    - [x] readme.md
- [x] `ODD-KIT-PROMPT.md` 업데이트 (버전 v1.1.1 상향 및 구조 변경 반영)
- [x] 루트 `README.md` 업데이트 (원자적 아키텍처 다이어그램 및 설명 추가)
- [x] `.odd/reference/README.md` 업데이트

## 2. 남은 작업
- [x] 기존 `summaries/` 내 문서 메타데이터 업데이트 (relatedness 추가)
- [ ] 구체적인 관련 문서들(Domain/Tech)의 추가 원자화 (선택 사항, 필요 시 수행)

## 3. 발견된 이슈 및 인사이트
- '거리' 대신 '연관성'을 사용하여 숫자가 클수록 가깝다는 직관을 부여함.
- `relatedness` 메타데이터를 통해 AI가 관련 컨텍스트를 클러스터링하여 로딩할 수 있는 기반 마련.
