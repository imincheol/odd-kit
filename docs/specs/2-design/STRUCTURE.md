# 🏗️ Structure: File System & Naming (v2.0.0)

> **"Structure tells functionality."**

## 1. Directory Structure

### 📦 Root Structures (The 3 Pillars)
1. **Docs Specs (`docs/specs/`)**: 프로젝트의 공식 가이드 및 설계서.
2. **Product Template (`odd-kit-prompt-template/`)**: 타 환경 설치를 위한 원형(Prototype).
3. **Active Engine (`.odd-kit/`)**: 현재 작업을 지휘하는 실제 인스턴스.

### ⚙️ Engine Directory (`.odd-kit`)
```text
.odd-kit/
├── ODD-KIT-{{PROJECT_NAME}}.md      # Boot Loader (Dynamic Entry Point)
├── .odd-kit-config                  # System Configuration
├── memory/                         # Atomic Context (Brain)
│   ├── core/                       # Core system definitions
│   ├── cells/                      # Domain/Tech granular cells
│   └── template/                  # Memory/History/Summary templates
├── tasks/                          # Active Action Space
│   ├── active/                     # Current Orders, Progress, Checklists
│   ├── roadmap.md                  # Macroscopic Milestones
│   └── template/                  # Task Blueprints (Order, Progress)
├── history/                        # Immutable Experience Archive
└── setup/                          # Installer & Migration guides
```

## 2. Naming Convention

### Tasks (Order Lifecycle)
- **Order**: `YYYYMMDD_{NN}_{CamelCaseTitle}.md`
- **Progress**: `YYYYMMDD_{NN}_{CamelCaseTitle}_progress.md`
- **Report**: `YYYYMMDD_{NN}_{CamelCaseTitle}_report.md`
- **Checklist**: `YYYYMMDD_{NN}_{CamelCaseTitle}_checklist.md`

### Memory Cells
- **Topic**: `odd-kit-{topic}-v{Version}.md` (e.g., `odd-kit-naming-spec-v200.md`)

---
**Verified by Memory Cell**: `odd-kit-structure-spec.md`
