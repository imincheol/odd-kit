# 📦 Order: 20260103_04_Turn_System_Definition

> **상태**: `Completed`
> **날짜**: 2026-01-03
> **우선순위**: High
> **참조 메모리 셀**: `pk-operational-protocol-v130.md`, `pk-architecture-v130.md`

## 🎯 목표
Prompt Kit의 핵심 운영 단위인 '턴(Turn)' 시스템을 명시적으로 정의하고, 사용자와 에이전트가 한눈에 이해할 수 있는 통합 가이드를 구축합니다. 특히 'Turn-0'의 개념을 정립하여 세션 시작 시의 필수 행동을 규정합니다.

## 🛠️ 요구 사항
1. **Turn-0 정의**: 세션 진입 시 최초로 수행하는 '지식 흡수(Ingestion)' 과정을 **Turn-0**로 명문화합니다.
2. **턴 생애주기 도식화**: Turn-0(초기화) -> Turn-Memory(동기화) -> Turn-Order(실행)로 이어지는 순환 구조를 한눈에 보이게 정리합니다.
3. **문서 반영**:
   - `README.md`: 사용자를 위한 턴 시스템 요약 섹션 보강.
   - `docs/specs/1_planning/pk-operational-protocol.md`: 상세 운영 프로토콜에 Turn-0 반영.
   - `.prompt-kit/memory/cells/tech/pk-turn-system.md`: (신규) 턴 시스템 전용 메모리 셀 생성.
4. **에이전트 가이드**: 모든 에이전트가 대화 시작 시 수행해야 할 'Turn-0' 매뉴얼을 명시합니다.

## 📝 작업 계획
1. [ ] (Turn-Sync) 현재 턴 관련 설명들 전수 조사 및 통합 초안 작성.
2. [ ] (New Cell) `pk-turn-system.md` 메모리 셀 생성.
3. [ ] (Update Specs) `pk-operational-protocol.md` 업데이트.
4. [ ] (Update README) `README.md`에 시각적/구조적 턴 설명 추가.
5. [ ] (Reporting) 작업 완료 보고 및 승인 요청.

---
**Approval Status**: `Waiting` (유저의 승인을 기다리는 중입니다.)
