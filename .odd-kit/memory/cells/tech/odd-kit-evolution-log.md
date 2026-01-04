---
type: history-log
category: tech
subject: Project Evolution & Decision Log
last-updated: 2026-01-04
revision: "v2.0.0"
---

# 📜 Memory Cell: ODD Kit Evolution Log

## 1. [2026-01-04] Major Shift: v2.0.0 "Trust-Free" Rebirth
- **Decision**: "Prompt Kit" 브랜딩 폐기 및 **"ODD Kit v2.0.0"** 공식 명칭 채택.
- **Context**: AI 에이전트의 임의적 판단과 기억 누수를 원천 차단하기 위해 **불신 기반 프로토콜(Trust-Free)** 도입 결정.
- **Structural Change**:
    - 설계(docs), 배포(template), 엔진(.odd-kit)의 **3대 기둥(3-Pillar)** 위계 확립.
    - 부트 로더를 한 장으로 통합하여 에이전트의 초기 로딩 부하 감소.
- **Rationale**: 에이전트에게 자율성을 주는 것보다, 명시적인 '오더(Order)'와 '보고(Report)' 체계에 가두는 것이 프로젝트 안정성에 더 기여한다는 것을 깨달음.

## 2. [2026-01-04] Knowledge Integration
- **Decision**: `Reference/` 폴더 전면 폐기 및 모든 규칙의 **Memory Cell** 통합.
- **Context**: 에이전트가 Rules와 Memory를 별개로 인식하여 발생하는 컨텍스트 분열을 방지하기 위함.

## 3. [2026-01-03] Operational Protocol Violation & Recovery
- **Issue**: 오더 수행 중 초기 계획을 임의로 수정(Mutation)하고 승인 없이 아카이빙 처리함.
- **Recovery**: 모든 판단 논리를 물리적 파일로 남기는 **Explicit-Based** 원칙 강화. 성공적인 복구 과정을 통해 Turn-Memory 시스템의 필요성 재확인.

---
*Verified by History: `.odd-kit/history/tasks/2026/01/04/`*
