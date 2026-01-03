---
id: "checklist_20260103_07_VersionAudit"
order_id: "order_20260103_07_VersionAudit"
status: "active"
---

# ✅ Checklist: Version Audit (Target: v1.2.1)

## 1. Root & Documentation
- [x] `README.md`: Version `v1.2.1` check
- [x] `CHANGELOG.md`: Latest entry `v1.2.1` check
- [x] `AI_FRAMEWORKS.md`: Content rebranding check

## 2. Template Directory (`pk-template/`)
### Core & Setup
- [x] `PROMPT_KIT_TEMPLATE.md`: `v1.2.1` check
- [x] `setup/install.sh`: `PK_VERSION="v1.2.1"` check
- [x] `setup/PK_INIT_TEMPLATE.md`: `v1.2.1` check
- [x] `setup/PK_UPDATE_TEMPLATE.md`: `v1.2.1` check

### Reference & Rules
- [x] `reference/rules/pk-system.md`: `revision: "v1.2.1"`, `pk_version: "v1.2.1"` check
- [x] `reference/_template/history_template.md`: `pk_version: "v1.2.1"` check
- [x] `reference/_template/summary_template.md`: `pk_version: "v1.2.1"` check

### Tasks & Roadmap
- [x] `tasks/roadmap_template.md`: Version in Header check
- [x] `tasks/_template/order_template.md`: `pk_version: "v1.2.1"` check
- [x] `tasks/_template/progress_template.md`: `pk_version: "v1.2.1"` check
- [x] `tasks/_template/report_template.md`: `pk_version: "v1.2.1"` check

## 3. Local System Directory (`.prompt-kit/`)
### Boot Loader
- [x] `PROMPT_KIT.md`: `v1.2.1` check

### Reference Rules (Local)
- [x] **Action**: Rename `reference/rules/odd-system.md` -> `pk-system.md` (Match template)
- [x] `reference/rules/pk-system.md`: `v1.2.1` check

### Tasks Templates (Local)
- [ ] `tasks/_template/order_template.md`: `odd_version` vs `pk_version` check (Skip: Less critical for local)
- [ ] `tasks/_template/progress_template.md`: `odd_version` vs `pk_version` check
- [ ] `tasks/_template/report_template.md`: `odd_version` vs `pk_version` check
