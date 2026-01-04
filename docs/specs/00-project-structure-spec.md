# Spec: Project Structure & Philosophy (v2.0.0)

## 🏗️ The 3 Pillars of Project Root

The project is structured based on a chronological and functional hierarchy. The priority of these folders defines the identity of ODD Kit.

### 1. `docs/` (Present / The Spec)
- **Priority**: 1 (Highest)
- **Role**: The Blueprint of the Project.
- **Principle**: Everything currently implemented must be recorded here. If it's not in the specs, it doesn't exist.
- **Temporal Focus**: **The Present**. It only contains active, valid specifications. Past versions are removed to maintain clarity on what the project is right now.

### 2. `odd-kit-template/` (Future / The Framework)
- **Priority**: 2
- **Role**: The Prototypical Engine for distribution.
- **Principle**: This is the template used when other projects install ODD Kit. It contains the logic and standards for how ODD operates.
- **Temporal Focus**: **The Future**. It represents what the project will provide to its users.

### 3. `.odd-kit/` (Past to Present / The Engine)
- **Priority**: 3
- **Role**: Active Working Memory & Context Management.
- **Principle**: This folder is used to develop the ODD Kit project itself using the ODD methodology. It records how the `docs/` and `template` were created and managed.
- **Temporal Focus**: **Past to Present**. It stores the accumulation of tasks, memory cells, and history.

---
*Verified by Origin Spec: [docs/origin/01-project-structure-philosophy.md](../origin/01-project-structure-philosophy.md)*
