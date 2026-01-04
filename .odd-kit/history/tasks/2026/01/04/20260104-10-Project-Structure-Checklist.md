# Checklist: Project Structure & File Audit (20260104-10)

이 문서는 프로젝트 내의 모든 파일을 전수 조사하고 정리하기 위한 체크리스트입니다. 각 폴더를 순차적으로 탐색하며 정합성을 확인합니다.

## 🏗️ 1. Active Engine (`.odd-kit/`)
- [x] `.odd-kit/ODD-KIT-PROMPT-odd-starter.md` (Boot Loader - One-Sheet Mind 개편)
- [x] `.odd-kit/tasks/roadmap.md` (Phase 2 Audit 기록 추가)
- [x] `.odd-kit/tasks/active/` (Working Memory)
- [x] `.odd-kit/memory/core/` (레거시 정리 완료)
- [x] `.odd-kit/memory/cells/tech/` (System Rules v2.0.0 및 Naming Spec 통합)
- [x] `.odd-kit/setup/` (v2.0.0 표준 스크립트 반영)
- [x] `.odd-kit/history/tasks/` (Past Records 정리)

## 📦 2. Product Template (`odd-kit-template/`)
- [x] `odd-kit-template/ODD-KIT-PROMPT-TEMPLATE.md` (Pillar & Trust-Free 반영)
- [x] `odd-kit-template/tasks/` (order-template 최신화)
- [x] `odd-kit-template/memory/` (system-v200 메모리 셀 업데이트)
- [x] `odd-kit-template/specs/` (폴더 제거 및 내용 통합 완료)
- [x] `odd-kit-template/setup/` (install.sh 및 INIT/MIGRATION 반영)
- [x] `odd-kit-template/history/`

## 📖 3. Docs Specs (`docs/specs/`)
- [x] `docs/specs/README.md` (Flattened 구조 반영)
- [x] `docs/specs/flattening` (1-planning, 2-design 등 하위 폴더 제거 완료)
- [x] `docs/specs/00~07` 스펙 파일 전수 생성 및 정합성 보강
- [x] `docs/origin/01~03` 정제 및 보존 완료

## 根 4. Root & Others
- [x] `README.md` (Bilingual Spec 및 Specs Mirroring 반영)
- [x] `CHANGELOG.md` (v2.0.0 Audit 내역 추가)
- [x] `AI-FRAMEWORKS.md` (New Branding 가이드 업데이트)
- [x] `.gitignore` (ODD Kit 특화 무시 항목 추가)

---
**정리 완료 요약:**
1. 모든 **Prompt Kit** 명칭을 **ODD Kit**으로, `.prompt-kit`을 `.odd-kit`으로 통일했습니다.
2. 부트 로더를 **One-Sheet Mind** 방식으로 개편하여 에이전트가 복합 설계를 한 번에 읽을 수 있게 했습니다.
3. **Trust-Free 프로토콜**을 명문화하여 에이전트의 판단을 기록하고 검증하는 체계를 확립했습니다.
4. **Docs flattening**을 통해 스펙 접근성을 높이고, 리드미와의 정합성을 100% 확보했습니다.
