---
type: documentation
version: "v1.1.1"
category: Reference
---

# 🔍 ODD Reference (참조 정보)

> **"지식을 원자화(Atomization)하고 연관성(Relatedness)으로 연결합니다."**

이곳은 프로젝트의 모든 **현재 지식**과 **기준**이 보관되는 곳입니다. ODD v1.1.1부터는 소규모 논문 단위의 원자적 문서와 문서 간의 연관성 점수를 통해 지식을 관리합니다.

---

## 📂 Reference Structure (참조 구조)

### 1. ⚙️ [Core](./core/) (핵심 구성 요소)
- **Status**: ODD 시스템 자체를 구성하는 요소들의 정의.
- **Content**: Order, Progress, Task, Relatedness Guideline 등 시스템 운영 지침.

### 2. 📋 [Summaries](./summaries/) (지식 원자)
- **Status**: 도메인 및 기술 지식의 원자적 요약본.
- **Content**: 소국적(Granular)으로 쪼개진 비즈니스 로직, 아키텍처, 데이터 모델 등.

### 3. ⚖️ [Rules](./rules/) (규칙)
- **Standard**: 개발 시 지켜야 할 컨벤션 및 에이전트 행동 지침.
- **Content**: 코딩 스타일, 에러 처리 규칙, ODD 운영 프로토콜 등.

---

## 🔗 Relatedness & Language Distance
모든 레퍼런스 문서는 상단 메타데이터에 `relatedness` (0.0 ~ 1.0) 값을 가집니다.
- **값이 클수록 더 높은 연관성**을 의미하며, AI는 작업 시 연관된 문서들을 묶음(Cluster)으로 참조해야 합니다.

## 👩‍🏫 AI 에이전트 지침

1. **원자적 참조**: 필요한 정보가 담긴 가장 작은 단위의 문서를 찾아 정밀하게 참조하십시오.
2. **연관성 추적**: 현재 문서와 연관성 점수가 높은 다른 레퍼런스들을 함께 검토하여 맥락을 파악하십시오.
3. **지식 최신화**: 작업 완료 후 변경된 지식은 반드시 원자적 단위로 쪼개어 `summaries/`에 업데이트하십시오.
