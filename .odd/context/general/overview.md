# 📖 ODD Project Overview

> **"Curing AI Amnesia in Software Development"**
> **"소프트웨어 개발에서 AI의 기억 상실증을 치료하다."**

## 1. Description (정의)
**ODD (Order-Driven Development)**는 AI 에이전트와의 협업을 전제로 설계된 새로운 개발 방법론이자 시스템입니다.
AI가 프로젝트의 맥락(Context)을 잃지 않고, 인간 개발자와 지속 가능하게 협업할 수 있도록 **기억(Memory)**을 체계적으로 관리합니다.

## 2. Core Philosophy (핵심 철학)

### A. The Memory Problem (문제 의식)
대부분의 AI 코딩 세션은 "대화창을 닫으면" 사라집니다. 다음 세션에서 AI는 프로젝트가 어떤 상태인지, 지난번에 무슨 논의를 했는지 잊어버립니다. 이를 우리는 **"AI 기억 상실증(AI Amnesia)"**이라고 부릅니다.

### B. The ODD Solution (해결책)
우리는 뇌과학적 모델을 차용하여 파일 시스템에 **영구적인 기억 장치**를 구축했습니다.

1.  **Tasks (Working Memory)**: 현재 작업 중인 내용을 담는 단기 기억입니다. (RAM)
2.  **Books (Library)**: 프로젝트의 현재 상태와 지식을 담는 장기 기억입니다. (SSD) - *현행화*
3.  **History (Archive)**: 변경 내역과 경험을 보존하는 불변의 역사입니다. (ROM) - *기록*

## 3. Key Features (주요 기능)
-   **Markdown Order System**: 명확한 작업 지시서(Order)를 통해 오해 없는 협업을 보장합니다.
-   **Single Source of Truth (ATLAS)**: 프로젝트의 헌법(`ATLAS.md`)을 통해 에이전트의 페르소나와 규칙을 통제합니다.
-   **Self-Correction**: 작업이 끝날 때마다 리포트(Report)를 쓰고, 스스로 지식(Book)을 업데이트하여 진화합니다.
