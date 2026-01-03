# 🏗️ Structure: File System & Naming

> **Prompt Kit v1.2.1**
> "Structure tells functionality."

## 1. Directory Structure

### 📦 Root
- `pk-template/`: **(Source)** 배포용 템플릿 원본. 사용자는 이 폴더를 복사하여 자신의 프로젝트에 `.prompt-kit`으로 설치합니다.
- `.prompt-kit/`: **(Instance)** 현재 프로젝트(`prompt-kit`)를 관리하는 Local Context 시스템.
- `docs/`: 프로젝트 공식 문서 (Specs).

### ⚙️ System Directory (`.prompt-kit`)
```text
.prompt-kit/
├── PROMPT_KIT.md       # Boot Loader (Entry Point)
├── .pk_config          # Configuration
├── memory/             # Persistent Context (Brain)
│   ├── core/           # Active, History, Reference Indexes
│   └── cells/          # Granular Knowledge Units
├── tasks/              # Action Space
│   ├── active/         # Running Tasks (Orders, Checklists)
│   ├── roadmap.md      # Macroscopic Plan
│   └── _template/      # Task Templates
├── history/            # Archived Tasks (Immutable Record)
└── reference/          # Rules & Summaries (SSOT)
```

## 2. Naming Convention

### Tasks
- **Order**: `{YYYYMMDD}_{NN}_{CamelCase}_order.md` (e.g., `20260103_01_InitProject_order.md`)
- **Checklist**: `{YYYYMMDD}_{NN}_{CamelCase}_checklist.md`
- **Report**: `{YYYYMMDD}_{NN}_{CamelCase}_report.md`

### Memory Cells
- **Topic**: `snake_case.md` (e.g., `ai_frameworks.md`, `installer_mechanism.md`)
