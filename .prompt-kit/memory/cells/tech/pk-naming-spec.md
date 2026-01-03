---
type: memory-cell
category: tech
subcategory: architecture
subject: Automatic Context Injection & Naming Convention
status: active
priority: critical
last_updated: 2026-01-03
---

# 🧠 Memory Cell: PK Auto-Context & Naming Spec

## 1. 🔍 Context Identity Principle
에이전트는 자신이 어떤 프로젝트 환경에 있는지 **파일명만으로도 즉각 인지**할 수 있어야 한다.

- **Rule**: 진입점 파일은 반드시 `PROMPT_KIT-odd-starter.md` 형태여야 한다.
- **Rationale**: 멀티 프로젝트 환경에서 에이전트의 작업 메모리가 섞이는 것을 방지하고, 특정 프로젝트의 SSOT(Single Source of Truth)를 명확히 식별하기 위함.

## 2. ⚡ Installer Automation Spec (Bootstrap)
설치 스크립트(`install.sh`)는 단순 설치를 넘어 **Context Injection**의 역할을 수행한다.

- **Config Reading**: `.pk_config`에서 `PK_PROJECT_NAME`과 `PK_PROMPT_NAME`을 읽어와야 한다.
- **Dynamic Generation**:
    1. 설정이 없을 경우 현재 디렉토리명을 기반으로 프로젝트명을 자동 제안한다.
    2. 생성된 프로젝트명을 사용하여 `PROMPT_KIT-odd-starter.md` 파일을 물리적으로 생성한다.
- **Placeholder Sync**: 모든 시스템 파일(.md) 내의 `PROMPT_KIT-odd-starter.md`과 `odd-starter` 등을 실제 값으로 일치시켜야 한다.

## 3. 🛡️ Integrity Protection
- 이 규칙은 `reference/rules/pk-system.md`보다 상위의 **설계 철학**이며, 설치 로직의 변경은 반드시 이 메모리 셀의 업데이트를 동반해야 한다.
- 에이전트는 설치나 업데이트 명령을 받았을 때, 이 셀을 먼저 로드하여 **'성공의 정의(Definition of Success)'**를 확인해야 한다.

---
**Related Cells:**
- `pk-core-architecture.md`
- `coa-implementation-guide.md`
