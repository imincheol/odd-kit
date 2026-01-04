---
id: "20260103_03_RefineGranularityToNeuralNet"
odd-version: "v1.1.1"
type: "refactor"
status: "completed"
priority: "high"
created-at: "2026-01-03"
summary: "Memory Cell 가이드라인을 '신경망 구조' 및 '관심사 중심'으로 고도화 (Hotfix)"
context:
  - ".odd/memory/core/cell-granularity-guideline.md"
  - ".odd/memory/README.md"
  - ".odd/tasks/active/20260103-02-CellGranularityGuideline-report.md"
---

# 📋 Order: Granularity 가이드라인 고도화 (Neural Network Model)

## 1. Context & Objective
- **이전 상태**: Order 02에서 정량적 기준(300~800줄) 중심의 가이드라인 수립.
- **피드백**: 사용자가 "크기"보다는 "관심사의 분리"와 "뇌의 신경망(Synapse) 구조"에 가까운 모델을 원함.
- **필요성**: 단순 분할이 아닌, 다차원 연관성 네트워크 형성을 위한 가이드라인 재작성 필요.

## 2. Todo List (Completed)
- [x] **가이드라인 전면 재작성 (Neural Network Edition)**
    - 정량적 기준 → **관심사 중심(Concern-Driven)**으로 변경
    - "살아있는 개요 문서"와 "세부 Cell" 개념 도입
    - "교차 관심사 추출" 및 "다차원 연결" 패턴 정의
- [x] **Memory README 업데이트**
    - "컨텍스트 효율성(Context Efficiency)" 개념 추가 (I/O vs 정밀도 Trade-off)
- [x] **Root README 업데이트**
    - 핵심 가치에 컨텍스트 효율성 반영

## 3. Rationale (근거)
- 파일 I/O 비용이 들더라도, 필요한 부분만 정밀하게 로드하여 컨텍스트 낭비를 줄이는 것이 LLM 에이전트 환경에서 더 유리함.
