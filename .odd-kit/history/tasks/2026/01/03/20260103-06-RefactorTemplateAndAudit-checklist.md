---
id: "checklist_20260103_06_ChangeTemplateName"
order_id: "order_20260103_06_RefactorTemplateAndAudit"
status: "active"
---

# ✅ Checklist: Template Refactoring & Full Audit

## 1. Directory Structure (폴더 구조 변경)
- [x] **Action**: Rename `oddtemplate/` -> `odd-kit-template/`
- [x] **Verification**: Confirm `odd-template` is gone.

## 2. Root Files
- [x] `odd-kit-template/PROMPT_KIT_TEMPLATE.md`
    - [x] **Content**: Check `ODD-KIT-DIR` placeholder -> `ODD-KIT-DIR`
    - [x] **Content**: Check `odd-starter` text -> `prompt-kit`
    - [x] **Metadata**: Check `Primary Root` value

## 3. Setup Directory (`odd-kit-template/setup/`)
- [ ] `install.sh`
    - [ ] **Variable**: `TEMPLATE_DIR="odd-kit-template"`
    - [ ] **Variable**: `CONFIG_FILENAME=".odd-kit-config"`
    - [ ] **Logic**: Check all `fetch_system_file` paths (must match new filenames)
    - [ ] **Logic**: Check `odd-system.md` -> `odd-kit-system.md` mapping
- [ ] `ODD-KIT-INIT_TEMPLATE.md`
    - [ ] **Action**: Rename to `ODD-KIT-INIT_TEMPLATE.md`
    - [ ] **Content**: Replace "ODD" with "ODD Kit"
- [ ] `ODD-KIT-MIGRATION_TEMPLATE.md`
    - [ ] **Action**: Rename to `ODD-KIT-UPDATE_TEMPLATE.md`
    - [ ] **Content**: Replace "ODD" with "ODD Kit"

## 4. Reference Directory (`odd-kit-template/reference/`)
- [x] `rules/odd-system.md`
    - [x] **Action**: Rename to `odd-kit-system.md`
    - [x] **Content**: `odd-version` -> `odd-kit-version` metadata update
    - [x] **Content**: Check `Local Context` terminology
- [x] `README.md`
    - [x] **Content**: Update directory references (`.odd` -> `.odd-kit`)
- [x] `template/summary-template.md`
    - [x] **Metadata**: `odd-version` -> `odd-kit-version`
- [x] `template/history-template.md`
    - [x] **Metadata**: `odd-version` -> `odd-kit-version`

## 5. Tasks Directory (`odd-kit-template/tasks/`)
- [x] `roadmap-template.md`
    - [x] **Header**: "Project Roadmap (ODD Kit v1.2.1)"
- [x] `template/order-template.md`
    - [x] **Metadata**: `odd-version` -> `odd-kit-version`
- [x] `template/progress-template.md`
    - [x] **Metadata**: `odd-version` -> `odd-kit-version`
- [x] `template/report-template.md`
    - [x] **Metadata**: `odd-version` -> `odd-kit-version`

## 6. Specs & History (`odd-kit-template/specs, history/`)
- [x] `specs/README.md`
    - [x] **Content**: General audit
- [x] `history/README.md`
    - [x] **Content**: General audit

## 7. Configuration (`.odd-kit-config`)
- [x] Verify `install.sh` creates `.odd-kit-config` correctly.
