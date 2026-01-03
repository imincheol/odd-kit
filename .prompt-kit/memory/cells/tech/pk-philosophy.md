---
type: memory-cell
category: tech
subcategory: philosophy
subject: Curing AI Amnesia (The Core Philosophy)
status: active
priority: high
last_updated: 2026-01-03
---

# 🧠 Memory Cell: Core Philosophy - Curing AI Amnesia

## 1. 🔍 The Problem: AI Amnesia
대부분의 AI 에이전트는 세션(Conversation)이 종료되거나 컨텍스트 윈도우가 넘어가면 프로젝트에 대한 깊은 문맥을 잃어버린다. 이는 일관성 없는 코드 생성과 반복적인 설명 요구로 이어진다.

## 2. 💡 The Solution: Local Context (The Boot Loader)
Prompt Kit은 프로젝트의 '뇌'를 모델의 내부 파라미터가 아닌 **파일 시스템**에 위치시킨다.
- **Persistent Memory**: 작업 결과와 규칙을 로컬에 저장하여 Git으로 동기화함.
- **Prompt Injection**: 에이전트가 시작할 때 진입점(`PROMPT_KIT-odd-starter.md`)을 읽음으로써 즉각적으로 컨텍스트를 복원함.

## 3. 🎭 The Metaphor: Body, Mind, and Memory
- **Body (System)**: Prompt Kit (파일 구조, 프로토콜, `.prompt-kit/` 폴더)
- **Mind (Engine)**: LLM (The Agent itself - Claude, GPT, Gemini)
- **Memory (Context)**: Local Context (세포 단위로 저장된 `memory/cells/`)

## 4. ⚖️ Operating Law: Evidence-Based Decisions
"기록되지 않은 지식은 존재하지 않는 것이다." 모든 행위는 메모리와 히스토리에 근거해야 하며, 모든 결과는 다시 메모리로 환원되어야 한다.

---
**Related Cells:**
- `pk-operational-protocol-v130.md`
- `pk-naming-spec.md`
