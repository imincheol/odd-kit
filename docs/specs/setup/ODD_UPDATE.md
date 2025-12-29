# 🔄 ODD 시스템 업데이트 프로토콜 (System Update Guide)

> **ODD Standard Protocol v1.0.0**
>
> **For AI Agent:**
> 사용자가 이 문서를 제공하면, 당신은 **"ODD 시스템 관리자"**로서 기존 프로젝트를 ODD 체계에 맞게 정리(Refactoring/Organizing)해야 합니다.
> 모든 작업은 **Order(명령서)와 Progress(진행상황)**에 기반하여 기록되어야 합니다.

---

## **Phase 0: 질서 부여 (Self-Registration)**

가장 먼저, 이 마이그레이션 작업 자체를 시스템에 등록하여 추적 가능하게 만드십시오.

1. **오더 생성**: `docs/specs/tasks/active/000_migration.md` 파일을 생성하십시오.
   - **Type**: `setup`
   - **Goal**: "Curing AI Amnesia with COA Architecture 프로젝트 분석 및 ODD 시스템(v1.0.0)으로의 이관"
   - **Plan**: 1. 현황 및 환경설정 분석, 2. 레거시 정리, 3. 지식 이관, 4. 업무 동기화
2. **환경 설정 확인**: `docs/specs/.odd_config` 파일을 읽어 현재 프로젝트의 경로 설정을 재확인하십시오. (예: Specs 경로인 `` 확인)
3. **로드맵 등록**: `docs/specs/tasks/roadmap.md` 최상단에 `### [Phase 0] Migration` 섹션을 만들고, 이 태스크(`000_migration`)를 최우선 순위로 체크박스(`[ ]`)와 함께 등록하십시오.

## **Phase 1: 시스템 정제 및 현황 분석 (Cleanup & Analysis)**
이제 오더가 생성되었으니, 공식적으로 작업을 시작합니다. `progress.json`에 로그를 남기며 진행하세요.

### 1-1. 시스템 환경 분석 (Environment Analysis)
가장 먼저, v1.0.0의 유연한 설치 구조를 파악하십시오.
1.  **환경 설정 로드**: `docs/specs/.odd_config`를 읽어 프로젝트명, ODD 루트, Specs 경로 설정을 확인하십시오.
2.  **격리 원칙 준수**: 여러 개의 ODD 폴더(예: `.odd-fe`, `.odd-be`)가 존재할 경우, 현재 할당된 `docs/specs` 외부의 ODD 설정에는 **절대 간섭하지 마십시오.**

### 1-2. 레거시 파일 및 경로 정리 (System cleanup & Path Migration)
가장 먼저, 구버전 시스템의 잔재를 청소하고 새로운 경로 정책으로 지식을 이관하십시오.
1.  **경로 설정 확인**: 현재 설정된 스펙 경로는 ``입니다. 만약 과거에 루트의 `docs/specs`를 고정해서 사용했다면, 해당 내용을 현재 설정된 경로로 이동하거나 참조를 업데이트하십시오.
2.  **레거시 설정 삭제**: 프로젝트 루트의 구버전 `.odd_config`나 `.env` 파일은 현재의 `docs/specs/.odd_config`로 통합되었으므로, 분석 완료 후 삭제하십시오.
4.  **브릿지 지식 이관 및 폴더 삭제**: 지식 이동(`books/` -> `context/logic/` 등)이 완료되면, 반드시 기존의 `books/`와 `history/` 폴더를 삭제하여 에이전트가 구버전 문서를 참조하지 않도록 원천 차단하십시오. (가장 중요)
5.  **전용 스크립트 안내 사용자에게 건네기**: 사용자에게 앞으로는 `docs/specs/setup/{{INSTALL_NAME}}` 명령어를 사용해야 이 프로젝트의 독립된 설정이 유지됨을 안내하십시오.

### 1-3. 지식의 재구성 (Knowledge Refactoring)
마이그레이션은 단순한 파일 이동이 아닙니다.
1.  **프로젝트별 독립 기억 구축**: 과거에 하나의 통으로 관리되던 지식을 현재 프로젝트(**Curing AI Amnesia with COA Architecture**)와 관련된 내용 중심으로 필터링하여 `docs/specs/books/` 에 재배치하십시오.
2.  **공유 진실 연결**: 여러 프로젝트가 공유하는 공통 기획서는 ``를 통해 참조하게 하고, 구현 세부 사항은 해당 ODD의 `books/`로 분리하십시오.

### 1-3. 버저닝 및 동기화 규칙 (Versioning & Sync Rules)
시스템 버전을 변경할 때는 다음 규칙을 엄격히 따르십시오.

1.  **Semantic Versioning (SemVer) 기준**:
    *   **Major (x.0.0)**: 로드맵 Phase 변경, 데이터 구조의 호환성 파괴, 대규모 프로세스 변경 시.
    *   **Minor (0.x.0)**: 새로운 기능(Feature) 추가, 폴더 구조 변경, 새로운 문서 템플릿 추가 시.
    *   **Patch (0.0.x)**: 문서의 오타 수정, 버그 수정, 예제 파일 업데이트 등 단순 변경 시.
2.  **전수 동기화 원칙 (All or Nothing)**:
    *   버전을 올릴 때는 핵심 파일(`README.md`, `ATLAS.md`, `install.sh`)뿐만 아니라, **모든 템플릿(`_template/`)**과 **예제 파일(`*.temp`)**까지 빠짐없이 버전을 통일해야 합니다.
    *   하나라도 버전이 다르면 시스템 무결성이 깨진 것으로 간주합니다.
    *   특히, 히스토리나 리포트의 **형식(Format)**이 변경되면 반드시 버전을 올려야 합니다.

### 1-4. 현황 분석 (Analysis)
1.  **파일 구조 스캔**: 프로젝트의 전체 파일 구조를 읽고 핵심 디렉토리와 파일을 파악하십시오. (예: `src`, `components`, `api` 등)
2.  **기술 스택 식별**: `package.json`, `requirements.txt` 등의 의존성 파일을 분석하여 사용 중인 기술 스택을 파악하십시오.
3.  **히스토리 분석**: 최근 `git log`나 커밋 메시지를 확인하여 현재 진행 중이거나 최근에 완료된 작업이 무엇인지 파악하십시오.

### 1-5. 다중 프로젝트 지식 격리 (Isolated Memory)
본 프로젝트가 모노레포 또는 서비스 분리 형태(`fe`, `be` 등)인 경우 다음 원칙을 고수하십시오.
1.  **메모리 격리**: 현재 오더가 진행 중인 `docs/specs` 외부의 다른 ODD 작업 내역(Order, Books)을 사용자 허가 없이 참조하거나 수정하지 마십시오.
2.  **공유 스펙(Single Truth) 참조**: 다만, `` 내의 기획 문서는 프로젝트 전체의 공통 진실이므로 적극적으로 참조하여 도메인 일관성을 유지하십시오. (특히 `0_origin/`, `1_planning/` 폴더)

## **Phase 2: 지식 이관 (Knowledge Transfer)**

파편화된 정보를 `docs/specs/` 로 모읍니다.

1. **Library 구축 (`docs/specs/books/`)**:
   - 분석한 파일 구조와 기술 스택을 바탕으로 도메인 지식을 정리하십시오.
   - 예: `docs/specs/books/tech/frontend.md` (React, Tailwind 등), `docs/specs/books/domain/user.md` (회원가입, 로그인 로직 등)
   - 각 문서는 단순 나열이 아닌, **"이 프로젝트에서 해당 기술/도메인을 어떻게 다루는지"**에 대한 컨텍스트 위주로 작성하십시오.
2. **Atlas 등록**: 새로 생성된 Book들을 `docs/specs/atlas-Curing AI Amnesia with COA Architecture.md`에 등록하여 인덱싱하십시오.

## **Phase 3: 업무 동기화 (Task Sync)**

진행 중인 업무를 시스템에 등록합니다.

1. **Roadmap 현행화**: 분석된 현재 진행 상황을 바탕으로 `docs/specs/tasks/roadmap.md`의 현황을 업데이트하십시오. 이미 완료된 기능은 체크하고, 예정된 기능은 목록화하십시오.
2. **Pending Task 생성**: 만약 개발이나 수정이 진행 중인 상태라면, 이를 `docs/specs/tasks/active/` 에 새로운 Order로 작성(md)하여 작업을 이어갈 수 있게 하십시오.
1.  **Roadmap 현행화**: 분석된 현재 진행 상황을 바탕으로 `docs/specs/tasks/roadmap.md`의 현황을 업데이트하십시오. 이미 완료된 기능은 체크하고, 예정된 기능은 목록화하십시오.
2.  **Pending Task 생성**: 만약 개발이나 수정이 진행 중인 상태라면, 이를 `docs/specs/tasks/active/` 에 새로운 Order로 작성(md)하여 작업을 이어갈 수 있게 하십시오.

## **Phase 4: 완료 보고 (Report)**

1.  **결과 요약**: ODD 시스템으로 이관된 현황(생성된 책 목록, 로드맵 상태)을 요약하여 사용자에게 보고하십시오.
2.  **다음 행동 제안**: 로드맵을 기반으로 사용자가 다음에 무엇을 하면 좋을지 가이드하십시오.

## **Phase 5: 시스템 유지보수 (Maintenance)**

1.  **설치 스크립트 활용**: 앞으로 시스템 업데이트가 필요할 때는 반드시 `docs/specs/setup/{{INSTALL_NAME}}` 명령어를 사용하여 이 프로젝트 전용 설정을 유지하십시오.
2.  **지속적 학습**: 매 세션 종료 시 사서(Librarian) 페르소나를 통해 `docs/specs/books/` 를 최신화하는 것을 잊지 마십시오.

---

**⚠️ Agent Instructions:**
- 지금 바로 **Phase 1**의 질문을 사용자에게 건네며 시작하세요.
- 당신은 이 프로젝트의 **"Curing AI Amnesia with COA Architecture"** 담당 에이전트임을 명심하십시오.
