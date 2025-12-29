# 🧠 The Memory Model (메모리 모델)

> **"기억하는 방식이 곧 존재의 방식이다."**
> ODD 시스템은 인간의 뇌 구조를 모방하여 설계되었습니다.

## 1. Structure (구조)

### 📍 Tasks (Working Memory - 작업 기억)
- **비유**: 책상 위, RAM
- **성격**: 휘발성, 현재 진행 중인 작업.
- **위치**: `docs/odd/tasks/`
- **행동**: 작업을 마치면 책상을 치워야(Archive) 합니다.

### 📚 Books (Library - 장기 기억/지식)
- **비유**: 도서관 서가, 위키(Wiki), SSD
- **성격**: 가변성(Mutable), 현행화된 상태(Current State).
- **위치**: `docs/odd/books/`
- **규칙**:
    - "지금 어떻게 동작해?"라는 질문에 답해야 합니다.
    - 예전 내용은 지우고, 최신 내용으로 덮어씁니다. (Overwrite)
    - 서가는 주제별로 분류됩니다 (`domain`, `tech`, `general`).

### 📜 History (Chronicles - 일화 기억/역사)
- **비유**: 역사책, 일기장, ROM
- **성격**: 불변성(Immutable), 시계열 기록(Time-series).
- **위치**: `docs/odd/history/`, `docs/odd/archive/`
- **규칙**:
    - "우리가 왜 이런 결정을 했지?"라는 질문에 답해야 합니다.
    - 절대 지우지 않고 뒤에 덧붙입니다. (Append Only)

## 2. Information Flow (정보의 흐름)
데이터는 다음과 같이 순환하며 지혜가 됩니다.

1.  **Input**: 사용자의 요구사항이 `Tasks`에 오더로 등록됩니다.
2.  **Process**: 작업을 수행하며 로그가 `Tasks`에 쌓입니다.
3.  **Output**: 작업이 완료되면 결과물(`Report`)이 나옵니다.
4.  **Archive**: 결과물은 `History/Archive`로 이동하여 굳어집니다. (경험 축적)
5.  **Refine**: 사서가 그 경험에서 유효한 정보를 추출하여 `Books`를 업데이트합니다. (지식 습득)
6.  **Feedback**: 업데이트된 `Books`는 다음 작업(`Tasks`)의 Context가 됩니다.
