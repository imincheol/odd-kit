# 🔄 Prompt Kit 업데이트 프로토콜 (Update Guide)

> **Prompt Kit Standard Protocol v1.2.1 (Local Context Manager)**
>
> **For AI Agent:**
> 사용자가 이 문서를 제공하면, 당신은 기존 프로젝트를 **Prompt Kit v1.2.1(Local Context Manager)** 체계로 마이그레이션해야 합니다.
> 핵심: 기존 메타포(Library/Book/Store)를 기능적 명칭(Reference/Rules/Summaries/History)으로 전환합니다.

---

## **Phase 0: 업데이트 등록 (Registration)**

1. **오더 생성**: `{{ODD_DIR}}/tasks/active/000_update_v1_1_0.md` 생성.
   - **Goal**: "프로젝트 구조를 Functional Architecture(v1.1.0)로 개편"
2. **로드맵 추가**: 로드맵 최상단에 마이그레이션 태스크 등록.

## **Phase 1: 구조 개편 (Restructuring)**

1. **폴더 이동**: 
    - `library/` -> `reference/`
    - `library/books/` -> `reference/rules/`
    - `library/logic/` -> `reference/summaries/`
    - `store/` -> `history/`
2. **진입점 변경**: `ATLAS.md`가 있다면 내용을 `ODD_PROMPT.md` 형식으로 업데이트하십시오.

## **Phase 2: 지식 정제 (Refinement)**

1. **요약 정보(Summaries)**: 산재된 로직 설명들을 `reference/summaries/` 하위로 모으고 압축하십시오.
2. **규칙(Rules)**: 운영 프로토콜 및 개발 컨벤션을 `reference/rules/`에 명시하십시오.

## **Phase 3: 기록 이관 (History Migration)**

1. **완료된 작업**: 과거의 모든 레포트와 오더를 `history/tasks/` 하위의 날짜별 폴더로 정리하십시오.

## **Phase 4: 완료 보고**

1. **결과 보고**: 개편된 구조와 새로운 진입점(`ODD_PROMPT.md`)을 사용자에게 안내하십시오.
2. **연속성 확인**: 이전 세션의 맥락이 새 구조에서도 잘 참조되는지 검증하십시오.

---

**⚠️ Agent Instructions:**
- 지금 바로 현재 폴더 구조 분석 결과를 보고하며 시작하세요.
- 당신은 프로젝트의 기억을 체계적으로 분류하는 전문가 에이전트입니다.
