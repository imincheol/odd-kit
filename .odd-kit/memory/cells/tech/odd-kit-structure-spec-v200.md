---
type: memory-cell
category: tech
subcategory: architecture
subject: File System Structure (v2.0.0)
status: active
priority: high
last-updated: 2026-01-04
revision: "v2.0.0"
---

# 🏗️ Memory Cell: File System Structure (v2.0.0)

## 1. The 3 Pillars of Project Root
1. **`docs/` (Present)**: 프로젝트의 청사진(Blueprint).
   - **`origin/`**: 사용자 원본 요청 프롬프트 (01, 02, 03...).
   - **`specs/`**: 현행 상세 명세서 (Flattened: 00-SpecName.md).
2. **`odd-kit-template/` (Future)**: 타 프로젝트 배포 및 초기 설정을 위한 원형.
3. **`.odd-kit/` (Past~Now)**: 현재 프로젝트를 빌드하고 있는 개발 엔진 및 로그.

## 2. `.odd-kit` Internal Structure
- **Boot Loader**: `ODD-KIT-PROMPT-{{PROJECT_NAME}}.md`.
- **Memory (`memory/cells/`)**: 지식의 원자(Atom). 
  - `core/`: Roles, Principles.
  - `cells/tech/`: 기술적 규칙.
  - `cells/domain/`: 비즈니스 언어 및 도메인 지식.
- **Tasks (`tasks/active/`)**: 현재 실행 중인 행동 유닛 (Orders/Progress).
- **History (`history/tasks/`)**: 시간순으로 나열된 경험의 기록 (YYYY/MM/DD).
- **Setup (`setup/`)**: 프로젝트 초기화 및 마이그레이션 스크립트.

## 3. Naming Rules
- **Entry Point**: `ODD-KIT-PROMPT-{{PROJECT_NAME}}.md`.
- **Orders**: `YYYYMMDD-{{NN}}-{{Title}}-order.md`.
- **Progress**: `YYYYMMDD-{{NN}}-{{Title}}-progress.md`.
- **Reports**: `YYYYMMDD-{{NN}}-{{Title}}-report.md`. (Archived with order/progress).
- **Memory Cells**: `odd-kit-{{topic-name}}.md`.

---
**Related Cells:**
- `odd-kit-naming-spec.md`
- `odd-kit-system-v200.md`
---
*Verified by Docs: [00-project-structure-spec.md](../../../docs/specs/00-project-structure-spec.md)*
