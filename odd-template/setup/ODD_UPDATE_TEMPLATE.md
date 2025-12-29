# 🔄 ODD 시스템 업데이트 프로토콜 (System Update Guide)

> **ODD Standard Protocol v1.0.0**
>
> **For AI Agent:**
> 사용자가 이 문서를 제공하면, 당신은 **"ODD 시스템 관리자"**로서 기존 프로젝트를 ODD 체계에 맞게 정리(Refactoring/Organizing)해야 합니다.
> 모든 작업은 **Order(명령서)와 Progress(진행상황)**에 기반하여 기록되어야 합니다.

---

## **Phase 0: 질서 부여 (Self-Registration)**

가장 먼저, 이 마이그레이션 작업 자체를 시스템에 등록하여 추적 가능하게 만드십시오.

1. **오더 생성**: `{{ODD_DIR}}/tasks/active/000_update_v1_0_0.md` 파일을 생성하십시오.
   - **Type**: `setup/migration`
   - **Goal**: "{{PROJECT_NAME}} 프로젝트 분석 및 ODD 시스템(v1.0.0)으로의 최신화"
   - **Plan**: 1. 현황 분석, 2. 레거시 정리, 3. 지식 이관(COA), 4. 로드맵 현행화
2. **환경 설정 확인**: `{{ODD_DIR}}/.odd_config` 파일을 읽어 현재 프로젝트의 경로 설정을 재확인하십시오.
3. **로드맵 등록**: `{{ODD_DIR}}/tasks/roadmap.md` 최상단에 `### [Phase 0] v1.0.0 Migration` 섹션을 만들고, 이 태스크를 최우선 순위로 등록하십시오.

## **Phase 1: 시스템 정제 및 현황 분석 (Cleanup & Analysis)**

### 1-1. 시스템 환경 및 레거시 분석
1. **격리 원칙 준수**: 현재 할당된 `{{ODD_DIR}}` 외부의 다른 ODD 설정에는 절대 간섭하지 마십시오.
2. **레거시 설정 삭제**: 구버전의 `.odd_config`나 `.env` 파일은 분석 완료 후 삭제하십시오.
3. **브릿지 지식 이관 및 폴더 삭제**: 지식 이동(`books/` -> `context/logic/` 등)이 완료되면, 반드시 기존의 `books/`와 `history/` 폴더를 삭제하여 에이전트가 구버전 문서를 참조하지 않도록 원천 차단하십시오. (중요)

### 1-2. 지식의 재구성 (Knowledge Refactoring)
1. **COA 아키텍처 적용**: 지식을 **Context, Order, Archive** 체계로 재분류하십시오.
2. **프로토콜 활성화**: `{{ODD_DIR}}/context/protocols/odd-system.md`를 정독하고 시스템 운영의 새로운 표준을 수립하십시오.

## **Phase 2: 지식 이관 (Knowledge Transfer)**

파편화된 정보를 `{{ODD_DIR}}/context` 하위의 적절한 서가로 모읍니다.

1. **Context 구축**:
   - `logic/domain`: 비즈니스 로직 및 도메인 지식.
   - `logic/tech`: 기술 스택 및 라이브러리 활용법.
   - `general`: 프로젝트 정체성 및 비전.
   - `history`: 주요 결정 사항의 타임라인.
2. **Atlas 등록**: 새로 구성된 맥락들을 `{{ODD_DIR}}/{{ATLAS_NAME}}`에 인덱싱하십시오.

## **Phase 3: 업무 동기화 (Task Sync)**

1. **Roadmap 현행화**: 분석된 현재 진행 상황을 바탕으로 `{{ODD_DIR}}/tasks/roadmap.md`를 업데이트하십시오.
2. **Active Order 생성**: 중단된 작업이 있다면 이를 v1.0.0 형식의 Order로 재작성하십시오.

## **Phase 4: 완료 보고 및 유지보수**

1. **결과 요약**: ODD 시스템으로의 최신화 결과를 요약 보고하십시오.
2. **감찰관(Auditor) 가동**: 매 세션 종료 시 감찰관 페르소나를 통해 지식을 최신화하는 것을 사용자에게 안내하십시오.
3. **업데이트 스크립트 안내**: 앞으로는 `{{ODD_DIR}}/setup/{{INSTALL_NAME}}` 명령어를 사용하여 시스템 무결성을 유지해야 함을 안내하십시오.

---

**⚠️ Agent Instructions:**
- 지금 바로 **Phase 1**의 분석 결과를 사용자에게 보고하며 시작하세요.
- 당신은 이 프로젝트의 **"{{PROJECT_NAME}}"** 담당 **감찰관(Auditor)**임을 명심하십시오.
