# 🛠️ Development: Installer Mechanism

> **Prompt Kit v1.2.1**
> "The installer is the gatekeeper."

## 1. Overview
`pk-template/setup/install.sh`는 단순한 복사 스크립트가 아니라, **Self-Updating Bootstrapper**입니다.
사용자가 구버전 스크립트를 실행하더라도, 항상 최신 로직을 보장합니다.

## 2. Self-Update Mechanism
1. **Check**: `PK_SELF_UPDATED` 환경변수가 설정되어 있는지 확인.
2. **Download**: `GitHub Raw Content`에서 최신 `install.sh`를 `mktemp`로 다운로드.
3. **Exec**: `exec bash "$TEMP_SCRIPT" "$@"`를 통해 현재 프로세스를 새 스크립트로 **완전히 대체**함.
4. **Loop Prevention**: 새 프로세스는 `PK_SELF_UPDATED=true`를 가지고 시작하므로 루프에 빠지지 않음.

## 3. Migration Flow
설치 스크립트는 기존 `.odd` 폴더를 감지하면 **Migration Mode**로 동작합니다.
이때 `PK_MIGRATION.md` (from `PK_MIGRATION_TEMPLATE.md`) 파일을 가이드로 제공합니다.

### Automatic Actions (in `PK_MIGRATION.md` Guide)
1. **Rename**: `mv .odd .prompt-kit`
2. **Rename Entry**: `ODD_PROMPT.md` -> `PROMPT_KIT.md`
3. **Update Specs**: `odd-template` -> `pk-template`

## 4. Configuration
- `.pk_config` 파일을 생성하여 프로젝트 설정(이름, 날짜 등)을 유지합니다.
- 재실행 시 기존 설정을 로드하여 입력을 건너뜁니다.
