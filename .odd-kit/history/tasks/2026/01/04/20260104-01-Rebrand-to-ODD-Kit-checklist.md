# ✅ Checklist: Rebrand to ODD Kit (v2.0.0)

> 프로젝트 전반의 명칭과 구조를 ODD Kit v2.0.0 표준으로 전환

## 📋 작업 범위
- **브랜드명**: ODD Kit → ODD Kit
- **약어**: PK → ODD Kit (또는 ODD)
- **버전**: v1.3.0 → v2.0.0 (Major Upgrade)
- **디렉토리**: `.prompt-kit/` → `.odd-kit/`
- **파일 접두사**: `odd-kit-*` → `odd-kit-*`
- **부트로더**: `PROMPT-KIT-*` → `ODD-KIT-*`

---

## 📂 Phase 1: Root Level Files

- [x] `README.md` - ODD Kit v2.0.0으로 전면 개편 완료
- [x] `CHANGELOG.md` - v2.0.0 리브랜딩 내역 추가 완료
- [x] `AI-FRAMEWORKS.md` - 모든 ODD Kit 참조를 ODD Kit으로 변경 완료

## 📂 Phase 2: Directory Rename

- [x] `.prompt-kit/` → `.odd-kit/` 디렉토리 이동 완료
- [x] `odd-kit-template/` → `odd-kit-prompt-template/` 디렉토리 이동 완료

## 📂 Phase 3: File Renaming & Content Update

### 3.1 .odd-kit/ Root
- [x] `.odd-kit-config` → `.odd-kit-config` 파일명 변경 및 ODD-KIT- 변수 리팩토링 완료
- [x] `PROMPT-KIT-odd-starter.md` → `ODD-KIT-PROMPT-odd-starter.md` 로직 업데이트 완료
- [x] `.odd-config` (레거시) 삭제 완료

### 3.2 memory/cells/tech/
- [x] `odd-kit-architecture-v130.md` → `odd-kit-architecture-v200.md` 완료
- [x] `odd-kit-installer-spec.md` → `odd-kit-installer-spec.md` 완료
- [x] `odd-kit-naming-spec.md` → `odd-kit-naming-spec.md` 완료
- [x] `odd-kit-operational-protocol-v130.md` → `odd-kit-operational-protocol-v200.md` 완료
- [x] `odd-kit-philosophy.md` → `odd-kit-philosophy.md` 완료
- [x] `odd-kit-structure-spec.md` → `odd-kit-structure-spec.md` 완료
- [x] `odd-kit-turn-system.md` → `odd-kit-turn-system.md` 완료
- [x] `odd-kit-v130-evolution-log.md` → `odd-kit-evolution-log.md` 완료

### 3.3 memory/core/
- [x] `odd-prompt.md` (레거시) 삭제 완료
- [x] 모든 코어 파일 내용 검토 완료 (ODD Kit v2.0.0 반영)

### 3.4 reference/rules/
- [x] `odd-kit-system.md` → `odd-kit-system.md` 전환 완료
- [x] `odd-kit-system.md`에 "Atomic Checklist Update" 규칙 추가 완료 (v2.0.0)

### 3.5 setup/
- [x] `ODD-KIT-INIT.md` → `ODD-KIT-INIT.md` 완료
- [x] `ODD-KIT-MIGRATION.md` → `ODD-KIT-MIGRATION.md` 완료
- [x] `install-odd-starter.sh` (레거시) 삭제 완료
- [x] `install.sh` 리팩토링 및 ODD Kit v2.0.0 로직 반영 완료

### 3.6 Template Directory
- [x] `PROMPT-KIT-TEMPLATE.md` → `ODD-KIT-PROMPT-TEMPLATE.md` 완료
- [x] `setup/ODD-KIT-INIT-TEMPLATE.md` → `setup/ODD-KIT-INIT-TEMPLATE.md` 완료
- [x] `setup/ODD-KIT-MIGRATION-TEMPLATE.md` → `setup/ODD-KIT-MIGRATION-TEMPLATE.md` 완료
- [x] `reference/rules/odd-kit-system.md` → `reference/rules/odd-kit-system.md` 완료
- [x] `setup/install.sh` (Template) 리팩토링 완료

### 3.7 docs/specs/
- [x] `1-planning/odd-kit-operational-protocol.md` → `1-planning/odd-kit-operational-protocol.md` 완료
- [x] 모든 스펙 문서 내용 업데이트 및 참조 수정 완료

## 📂 Phase 4: Content Update (전역 정밀 검색)

- [x] 모든 파일에서 `odd-kit-` 접두사 참조 추출 및 변경 완료
- [x] 모든 메모리 셀 내의 상호 참조 링크 수정 (v200 반영) 완료
- [x] 모든 문서의 `odd-kit-version: "v2.0.0"` 명시 확인 완료

## 📂 Phase 5: Final Verification

- [x] 전역 검색: "ODD Kit" (대문자/소문자) 누락 확인 완료
- [x] 전역 검색: ".prompt-kit" 경로 누락 확인 완료
- [x] 전역 검색: "odd-kit-" 접두사(파일/경로) 누락 확인 완료
- [x] Git 상태 확인 및 최종 커밋 준비 완료

---

## 📊 Progress
- **최종 업데이트**: 2026-01-04 07:00
- **Progress**: 100%
- **Status**: Completed
