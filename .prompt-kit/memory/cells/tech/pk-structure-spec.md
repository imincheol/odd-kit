---
type: memory-cell
category: tech
subcategory: architecture
subject: File System & Naming Convention (v1.3.0)
status: active
priority: high
last_updated: 2026-01-03
---

# 🏗️ Memory Cell: File System & Naming Convention

## 1. Directory Structure (The 3 Pillars)
1. **Product Template (`pk-template/`)**: 배포 대기 중인 코드의 원형.
2. **Docs Specs (`docs/specs/`)**: 프로젝트의 청사진.
3. **Active Engine (`.prompt-kit/`)**: 실제 구동 중인 지식 저장소.

## 2. `.prompt-kit` Internal Structure
- **Boot Loader**: `PROMPT_KIT-odd-starter.md`.
- **Memory (`memory/cells/`)**: 지식의 원자(Atom).
- **Tasks (`tasks/active/`)**: 현재 실행 중인 행동 유닛.
- **Reference (`reference/rules/`)**: 변화하지 않는 불변의 법칙.
- **History (`history/tasks/`)**: 시간순으로 나열된 경험의 기록.

## 3. Naming Rules
- **Entry Point**: `PROMPT_KIT-odd-starter.md`.
- **Orders**: `YYYYMMDD_{NN}_{CamelCaseTitle}.md`.
- **Progress**: `YYYYMMDD_{NN}_{CamelCaseTitle}_progress.md`.
- **Reports**: `YYYYMMDD_{NN}_{CamelCaseTitle}_report.md`.
- **Memory Cells**: `pk-topic-name.md` (접두어 `pk-` 권장).

---
**Related Cells:**
- `pk-architecture-v130.md`
- `pk-naming-spec.md`
