# 🔄 Prompt Kit Migration Protocol (Migration Guide)

> **Prompt Kit Standard Protocol v1.3.0 (Split-Turn Architecture)**

**For AI Agent:**
이 프로젝트는 구버전 시스템(ODD 또는 구형 PK)을 사용 중입니다. 당신은 이 시스템을 최신 **Prompt Kit v1.3.0** 체계로 안전하게 마이그레이션해야 합니다.

---

## 🏗️ Migration Steps

### 1단계: 명명 규칙 준수 (Identity Normalization)
최신 스펙에 따라 진입점 파일명을 변경합니다.

1. **Rename Boot Loader**: `PROMPT_KIT.md` 등 임의의 이름을 `PROMPT_KIT-odd-starter.md`로 변경합니다.
2. **Update Config**: `.pk_config` 내의 `PK_VERSION`을 `v1.3.0`으로 업데이트하고 `PK_PROMPT_NAME`을 새로운 파일명에 맞춥니다.

### 2단계: 지식 원자화 (Atomization)
구버전의 거대한 문서를 **Turn-Memory-1** 프로세스에 따라 분해합니다.

1. **Memory Cells**: `memory/cells/` 구조를 확보하고 정보를 세포 단위로 쪼갭니다.
2. **Rules Update**: `pk-system.md`를 v1.3.0 **Split-Turn** 버전으로 교체합니다.

### 3단계: 삼대 구조 동기화 (Pillar Sync)
- **Turn-Memory-2**를 수행하여 `docs/specs/`, `pk-template/`, `.prompt-kit/`을 일치시킵니다.

---

## 🛡️ 안전 수칙
- **Turn-Order-1-1**: 마이그레이션 작업을 위한 전용 **오더**를 먼저 생성하고 수행하세요.
- **Verification**: 작업 후 부트 로더를 다시 읽어 모든 경로가 정상인지 확인하세요.
