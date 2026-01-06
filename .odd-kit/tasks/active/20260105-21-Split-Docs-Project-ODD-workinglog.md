---
id: "20260105-21-Split-Docs-Project-ODD-workinglog"
odd-kit-version: "v2.0.0"
status: "active"
created-at: "2026-01-05"
last-updated: "2026-01-05T13:32:00+09:00"
order-link: "20260105-21-Split-Docs-Project-ODD-order.md"
---

# 📝 WorkingLog: Docs를 Project와 ODD로 분리

## 📝 Work Log

### 2026-01-05 13:32 - 작업 시작 및 파일 분류
- **Status**: Report + WorkingLog 생성, 파일 분류 시작
- **Action**:
  - 현재 docs/specs 파일 분석
  - 현재 docs/origin 파일 분석
- **Classification**:
  - **Project 관리**:
    - specs: 00-project-structure, 05-installer, 06-readme
    - origin: 01-project-structure-philosophy
  - **ODD 시스템**:
    - specs: 01-trust-free-protocol, 02-identity-and-goals, 03-operational-lifecycle, 07-role
    - origin: 02-trust-free-opr-philosophy, 03-template-philosophy
- **Next**: 디렉토리 생성 및 파일 이동

### 2026-01-05 13:33 - 디렉토리 생성 및 파일 이동 완료
- **Status**: 파일 이동 완료
- **Action**:
  - `docs/project/specs/` 생성
  - `docs/project/origin/` 생성
  - `docs/odd/specs/` 생성
  - `docs/odd/origin/` 생성
  - Project 관련 파일 이동 완료
  - ODD 관련 파일 이동 완료
  - 기존 빈 디렉토리 삭제
- **Result**:
  ```
  docs/
  ├── project/
  │   ├── specs/ (3 files + README.md)
  │   └── origin/ (1 file)
  └── odd/
      ├── specs/ (4 files)
      └── origin/ (2 files)
  ```
- **Success**: docs 분리 완료
