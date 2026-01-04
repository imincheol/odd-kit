---
type: memory-cell
category: tech
subcategory: devops
subject: Installer & Migration Protocol
status: active
priority: medium
last-updated: 2026-01-03
---

# 🛠️ Memory Cell: Installer & Migration Protocol

## 1. Self-Update Mechanism
`install.sh`는 실행 시 `ODD-KIT-SELF_UPDATED` 환경 변수를 체크하여, GitHub 원격지에서 최신 스크립트를 가져와(mktemp) 실행 프로세스를 교체한다. 이를 통해 사용자는 항상 최신 버전의 인스톨러/마이그레이터를 사용할 수 있다.

## 2. Interactive Setup & Identity
- **Project Identity**: `load_config`를 통해 기존 설정을 읽어오고, 없을 경우 프로젝트명과 목표를 입력받아 `.odd-kit-config`를 생성한다.
- **Dynamic Entry Point**: 프로젝트명(ODD-KIT-PROJECT_NAME)을 기반으로 `PROMPT_KIT-odd-starter.md` 형태의 고유 진입점을 생성한다.

## 3. Propagation (Pillar Sync)
인스톨러는 `odd-kit-prompt-template/`의 내용을 기반으로 로컬 프로젝트 구조를 구축하며, 모든 MD 파일 내의 플레이스홀더(`odd-starter`, `PROMPT_KIT-odd-starter.md` 등)를 실제 값으로 치환하여 문맥의 일관성을 확보한다.

## 4. Migration Mode
기존 시스템(ODD) 혹은 구버전 PK가 감지될 경우 `ODD-KIT-MIGRATION.md`를 안내하여 안전한 전환을 지원한다.

---
**Related Cells:**
- `odd-kit-naming-spec.md`
- `odd-kit-architecture-v200.md`
