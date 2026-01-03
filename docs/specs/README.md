# 🏗️ Specifications (v1.3.0)
> **Single Source of Truth (SSOT) for Requirements & Design**

이 디렉토리는 프로젝트의 **기획, 디자인, 설계** 문서를 보관하는 곳입니다. 모든 문서는 `.prompt-kit/memory/cells/`와 실시간으로 동기화되어야 합니다 (**Turn-Memory-2**).

## 📂 Structure

### 1_planning (기획/설계)
- **What**: 서비스의 목적, 사용자 요구사항, 기능 명세서, 비즈니스 로직 설계.
- **Key Spec**: [pk-operational-protocol.md](./1_planning/pk-operational-protocol.md)

### 2_design (디자인/UIUX)
- **What**: 사용자 인터페이스(UI), 사용자 경험(UX) 설계, 디자인 시스템.
- **Key Spec**: [STRUCTURE.md](./2_design/STRUCTURE.md)

### 3_development (개발/기술설계)
- **What**: 아키텍처 설계, API 명세, 데이터베이스 스키마.

---
## 🔄 Synchronization Policy
본 디렉토리의 모든 변경사항은 **Turn-Memory** 프로세스를 통해 메모리 셀로 원자화되어 보관됩니다. 
- **Rule 1**: 스펙 문서의 실체는 메모리 셀에 근거한다.
- **Rule 2**: 문서 수정 시 관련된 메모리 셀도 함께 업데이트되어야 한다.
