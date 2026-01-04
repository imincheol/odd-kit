# ODD Kit Naming & Version Audit Checklist (20260104-04)

## 📋 Task Overview
- **Goal**: Full project audit to ensure "ODD Kit" is applied, `odd-` is changed to `odd-`, and `odd-kit-template` is renamed to `odd-kit-prompt-template`.
- **Reference**: ODD Kit v2.0.0 Standards.

## 🗂️ File Inventory & Compliance Check
| File/Directory Path | Version v2.0.0? | Terminology OK? | `odd-` naming OK? | Status |
| :--- | :---: | :---: | :---: | :---: |
| `.odd-kit/ODD-KIT-PROMPT-odd-starter.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/core/role.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/core/protocol.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/core/templates.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/cells/tech/odd-kit-naming-spec.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/cells/tech/odd-kit-operational-protocol-v200.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/cells/tech/odd-kit-philosophy.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/cells/tech/odd-kit-turn-system.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/memory/cells/tech/odd-kit-system-v200.md` | [x] | [x] | [x] | Completed |
| `.odd-kit/tasks/roadmap.md` | [x] | [x] | [x] | Completed |
| `README.md` | [x] | [x] | [x] | Completed |
| `CHANGELOG.md` | [x] | [x] | [x] | Completed |
| `AI-FRAMEWORKS.md` | [x] | [x] | [x] | Completed |
| `docs/specs/README.md` | [x] | [x] | [x] | Completed |
| `docs/specs/1-planning/CONCEPT.md` | [x] | [x] | [x] | Completed |
| `docs/specs/1-planning/odd-kit-operational-protocol.md` | [x] | [x] | [x] | Completed |
| `docs/specs/2-design/STRUCTURE.md` | [x] | [x] | [x] | Completed |
| `docs/specs/3-development/INSTALLER-MECHANISM.md` | [x] | [x] | [x] | Completed |
| `odd-kit-prompt-template/` | [x] | [x] | [x] | Completed |
| `odd-kit-prompt-template/ODD-KIT-PROMPT-TEMPLATE.md` | [x] | [x] | [x] | Completed |
| `odd-kit-prompt-template/setup/install.sh` | [x] | [x] | [x] | Completed |
| `odd-kit-prompt-template/memory/cells/tech/odd-kit-system-v200.md` | [x] | [x] | [x] | Completed |

## 🛠️ Actions Required
1. [x] Rename `odd-kit-template` -> `odd-kit-prompt-template`
2. [x] Replace all `odd_` with `odd-` in content and filenames.
3. [x] Verify "Prompt Kit" is nowhere to be found.
4. [x] Verify all documents mention v2.0.0 correctly.
5. [x] Rename `ODD-KIT-TEMPLATE.md` -> `ODD-KIT-PROMPT-TEMPLATE.md`.
6. [x] Update `roadmap-template.md` to v2.0.0.
7. [x] Update `install.sh` to use `ODD-KIT-PROMPT-TEMPLATE.md`.
