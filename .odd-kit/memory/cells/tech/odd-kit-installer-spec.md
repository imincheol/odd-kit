---
type: memory-cell
category: tech
subcategory: devops
subject: Installer Mechanism (v2.0.0)
status: active
priority: medium
last-updated: 2026-01-04
revision: "v2.0.0"
---

# 🛠️ Memory Cell: Installer Mechanism

## 1. Setup & Identity
- **Template Source**: `odd-kit-template/` 폴더의 내용을 기반으로 배포.
- **Identity Injection**: 사용자 입력을 받아 `.odd-kit-config`를 생성하고, 모든 템플릿의 플레이스홀더(`{{PROJECT-NAME}}` 등)를 물리적으로 치환.
- **Bootloader Generation**: `ODD-KIT-PROMPT-{{PROJECT-NAME}}.md`를 자동 생성하여 프로젝트 고유 진입점 확보.

## 2. Sync Logic
- **Force Update**: 핵심 시스템 파일(`install.sh`, `system-v200.md` 등)은 강제 덮어쓰기 수행.
- **Preserve User Data**: `roadmap.md`, `docs/specs/README.md` 등 사용자가 직접 작성하는 파일은 기존 내용 유지(Force Update=false).

## 3. Migration Mode
기존 `.odd` 또는 구버전 PK 시스템이 감지될 경우 `ODD-KIT-MIGRATION.md` 프로토콜을 활성화하여 경로 및 지식 마이그레이션을 가이드함.

---
**Related Cells:**
- `odd-kit-naming-spec.md`
- `odd-kit-structure-spec-v200.md`
---
*Verified by Docs: [05-installer-mechanism-spec.md](../../../docs/specs/05-installer-mechanism-spec.md)*
