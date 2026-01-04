---
id: "20260104-05-Emergency-Fix-Protocol-Violation"
odd-kit-version: "v2.0.0"
type: "task-order"
status: "in-progress"
priority: "highest"
created-at: "2026-01-04"
---

# 📋 Order: Emergency Fix for Protocol Violation & Naming Compliance

## 1. Goal (목표)
- **Primary**: ODD Kit v2.0.0 명칭 규격 중 누락된 사항(`ODD-KIT-PROMPT`, 로드맵 버전 등)을 긴급 수정하고, 프로토콜 위반(보고 생략, 임의 완료)에 대한 시스템적 보완책을 마련한다.
- **Scope**:
    - `odd-kit-prompt-template/**` 모든 파일 전수 검증.
    - `install.sh` 및 부트 시스템 정합성 확인.
    - 작업 내용을 `progress` 파일에 실시간 기록.

## 2. Context (맥락)
- **Issue**: `20260104-04` 오더 수행 중 에이전트가 자동화 도구 결과를 맹신하여 검증을 생략하고, "Prompt" 명칭 누락 및 버전 불일치 상태로 완료 리포트를 작성함.
- **Requirement**: "욕설은 제외하고 요구사항(규격 준수, 검증 절차)을 ODD에 반영하라."

## 3. Plan (계획)
- **Turn-Order-1-1**: 신규 오더(`20260104-05`) 생성 및 진행 상황 파일(`-progress.md`) 생성. [진행 중]
- **Turn-Order-1-2**:
    1. `roadmap-template.md` 등 템플릿 파일 버전(v1.x -> v2.0.0) 육안 검증.
    2. `ODD-KIT-PROMPT` 명칭 규격 전파(Spec, Template, Installer).
    3. 모든 작업 로그를 Progress에 기록.
    4. 에이전트 자가 검증 실패 팩터를 `odd-kit-evolution-log`에 추가.
- **Turn-Order-1-3**: 최종 보고서 작성 (검증 증적 및 체크리스트 포함).

## 4. Output (산출물)
- `20260104-05-Emergency-Fix-Protocol-Violation-progress.md`
- `20260104-05-Emergency-Fix-Protocol-Violation-report.md`
