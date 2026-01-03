---
id: "checklist_20260103_06_ChangeTemplateName"
order_id: "order_20260103_06_RefactorTemplateAndAudit"
status: "active"
---

# ✅ Checklist: Template Refactoring & Full Audit

## 1. Directory Structure (폴더 구조 변경)
- [x] **Action**: Rename `odd-template/` -> `pk-template/`
- [x] **Verification**: Confirm `odd-template` is gone.

## 2. Root Files
- [x] `pk-template/PROMPT_KIT_TEMPLATE.md`
    - [x] **Content**: Check `ODD_DIR` placeholder -> `PK_DIR`
    - [x] **Content**: Check `odd-starter` text -> `prompt-kit`
    - [x] **Metadata**: Check `Primary Root` value

## 3. Setup Directory (`pk-template/setup/`)
- [ ] `install.sh`
    - [ ] **Variable**: `TEMPLATE_DIR="pk-template"`
    - [ ] **Variable**: `CONFIG_FILENAME=".pk_config"`
    - [ ] **Logic**: Check all `fetch_system_file` paths (must match new filenames)
    - [ ] **Logic**: Check `odd-system.md` -> `pk-system.md` mapping
- [ ] `ODD_INIT_TEMPLATE.md`
    - [ ] **Action**: Rename to `PK_INIT_TEMPLATE.md`
    - [ ] **Content**: Replace "ODD" with "Prompt Kit"
- [ ] `ODD_UPDATE_TEMPLATE.md`
    - [ ] **Action**: Rename to `PK_UPDATE_TEMPLATE.md`
    - [ ] **Content**: Replace "ODD" with "Prompt Kit"

## 4. Reference Directory (`pk-template/reference/`)
- [x] `rules/odd-system.md`
    - [x] **Action**: Rename to `pk-system.md`
    - [x] **Content**: `odd_version` -> `pk_version` metadata update
    - [x] **Content**: Check `Local Context` terminology
- [x] `README.md`
    - [x] **Content**: Update directory references (`.odd` -> `.prompt-kit`)
- [x] `_template/summary_template.md`
    - [x] **Metadata**: `odd_version` -> `pk_version`
- [x] `_template/history_template.md`
    - [x] **Metadata**: `odd_version` -> `pk_version`

## 5. Tasks Directory (`pk-template/tasks/`)
- [x] `roadmap_template.md`
    - [x] **Header**: "Project Roadmap (Prompt Kit v1.2.1)"
- [x] `_template/order_template.md`
    - [x] **Metadata**: `odd_version` -> `pk_version`
- [x] `_template/progress_template.md`
    - [x] **Metadata**: `odd_version` -> `pk_version`
- [x] `_template/report_template.md`
    - [x] **Metadata**: `odd_version` -> `pk_version`

## 6. Specs & History (`pk-template/specs, history/`)
- [x] `specs/README.md`
    - [x] **Content**: General audit
- [x] `history/README.md`
    - [x] **Content**: General audit

## 7. Configuration (`.pk_config`)
- [x] Verify `install.sh` creates `.pk_config` correctly.
