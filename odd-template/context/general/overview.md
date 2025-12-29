# 📖 ODD Project Overview

> **"Curing AI Amnesia in Software Development"**
> **"소프트웨어 개발에서 AI의 기억 상실증을 치료하다."**

## 1. Description (정의)
**ODD (Order-Driven Development)**는 AI 에이전트와의 협업을 전제로 설계된 새로운 개발 방법론이자 시스템입니다.
AI가 프로젝트의 맥락(Context)을 잃지 않고, 인간 개발자와 지속 가능하게 협업할 수 있도록 **기억(Memory)**을 체계적으로 관리합니다.

## 2. Core Philosophy (핵심 철학)

### A. The Memory Problem (문제 의식)
대부분의 AI 코딩 세션은 "대화창을 닫으면" 사라집니다. 다음 세션에서 AI는 프로젝트가 어떤 상태인지, 지난번에 무슨 논의를 했는지 잊어버립니다. 이를 우리는 **"AI 기억 상실증(AI Amnesia)"**이라고 부릅니다.

### B. The ODD Solution (해결책: COA 아키텍처)
우리는 뇌과학적 모델을 차용하여 파일 시스템에 **영구적인 맥락 장치**를 구축했습니다.

1.  **Context (맥락)**: 프로젝트의 현재 지능과 배경을 담는 장기 기억입니다. (The Brain)
2.  **Order (명령)**: 맥락을 바탕으로 변화를 만들어내는 실행 지침입니다. (The Action)
3.  **Archive (증거)**: 수행된 모든 작업의 원본 기록과 스냅샷입니다. (The Evidence)

---

## 3. Key Features (주요 기능)
-   **COA Framework**: 맥락(Context) 없이는 명령(Order)도 없다는 원칙을 통해 AI의 무분별한 행동을 방지합니다.
-   **The Auditor Persona**: 지식을 단순히 보관하는 '사서'를 넘어, 맥락의 무결성을 감찰하고 정제하는 **감찰관(Auditor)** 시스템을 도입했습니다.
-   **Single Source of Truth (ATLAS)**: 프로젝트의 헌법(`ATLAS.md`)을 통해 모든 에이전트의 정체성을 동기화합니다.
