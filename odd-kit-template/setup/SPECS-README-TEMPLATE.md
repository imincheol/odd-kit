# 🏗️ Specifications (v2.0.0)
> **Single Source of Truth (SSOT) for Requirements & Design**

이 디렉토리는 프로젝트의 **현행 설계도**를 보관하는 곳입니다. 모든 내용은 [루트 README](../../README.md)의 개괄적인 설명에 대한 **상세 명세(Standard Specs)**이며, `{{ODD-KIT-DIR}}/memory/cells/`와 항상 동기화되어야 합니다.

## 📂 Core Specifications

- **[00-project-structure-spec.md](./00-project-structure-spec.md)**: 3대 기둥(Root Pillars) 위계 및 폴더 구조 정의
- **[01-trust-free-protocol-spec.md](./01-trust-free-protocol-spec.md)**: 에이전트 불신 기반 OPR 운영 수칙
- **...** (프로젝트에 맞는 스펙을 추가하세요)

---
## 🔄 Synchronization Policy
본 디렉토리의 모든 변경사항은 **Turn-Memory** 프로세스를 통해 메모리 셀로 원자화되어 보관됩니다. 
- **Rule 1**: 스펙 문서에 정의되지 않은 기능은 프로젝트에 존재하지 않는 것으로 간주합니다.
- **Rule 2**: 모든 스펙은 최종 결과물인 리포트(Report)와 메모리 셀에 근거하여 최신성을 유지합니다.
- **Rule 3**: 루트 README는 본 전문 스펙들의 요약본이며, 두 문서 간의 정합성은 100% 일치해야 합니다.
