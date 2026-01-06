# Spec: README Structure & Bilingual Protocol (v2.0.0)

> **"The README is a mirror of the project's soul and a gateway for all users."**

## 🛡️ 1. Core Rule: Bilingual Redundancy
README는 세계 공용어인 **영어**와 제작자의 정확한 검증을 위한 **한국어**가 100% 동일한 내용을 담고 있어야 합니다.
- **Rule**: 영어 섹션([🌏 English Guide])이 먼저 나타나고, 그 뒤에 동일한 내용의 한국어 섹션([🇰🇷 한국어 가이드])이 중복 배치됩니다.
- **Reason**: 외부 사용자에게는 친절한 매뉴얼이 되며, AI 프롬프트 참조 시에는 정보의 밀도를 높여 정합성을 강화하는 장치가 됩니다.

## 🏗️ 2. Structural Mapping (Source to README)
루트 README는 `docs/specs/` 내의 상세 명세들을 소스(Source)로 하여 정보를 요약/복제합니다. 모든 섹션은 1:1 대응되는 스펙 소스를 가져야 합니다.

| README Section | Source Specification File | Content Type |
| :--- | :--- | :--- |
| **Title & Catchphrase** | `02-identity-and-goals-spec.md` | Summary |
| **1. Installation** | `05-installer-mechanism-spec.md` | Excerpt (Command) |
| **2. Core Philosophy** | `00-project-structure-spec.md` | Table (3 Pillars) |
| **3. Trust-Free Protocol**| `01-trust-free-protocol-spec.md` | Summary (OPR) |
| **4. Lifecycle (Turn)** | `03-operational-lifecycle-spec.md` | Table (Turn-Based) |
| **5. Architecture Diagram**| `00-project-structure-spec.md` | Diagram (Mermaid/Text) |

## 📋 3. Standard Section Layout
README는 다음의 순서를 엄격히 준수하여 작성됩니다. 리드미가 유실되어도 이 규격에 따라 `docs/specs/`의 내용을 조합하면 동일한 문서가 복구되어야 합니다.

1.  **Header**: `# 🚀 ODD Kit (v{{VERSION}})` 및 `02-identity` 기반 캐치프레이즈.
2.  **Horizontal Rule**: `---`
3.  **[🌏 English Guide]**:
    - `## 🛠️ 1. Installation`: `05-installer` 기반 설치 명령어.
    - `## 🏗️ 2. Core Philosophy`: `00-structure` 기반 3 Pillars 표.
    - `## 🛡️ 3. Trust-Free Protocol`: `01-trust-free` 기반 OPR 3단계 설명.
    - `## 🔄 4. Turn-Based Lifecycle`: `03-operational` 기반 Turn 테이블.
    - `## 📂 5. System Architecture`: `00-structure` 기반 시각적 다이어그램.
4.  **Horizontal Rule**: `---`
5.  **[🇰🇷 한국어 가이드]**:
    - 영어 가이드와 동일한 번호 및 구조로 번역본 배치.
6.  **Footer**: `## ⚖️ 상세 프로토콜` 링크 및 `docs/origin/` 참조 경로.

## 🔄 4. Update Policy
- **Specs First**: 모든 기능 수정은 `docs/specs/`의 상세 명세에서 먼저 이루어집니다.
- **Mirroring**: 상세 명세가 변경되면, README의 해당 섹션도 상응하는 요약본으로 즉시 업데이트되어야 합니다.
- **Verification**: 한국어 가이드를 읽었을 때 영어 가이드와 의미적/구조적 차이가 없는지 최종 확인합니다.

---
*Verified by Origin Spec: [docs/origin/01-project-structure-philosophy.md](../origin/01-project-structure-philosophy.md)*
