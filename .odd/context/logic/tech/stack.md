# 🛠️ Tech Stack (기술 스택)

> **"Simple is Best."**
> ODD Starter Kit는 최소한의 도구로 최대의 지속 가능성을 추구합니다.

## 1. Core Technologies
ODD 시스템의 기반이 되는 기술들입니다.

| Category | Technology | Usage |
| :--- | :--- | :--- |
| **Language** | **Markdown** (`.md`) | 모든 문서, 오더, 리포트의 표준 포맷. |
| **Data Format** | **YAML Frontmatter** | 문서의 메타데이터(ID, Status, Type) 정의. |
| **Version Control** | **Git** | 형상 관리 및 배포. |
| **Shell** | **Bash** | 설치 및 자동화 스크립트. |

## 2. Directory Structure Convention
파일 시스템 자체가 데이터베이스 역할을 합니다.

- `root/`
    - `README.md`: Bilingual Entry Point
    - `docs/`
        - `odd/`: ODD Core System
            - `ATLAS.md`: Bilingual System Prompt
            - `tasks/`: Active Orders (Markdown)
            - `books/`: Living Knowledge (Korean)
            - `history/`: Immutable Records (Korean)
        - `specs/`: Project Specifications

## 3. Recommended Tools
이 시스템을 100% 활용하기 위해 권장하는 도구입니다.

- **AI Code Editor**: Cursor, VS Code (with Copilot)
- **LLM**: Claude 3.5 Sonnet (Recommended for logic), GPT-4o
