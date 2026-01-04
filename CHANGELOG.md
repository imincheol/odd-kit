# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v2.0.0] - 2026-01-04
### 🎯 Major Rebrand: ODD Kit (Order-Driven Development Kit)
- **Identity**: System renamed from `Prompt Kit` to **`ODD Kit`** (Order-Driven Development Kit).
- **Concept**: Clarified as **"Order-Driven Context Management Kit for AI Agents"**.
- **Architecture**:
    - Directory: `.prompt-kit/` → `.odd-kit/`
    - Boot Loader: `PROMPT_KIT-*` → `ODD-KIT-*`
    - File Prefix: `odd-kit-*` → `odd-kit-*`
    - Config: `.odd-kit-config` → `.odd-kit-config`
- **Turn-Based Lifecycle**: 
    - Formalized Turn-0 (Bootstrap), Turn-Memory (Sync), Turn-Order (Execution)
    - Added TM-0 (Archiving) as pre-step to Turn-Memory
- **Memory Cells**: All core knowledge atomized into versioned cells (v2.0.0)
- **Documentation**:
    - Complete rewrite of README.md with ODD Kit branding
    - Updated all specs, templates, and reference documents
    - Version bumped to `v2.0.0` across all files

## [v1.3.0] - 2026-01-03
### Split-Turn Architecture & Protocol Stabilization
- **Turn-Based Engine**: Introduced Split-Turn operational architecture
    - Turn-Memory: Knowledge synchronization (TM-1: Ingestion, TM-2: Back-Sync)
    - Turn-Order: Execution cycle (TO-1: Active, TO-2: Micro-Sync)
- **Memory Atomization**: Created 8 core memory cells for system knowledge
- **Pillar Sync**: Achieved 100% synchronization between Specs, Template, and Engine
- **Protocol Audit**: Full audit and restoration of v1.3.0 operational protocols
- **Case Study**: Documented failure and restoration principles in operational protocol

## [v1.2.1] - 2026-01-03
### Refactor: .prompt-kit Directory Structure
- **Renamed**: `.odd/` → `.prompt-kit/`
- **Boot Loader**: `ODD-KIT-PROMPT.md` → `PROMPT_KIT.md`
- **Rule**: Added "Checklist Mandatory" protocol for complex tasks.
- **Metaphor**: Documented Body(Prompt Kit) / Mind(ODD) / Memory(Local Context).

## [v1.2.0] - 2026-01-03
### Rebranded: Prompt Kit (Local Context Manager)
- **Identity**: System renamed from `ODD` to **`Prompt Kit`**.
- **Concept**: Refined core concept to **"The Local Context Manager for Agents"**.
- **Architecture**:
    - `ODD-KIT-PROMPT.md` is now the **Boot Loader**.
    - Emphasized **Local Repository Context** over generic "Memory".
- **Documentation**:
    - Added `AI-FRAMEWORKS.md`: Detailed comparison with Spec Kit and Claude Skills.
    - Updated `README.md` and all templates to reflect the new branding.
    - Versions bumped to `v1.2.0` across the board.

## [v1.0.0] - 2025-12-29

### Added
- **COA (Context-Order-Archive) Architecture**: Established the core 3-pillar structure for definitive knowledge management.
- **Auditor Persona**: Renamed 'Librarian' to 'Auditor' and standardized the person-led context refinement protocol.
- **Interactive Multi-Project Support**: The installer now supports custom ODD directory names (e.g., `.odd-fe`, `.odd-be`) and project-specific Atlas files.
- **Auto-Discovery & Migration**: Intelligent scanning for existing ODD configurations (`.odd-config`, `.env`) with an interactive selection menu for migration.
- **3-Tier Specs Structure**: Simplified specification folders into `1-planning`, `2-design`, and `3-development`.
- **Cache-Busting Installer**: Integrated timestamp-based `curl` requests to ensure fetch reliability from GitHub Raw.
- **Self-Purging Auditor Protocol**: Moved legacy cleanup responsibility from the installer script to the AI Auditor's intelligence.

## [v0.9.4] - 2025-12-26

### Added
- **Installer UX**: Added auto-detection of environment (New Install vs. Update).
- **Automation**: Automatic generation of initial Setup/Migration Orders upon installation to guide AI agents immediately.

## [v0.9.3] - 2025-12-26

### Changed
- **Archive System**: Finalized archive and roadmap management logic (separating Tasks/Roadmaps).
- **History System**: Split history into **System** (technical) and **Domain** (policy/context).
- **Integrity**: Synchronized all guide documents (`ODD-KIT-INIT`, `ODD-KIT-MIGRATION`) to current version.

## [v0.9.2] - 2025-12-26

### Changed
- **Library Structure**: Refined `books/` into sub-folders (`general/`, `domain/`, `tech/`) for better organization.
- **ATLAS**: Updated `ATLAS.md` with refined personas (Professor, Student, Librarian).
- **Setup**: Updated `install.sh` to handle v0.9.2 folder structure.

## [v0.9.1] - 2025-12-25

### Changed
- **System Core**: `Order` and `Progress` templates migrated from JSON to **Markdown + Frontmatter** for better readability.
- **Documentation**: Renamed source `ATLAS.md` to `ATLAS_TEMPLATE.md` to avoid confusion with user's `docs/odd/ATLAS.md`.
- **Scripts**: Updated `install.sh` to fetch `.md` templates and handle the new naming convention.

### Added
- **Templates**: Added standard templates for `Books` (`template/book.md`) and `History` (`template/history.md`).
- **Guide**: Added README guide to `docs/specs` explaining specification folder structure.

## [v0.9.0] - 2025-12-25

### Added
- Initial release of **ODD Starter Kit**.
- **Core Structure**: `.odd` directory structure (hidden until installed).
- **Scripts**: `install.sh` script to set up ODD environment in `docs/odd`.
- **Docs**: `ATLAS.md`, `roadmap.md` and initial JSON templates for Order Driven Development.
