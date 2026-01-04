# Order: 20260104-04-ODD-Kit-Naming-Compliance-Audit

## 🎯 Goal
Thoroughly audit the entire project to ensure complete compliance with the "ODD Kit" branding (v2.0.0), remove all occurrences of `odd-` (replace with `odd-`), and rename the template directory.

## 📝 Background
The user reported that the previous rebranding was incomplete and that legacy naming/incorrect separators (`-` instead of `-`) still exist. A full manual inventory is required.

## 🚶 Steps
1. **Directory Renaming**: `odd-kit-prompt-template` -> `odd-kit-prompt-template`.
2. **Global Search & Replace**:
   - `odd-` -> `odd-`
   - Any remaining "ODD Kit" -> "ODD Kit" (except where contextually inappropriate).
3. **File-by-File Audit**: Open each file listed in the checklist and verify:
   - Version is v2.0.0.
   - Project name is correct.
   - Separators are `-`.
4. **Update Metadata**: Ensure all references within `.odd-kit/ODD-KIT-PROMPT-odd-starter.md` and `README.md` are updated.

## ✅ Success Criteria
- [ ] No `odd-` found in any filename or content.
- [ ] No `odd-kit-prompt-template` found (replaced by `odd-kit-prompt-template`).
- [ ] All files in the inventory verified as v2.0.0 and ODD Kit branded.
- [ ] Checklist is fully checked and updated.
