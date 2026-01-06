# 🛠️ Development: Installer Mechanism (v2.0.0)

> **"The installer is the gatekeeper of project identity."**

## 1. Overview
`odd-kit-template/setup/install.sh`는 단순한 복사 스크립트가 아니라, **Self-Updating Bootstrapper**이자 **Context Injector**입니다. 사용자가 구버전 스크립트를 실행하더라도 항상 최신 로직을 보장하며, 프로젝트 고유의 정체성을 부여합니다.

## 2. Self-Update Mechanism (Optional/Future)
1. **Check**: `ODD-KIT_SELF_UPDATED` 환경변수가 설정되어 있는지 확인.
2. **Download**: GitHub 원격지에서 최신 `install.sh`를 `mktemp`로 다운로드.
3. **Exec**: `exec bash`를 통해 현재 프로세스를 새 스크립트로 완전히 교체하여 최신 버전 설치 보장.

## 3. Dynamic Identity Injection (Critical)
v2.0.0부터 인스톨러는 프로젝트별 고유 컨텍스트를 주입합니다.
- **Dynamic Entry Point**: `load_config`를 통해 프로젝트명을 입력받고, `ODD-KIT-{{PROJECT_NAME}}.md` 형태의 고유 진입점을 생성합니다.
- **Placeholder Replacement**: `odd-kit-template/`의 모든 문서를 복제할 때, 내부의 `{{PROJECT_NAME}}`, `{{ODD-KIT_PROMPT_NAME}}` 등의 변수를 실제 값으로 치환하여 문맥적 무결성을 확보합니다.

## 4. Pillar Sync (Structure Creation)
설치 스크립트는 다음 세 가지 영역을 동기화하여 구축합니다.
- **Docs/Specs**: 기본 설계 가이드(`docs/specs/`) 생성.
- **Internal Engine**: `.odd-kit/` 폴더 내부에 워크플로우(`tasks/`), 기억(`memory/`), 규칙(`reference/rules/`) 구조를 확립.
- **History**: 최초 설치/업데이트 내역을 기록하기 위한 히스토리 경로를 확보.

## 5. Migration Mode
기존 `.odd` 또는 구형 PK 시스템이 감지될 경우 `ODD-KIT_MIGRATION.md`를 통해 명칭 변경 및 데이터 마이그레이션 절차를 안내합니다.

---
**Verified by Memory Cell**: `odd-kit-installer-spec.md`, `odd-kit-naming-spec.md`
