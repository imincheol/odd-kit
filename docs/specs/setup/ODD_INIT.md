# 🚀 ODD 초기설치 프로토콜 (Initial Setup Guide)

> **ODD Standard Protocol v1.0.0**
>
> **For AI Agent:**
> 사용자가 이 문서를 제공하면, 당신은 **"ODD 시스템 관리자"**로서 다음 절차를 **순서대로** 수행해야 합니다.
> 가장 중요: 모든 작업은 **Order(명령서)와 Progress(진행상황)**에 기반하여 기록되어야 합니다.

---

## **Phase 0: 질서 부여 (Self-Registration)**

가장 먼저, 이 구축 작업 자체를 시스템에 등록하여 추적 가능하게 만드십시오.

1. **오더 생성**: `docs/specs/tasks/active/000_bootstrap.md` 파일을 생성하십시오.
   - **Type**: `setup`
   - **Goal**: "Curing AI Amnesia with COA Architecture 프로젝트 초기 구축 및 ODD 시스템 활성화"
   - **Plan**: 1. 환경 설정 확인, 2. 기획 인터뷰, 3. 스펙 문서화, 4. 로드맵 수립
2. **환경 설정 확인**: `docs/specs/.odd_config` 파일을 읽어 현재 프로젝트의 설정(Specs 경로: `` 등)을 재확인하십시오.
3. **진행 상황 초기화**: `docs/specs/tasks/active/000_bootstrap_progress.md`를 생성하고 상태를 `IN_PROGRESS`로 설정하십시오.
4. **로드맵 등록**: `docs/specs/tasks/roadmap.md` 최상단에 `### [Phase 0] Initialization` 섹션을 만들고, 이 태스크(`000_bootstrap`)를 최우선 순위로 체크박스(`[ ]`)와 함께 등록하십시오.

## **Phase 1: 기획 인터뷰 (Discovery)**

이제 오더가 생성되었으니, 공식적으로 작업을 시작합니다. `progress.json`에 로그를 남기며 진행하세요.

1. **프로젝트 정의**: "만들고자 하는 서비스나 어플리케이션의 핵심 기능과 목표가 무엇인가요?"
   - **Core Goal**: 현재 설정된 목표인 `".odd"`에서 더 구체화하거나 변경할 내용이 있는지 확인하십시오.
2. **기술 스택 제안**: (사용자의 답변 분석 후) 최적의 기술 스택(프레임워크, 언어 등)을 제안하고 합의하세요.

## **Phase 2: 스펙 문서화 (Specification)**

합의된 내용을 바탕으로 `/` 폴더를 채웁니다.

1. **`/README.md` 작성**: 프로젝트의 개요, 목표, 기술 스택을 요약합니다.
2. **하위 스펙 작성**:
   - `1_planning/`: 요구사항 정의서, 사용자 스토리 등을 작성합니다.
   - `2_design/`: (필요하다면) UI/UX 구조나 디자인 가이드를 작성합니다.
   - `3_markup/` & `4_development/`: 개발 컨벤션이나 아키텍처를 정의합니다.

## **Phase 3: 로드맵 수립 (Roadmap)**

구체화된 스펙을 실행 가능한 단위로 쪼개야 합니다.

1. **`docs/specs/tasks/roadmap.md` 업데이트**:
   - 전체 개발 과정을 마일스톤 단위로 나누십시오.
   - 당장 시작해야 할 작업들을 구체적인 Task로 정의하십시오.
   - 각 Task의 우선순위를 정하십시오.

## **Phase 4: 첫 번째 오더 생성 (First Order)**

1. **오더 작성**: 로드맵의 첫 번째 Task를 수행하기 위한 `docs/specs/tasks/active/001_init_project_order.md` 를 작성하십시오.
2. **승인 요청**: 사용자에게 오더 내용을 보여주고 **"승인(Approve)"**을 요청하십시오.

## **Phase 5: 시스템 유지보수 (Maintenance)**

1. **설치 스크립트 활용**: 앞으로 시스템 업데이트가 필요할 때는 반드시 `docs/specs/setup/{{INSTALL_NAME}}` 명령어를 사용하여 이 프로젝트 전용 설정을 유지하십시오.
2. **지속적 학습**: 매 세션 종료 시 사서(Librarian) 페르소나를 통해 `docs/specs/books/` 를 최신화하는 것을 잊지 마십시오.

---

**⚠️ Agent Instructions:**
- 지금 바로 **Phase 1**의 질문을 사용자에게 건네며 시작하세요.
- 당신은 이 프로젝트의 **"Curing AI Amnesia with COA Architecture"** 담당 에이전트임을 명심하십시오.
