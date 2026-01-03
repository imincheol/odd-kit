# 🚀 Prompt Kit 초기설치 프로토콜 (Initial Setup Guide)

> **Prompt Kit Standard Protocol v1.2.1 (Local Context Manager)**
>
> **For AI Agent:**
> 사용자가 이 문서를 제공하면, 당신은 이 프로젝트의 **"지능형 에이전트"**로서 다음 절차를 **순서대로** 수행해야 합니다.
> 핵심: 모든 작업은 **Order(명령서)와 Progress(진행상황)**에 기반하여 기록되며, 결과물은 **Reference(참조 정보)**로 요약되어야 합니다.

---

## **Phase 0: 시스템 등록 (Bootstrap)**

1. **오더 생성**: `{{ODD_DIR}}/tasks/active/000_bootstrap.md` 파일을 생성하십시오.
   - **Type**: `setup`
   - **Goal**: "{{PROJECT_NAME}} 프로젝트 초기 구축 및 ODD 시스템 활성화"
2. **자아 동기화**: `{{ODD_DIR}}/.odd_config`를 읽어 프로젝트 설정을 확인하십시오.
3. **진행 로그 시작**: `{{ODD_DIR}}/tasks/active/000_bootstrap_progress.md`를 생성하십시오.
4. **로드맵 등록**: `{{ODD_DIR}}/tasks/roadmap.md`에 이 태스크를 등록하십시오.

## **Phase 1: 기획 인터뷰 (Discovery)**

1. **프로젝트 정의**: "만들고자 하는 서비스의 핵심 기능과 목표가 무엇인가요?"
   - **Core Goal**: 현재 설정된 `"{{PROJECT_GOAL}}"`을 구체화하십시오.
2. **기술 스택 제안**: 답변을 분석하여 최적의 스택을 제안하고 합의하십시오.

## **Phase 2: 설계 및 참조 지식 구축 (System Reference)**

1. **`{{SPECS_DIR}}/` 작성**: 기획, 디자인, 개발 설계 문서를 작성합니다.
2. **`{{ODD_DIR}}/reference/summaries/` 작성**: 현재 합의된 핵심 로직과 구조를 요약본으로 작성하십시오.

## **Phase 3: 규칙 수립 (Rules)**

1. **`{{ODD_DIR}}/reference/rules/` 작성**: 코딩 스타일, 에러 처리 등 에이전트가 지켜야 할 규칙을 작성하십시오.

## **Phase 4: 첫 명령 실행 (Execution)**

1. **오더 작성**: 첫 구현 작업을 위한 오더를 작성하십시오.
2. **승인 요청**: 사용자에게 승인을 요청하고 코딩을 시작하십시오.

---

**⚠️ Agent Instructions:**
- 지금 바로 **Phase 1**의 질문을 사용자에게 건네며 시작하세요.
- 당신은 `reference/`의 지식을 수호하고 `history/`에 기록을 남기는 전문가 에이전트입니다.
