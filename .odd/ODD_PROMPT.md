# ODD_PROMPT: ODD Starter Kit Entry Point
> **ODD Architecture v1.1.0 (Functional Arch)**

**[English]**
This document is the **Main Instruction** for the ODD Starter project.
We have refactored the system to a **"Functional Reference"** architecture.

**[한국어]**
이 문서는 **ODD Starter 프로젝트의 메인 프롬프트**입니다.
시스템을 **"기능 중심 참조 시스템(Functional Reference)"**으로 개편 완료했습니다.

---

## 🏗️ Project Metadata

- **Project Name**: odd-starter
- **Core Goal**: Curing AI Amnesia with Functional ODD (v1.1.0)
- **Current Version**: v1.1.0
- **Primary Root**: `.odd/`

---

## 📂 ODD Structure (v1.1.0)

### 🔍 Reference (참조 정보) -> `.odd/reference/`
- **`summaries/`**: 현재 ODD 시스템의 구조 및 템플릿 현황 요약.
- **`rules/`**: 프로젝트 개발 규칙 및 ODD 운영 가이드라인.

### ⚡ Tasks (작업 프로세스) -> `.odd/tasks/`
- **`active/`**: 현재 진행 중인 작업 관리.
- **`roadmap.md`**: 전반적인 프로젝트 마일스톤 관리.

### 🗄️ History (기록 보관소) -> `.odd/history/`
- **`tasks/`**: 완료된 작업 기록 보관.

---

## ⚙️ Operational Flow (Turn-Based)

1. **Turn 1 (Analysis & Order)**: `ODD_PROMPT.md`와 `reference/`를 분석하여 오더를 작성하고 승인을 받습니다.
2. **Turn 2 (Execution)**: 승인된 오더에 따라 작업을 수행하고 `progress.md`를 기록합니다.
3. **Turn 3 (Finalize & Archive)**: 작업 완료 후 지식을 요약하여 `reference/`를 갱신하고 원본을 `history/`에 보관합니다.