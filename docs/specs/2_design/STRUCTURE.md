# 🏗️ Structure: File System & Naming (v1.3.0)

> **"Structure tells functionality."**

## 1. Directory Structure

### 📦 Root Structures (The 3 Pillars)
1. **Docs Specs (`docs/specs/`)**: 프로젝트의 공식 가이드 및 설계서.
2. **Product Template (`pk-template/`)**: 타 환경 설치를 위한 원형(Prototype).
3. **Active Engine (`.prompt-kit/`)**: 현재 작업을 지휘하는 실제 인스턴스.

### ⚙️ Engine Directory (`.prompt-kit`)
```text
.prompt-kit/
├── PROMPT_KIT-{{PROJECT_NAME}}.md  # Boot Loader (Dynamic Entry Point)
├── .pk_config                      # System Configuration
├── memory/                         # Atomic Context (Brain)
│   ├── core/                       # Core system definitions
│   └── cells/                      # Domain/Tech granular cells
├── tasks/                          # Active Action Space
│   ├── active/                     # Current Orders, Progress, Checklists
│   ├── roadmap.md                  # Macroscopic Milestones
│   └── _template/                  # Task Blueprints (Order, Progress)
├── history/                        # Immutable Experience Archive
└── reference/                      # Fixed Rules & SSOT summaries
```

## 2. Naming Convention

### Tasks (Order Lifecycle)
- **Order**: `YYYYMMDD_{NN}_{CamelCaseTitle}.md`
- **Progress**: `YYYYMMDD_{NN}_{CamelCaseTitle}_progress.md`
- **Report**: `YYYYMMDD_{NN}_{CamelCaseTitle}_report.md`

### Memory Cells
- **Topic**: `pk-lowercase-topic.md` (e.g., `pk-naming-spec.md`)

---
**Verified by Memory Cell**: `pk-structure-spec.md`
