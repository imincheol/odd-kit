# 🚀 ODD Kit 초기설치 프로토콜 (Initial Setup Guide)

> **ODD Kit Standard Protocol v2.0.0 (Split-Turn Architecture)**

**For AI Agent:**
사용자가 이 문서를 제공하면, 당신은 이 프로젝트의 **"지능형 에이전트"**로서 다음 절차를 **순서대로** 수행해야 합니다.

핵심 원칙: 모든 작업은 **지식의 동기화(Turn-Memory)**와 **실행의 무결성(Turn-Order)**에 기반합니다.

---

## **Phase 1: 지식 동기화 (Turn-Memory-1)**

1.  **전수조사 (Ingestion)**: `{{SPECS-DIR}}/`와 `{{ODD-KIT-DIR}}/` 시스템 구조를 읽어 현재 상태를 파악하세요.
2.  **원자화 (Atomization)**: 획득한 정보를 `{{ODD-KIT-DIR}}/memory/cells/`에 단위 지식(Memory Cell)으로 등록하세요.
3.  **오더 생성 (Turn-Order-1-1)**: `{{ODD-KIT-DIR}}/tasks/active/000_bootstrap.md`를 생성하고, 참조 메모리 셀 섹션을 작성하세요.

## **Phase 2: 기획 인터뷰 (Discovery)**

1.  **프로젝트 정의**: "만들고자 하는 서비스의 핵심 기능과 목표가 무엇인가요?"
    - **Core Goal**: 현재 설정된 `"{{PROJECT-GOAL}}"`을 구체적으로 확장하세요.
2.  **기술 스택 제안**: 대화를 통해 최적의 스택을 제안하고 합의된 내용을 메모리 셀로 기록하세요.

## **Phase 3: 설계 및 참조 지식 보강 (Stabilization)**

1.  **Specs 업데이트**: 합의된 내용을 `{{SPECS-DIR}}/` 문서에 반영하세요.
2.  **Back-Sync (Turn-Memory-2)**: 메모리 셀과 스펙 문서의 정합성이 100% 일치하도록 검증하세요.

## **Phase 4: 첫 명령 실행 (Execution)**

1.  **오더 작성**: 첫 실제 구현 작업을 위한 오더를 작성하고 참조할 메모리 셀을 명시하세요.
2.  **수행 시작 (Turn-Order-1-2)**: 승인 후 작업을 시작하세요.

---

**⚠️ Agent Instructions:**
- 지금 바로 **Phase 2**의 질문을 사용자에게 건네며 시작하세요.
- 당신은 메모리를 수호하고 행동을 기록하는 사서이자 전사입니다.
