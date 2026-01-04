---
type: memory-cell
category: tech
subcategory: architecture
subject: Naming Convention & Alias (v2.0.0)
status: active
priority: high
last-updated: 2026-01-04
revision: "v2.0.0"
---

# 🧠 Memory Cell: ODD Kit Naming Convention (v2.0.0)

## 1. Context Identity Rule
- **Standard**: `ODD-KIT-PROMPT-{{PROJECT-NAME}}.md`.
- **Placeholder**: `{{PROJECT-NAME}}`, `{{ODD-KIT-DIR}}`, `{{SPECS-DIR}}`.
- **ID Separator**: 하이픈(`-`)을 표준으로 사용하며, 날짜/번호 구분 시에만 제한적으로 언더바(`_`)를 허용할 수 있으나 가급적 하이픈으로 통일한다.

## 2. Turn Lifecycle Naming (Aliases)
턴 시스템 단계는 공식 명칭(영어)과 직관적인 별칭(Korglish)을 병행하여 사용한다.

| 공식 명칭 (Official) | 단계 (Phase) | 별칭 (Alias/Korglish) |
| :--- | :--- | :--- |
| **Turn-0** | **Bootstrap** | **자아 로딩 / 부트스트랩** |
| **Turn-Memory-0** | **Archiving** | **턴-초기화 / 아카이빙** |
| **Turn-Memory-1** | **Ingestion** | **턴-전체-메모라이즈 / 지식 원자화** |
| **Turn-Memory-2** | **Back-Sync** | **턴-스펙반영 / 역동기화** |
| **Turn-Order-1-1** | **Planning** | **턴-태스크-오더 / 기획** |
| **Turn-Order-1-2** | **Execution** | **턴-태스크-프로그레스 / 수행** |
| **Turn-Order-1-3** | **Reporting** | **턴-태스크-리포트 / 결과 보고** |
| **Turn-Order-2** | **Micro-Sync** | **턴-태스크-메모라이즈 / 수시 업데이트** |

## 3. File Asset Naming
- **Order 파일**: `YYYYMMDD-{{NN}}-{{Title}}-order.md`
- **Memory Cell**: `odd-kit-{{topic-name}}.md`
- **Setup Template**: `{{NAME}}-TEMPLATE.md`

---
**Related Cells:**
- `odd-kit-structure-spec-v200.md`
- `odd-kit-system-v200.md`
