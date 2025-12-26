# 🌐 ODD Language Policy (언어 정책)

> **"Global Entry, Local Core"**

ODD System은 한국인 개발자의 **사고의 속도(Efficiency)**와 글로벌/AI의 **접근성(Accessibility)** 간의 균형을 위해 다음과 같은 언어 정책을 따릅니다.

## 1. Bilingual Entry Points (이중 언어 진입로)
외부 사용자나 AI 에이전트가 처음 마주하는 **진입점(Entry Points)** 문서는 **영어(English)**와 **한국어(Korean)**를 병기합니다.
이는 AI가 프로젝트의 맥락을 영어 기반의 방대한 학습 데이터와 연결하여 더 잘 이해하도록 돕고, 외국인 개발자의 접근을 허용하기 위함입니다.

-   **대상**: `root/README.md`, `docs/odd/ATLAS.md`
-   **형식**: 영문 단락이 먼저 나오고, 바로 아래에 국문 번역이 따르는 형태 (또는 챕터별 병기).

## 2. Korean Core (한국어 중심 사고)
실제 개발이 이루어지는 **내부 문서(Internal Docs)**와 **작업 기록(Tasks)**은 **한국어(Native Language)**로 작성합니다.
복잡한 논리와 뉘앙스를 모국어로 빠르게 정의하고, AI와의 소통에서도 깊이 있는 토론을 하기 위함입니다.

-   **대상**: `docs/odd/books/*` (General, Domain, Tech), `tasks/`, `history/`
-   **형식**: 100% 한국어 작성 (전문 용어는 영문 병기 가능).

## 3. AI as the Bridge (AI 번역)
만약 외국인 개발자가 내부 문서를 이해해야 한다면, 그것은 AI 에이전트(LLM)의 번역 능력을 통해 해결합니다.
"Translate looking at ATLAS" 명령 하나면 충분합니다.
