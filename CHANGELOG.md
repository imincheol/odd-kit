# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v1.0.0] - 2025-12-27

### Added
- **Interactive Multi-Project Support**: The installer now supports custom ODD directory names (e.g., `.odd-fe`, `.odd-be`) and project-specific Atlas files.
- **Auto-Discovery & Migration**: Intelligent scanning for existing ODD configurations (`.odd_config`, `.env`) with an interactive selection menu for migration.
- **Flexible Path Policy**: Users can now specify installation paths for both ODD system and Specs folder, defaulting to hidden folders (e.g., `.odd/`) to maintain a clean root.
- **Template Naming Standard**: Source templates now explicitly use the `_TEMPLATE.md` suffix (e.g., `ODD_INIT_TEMPLATE.md`) to clearly distinguish them from active system files.
- **Dynamic Configuration**: All templates now support dynamic placeholders for paths and project names, which are automatically resolved during installation.

## [v0.9.4] - 2025-12-26

### Added
- **Installer UX**: Added auto-detection of environment (New Install vs. Update).
- **Automation**: Automatic generation of initial Setup/Migration Orders upon installation to guide AI agents immediately.

## [v0.9.3] - 2025-12-26

### Changed
- **Archive System**: Finalized archive and roadmap management logic (separating Tasks/Roadmaps).
- **History System**: Split history into **System** (technical) and **Domain** (policy/context).
- **Integrity**: Synchronized all guide documents (`ODD_INIT`, `ODD_UPDATE`) to current version.

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
- **Templates**: Added standard templates for `Books` (`_template/book.md`) and `History` (`_template/history.md`).
- **Guide**: Added README guide to `docs/specs` explaining specification folder structure.

## [v0.9.0] - 2025-12-25

### Added
- Initial release of **ODD Starter Kit**.
- **Core Structure**: `.odd` directory structure (hidden until installed).
- **Scripts**: `install.sh` script to set up ODD environment in `docs/odd`.
- **Docs**: `ATLAS.md`, `roadmap.md` and initial JSON templates for Order Driven Development.
