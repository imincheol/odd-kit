# Order: Update Bootloader with Cautions Section (20260104-13)

> **Status**: Proposed
> **Context**: Need for explicit warnings in the bootloader to prevent repetitive protocol failures.
> **Referenced Memory Cells**: `odd-kit-system-v200.md`, `odd-kit-evolution-log.md`

## 🎯 Goal
`.odd-kit/ODD-KIT-PROMPT-odd-starter.md` 파일에 에이전트가 범하기 쉬운 실수(Critical Failures)를 방지하기 위한 **주의사항(Cautions)** 섹션을 추가합니다.

## 📋 Todo List
- [ ] **Section Addition**: 부트로더 파일 하단에 `⚠️ Cautions (지능적 사고 방지)` 섹션 추가.
- [ ] **Content Mapping**: `evolution-log`와 `system-v200`에서 추출한 핵심 금기 사항 명시.
    - 오더 본문 수정 금지 (Order Mutation)
    - 임의 아카이빙 금지 (Premature Archiving)
    - 사용자의 완료 선언 전 셀프 종료 금지
- [ ] **Pillar Sync**: `odd-kit-template` 내의 부트로더 템플릿에도 동일한 내용 반영.

## 🚩 Success Criteria
- [ ] 부트로더를 읽는 즉시 에이전트가 금기 사항을 인지할 수 있음.
- [ ] 엔진과 템플릿의 부트로더 정합성 일치.
