---
id: "checklist_20260103_09_InstallerSelfUpdate"
order_id: "order_20260103_09_InstallerSelfUpdate"
status: "active"
---

# ✅ Checklist: Installer Self-Update

## 1. Installer Script (`pk-template/setup/install.sh`)
- [ ] **Variable**: Update `TEMPLATE_DIR` or URL path to point to `pk-template`.
- [ ] **Logic**: Add `SELF_UPDATE` block at the top of the script.
    - Download latest script to `mktemp`.
    - `exec bash` the downloaded script logic.
    - Use `PK_EXEC_FLAG` to prevent infinite loop.

## 2. Documentation (`README.md`)
- [ ] **Command**: Update `curl` command URL (`odd-template` -> `pk-template`).

## 3. Templates (`PK_INIT`, `PK_MIGRATION`)
- [ ] Check if migration guides contain old URLs.
