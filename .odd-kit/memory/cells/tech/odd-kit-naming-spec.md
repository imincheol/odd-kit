---
type: memory-cell
category: tech
subcategory: architecture
subject: Automatic Context Injection & Naming Convention
status: active
priority: critical
last-updated: 2026-01-04
revision: "v2.0.0"
---

# 🧠 Memory Cell: ODD-KIT Auto-Context & Naming Spec

## 1. 🔍 Context Identity Principle
에이전트는 자신이 어떤 프로젝트 환경에 있는지 **파일명만으로도 즉각 인지**할 수 있어야 한다.

- **Standard**: 진입점 파일 명명 규칙 -> `ODD-KIT-{{PROJECT-NAME}}.md`
- **Separator Rule**: 모든 파일명 및 문서 내 ID 구분자는 하이픈(`-`)을 사용한다. (언더바 `_` 사용 금지)
- **Turn Naming Rule**: 모든 턴 시스템 단계는 숫자 축약(`Turn-1`)이 아닌 **직관적 한글 명칭(Korglish)**을 사용한다.
    - `Turn-Memory-0` -> `턴-초기화`
    - `Turn-Memory-1` -> `턴-전체-메모라이즈`
    - `Turn-Memory-2` -> `턴-스펙반영`
    - `Turn-Order-1-1` -> `턴-태스크-오더`
    - `Turn-Order-1-2` -> `턴-태스크-프로그레스`
    - `Turn-Order-1-3` -> `턴-태스크-리포트`
    - `Turn-Order-2` -> `턴-태스크-메모라이즈`
- **Rationale**: 멀티 프로젝트 환경에서 에이전트의 작업 메모리가 섞이는 것을 방지하고, 특정 프로젝트의 SSOT(Single Source of Truth)를 명확히 식별하기 위함. 하이픈은 URL 파라미터 및 검색 가독성에서 언더바보다 우수함.

## 2. ⚡ Installer Automation Spec (Bootstrap)
설치 스크립트(`install.sh`)는 단순 설치를 넘어 **Context Injection**의 역할을 수행한다.

- **Config Reading**: `.odd-kit/.odd-kit-config`에서 현재 설정을 로드한다.
- **Dynamic Generation**:
    - **Standard**: 진입점 파일 명명 규칙 -> `ODD-KIT-PROMPT-{{PROJECT-NAME}}.md`
    1. 설정이 없을 경우 현재 디렉토리명을 기반으로 프로젝트명을 자동 제안한다.
    2. 생성된 프로젝트명을 사용하여 `ODD-KIT-PROMPT-{{PROJECT-NAME}}.md` 파일을 물리적으로 생성한다.
- **Placeholder Sync**: 모든 시스템 파일(.md) 내의 `{{PROJECT-NAME}}`, `{{ODD-KIT-PROMPT-NAME}}`, `{{ODD-KIT-DIR}}` 등을 실제 값으로 일치시켜야 한다.

## 3. 🛡️ Integrity Protection
- 이 규칙은 `.odd-kit/memory/cells/tech/odd-kit-system-v200.md`보다 상위의 **설계 철학**이며, 설치 로직의 변경은 반드시 이 메모리 셀의 업데이트를 동반해야 한다.
- 에이전트는 설치나 업데이트 명령을 받았을 때, 이 셀을 먼저 로드하여 **'성공의 정의(Definition of Success)'**를 확인해야 한다.

---
**Related Cells:**
- `odd-kit-architecture-v200.md`
- `odd-kit-system-v200.md`
