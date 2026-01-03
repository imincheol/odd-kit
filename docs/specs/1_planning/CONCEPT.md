# 🧠 Concept: Prompt Kit & Local Context

> **Prompt Kit v1.2.1**
> "The brain of your AI Agent lives in your file system."

## 1. Core Philosophy (핵심 철학)
**"Curing AI Amnesia (AI 건망증 치료)"**
대부분의 AI 코딩 어시스턴트는 세션이 끝나면 문맥을 잃어버립니다. Prompt Kit은 프로젝트의 핵심 정보(Context)를 로컬 파일 시스템(`pk-system`)에 `Memory Cell` 형태로 저장하여, AI가 **영속적인 기억(Persistent Memory)**을 갖도록 합니다.

### The Metaphor (Prompt Kit Metaphor)
- **Body (System)**: Prompt Kit (파일 구조, 프로토콜)
- **Mind (Engine)**: LLM (Claude, GPT, Gemini)
- **Memory (Context)**: Local Context (`.prompt-kit/memory`)

## 2. Key Features
1.  **Local Context Manager**: 외부 서버 없이 로컬 파일(`MD`/`JSON`)로 컨텍스트 관리.
2.  **Evidence-Based Decisions**: 모든 구현은 `history`와 `memory`에 근거해야 함.
3.  **Self-Correction**: 체크리스트와 4-Turn Cycle을 통해 스스로 오류를 수정.

## 3. 4-Turn Lifecycle (작업 주기)
컨텍스트 효율성을 위한 4단계 작업 프로세스.

| Turn | Phase | Action |
| :--- | :--- | :--- |
| **1** | **Planning** | Order 생성, 작업 범위 분석. |
| **2** | **Execution** | Checklist 생성 및 코드 구현 (Update Progress). |
| **3** | **Micro-Update** | Report 작성, Task Archive, Memory 즉시 반영. |
| **4** | **Macro-Update** | 전체 History/Memory 동기화 (별도 세션). |
