# Order: Consolidate All Specs into Bootloader (20260104-14)

> **Status**: Proposed
> **Context**: Enhancing AI context adherence by centralizing all core specs into the bootloader to prevent reference failure.
> **Referenced Memory Cells**: All files in `docs/specs/`

## 🎯 Goal
`docs/specs/`에 분산된 ODD Kit v2.0.0의 핵심 상세 명세(README 제외)를 모두 부트 로더(`.odd-kit/ODD-KIT-PROMPT-odd-starter.md`)에 전면 기술하여, 에이전트가 별도의 파일 참조 없이도 완벽한 문맥을 유지하도록 합니다.

## 📋 Todo List
- [ ] **Content Extraction**: `docs/specs/` 내의 00, 01, 02, 03, 05, 07번 스펙의 모든 상세 내용을 읽고 추출.
- [ ] **Giant Prompt Assembly**: 추출된 지식을 논리적 순서에 따라 하나의 거대한 부트 로더 문서로 병합.
- [ ] **Pillar Sync**: `odd-kit-template/ODD-KIT-PROMPT-TEMPLATE.md`에도 동일하게 반영하여 배포 원형을 강화.
- [ ] **Verification**: 병합된 부트로더가 핵심 운영 철학(3-Pillar, Trust-Free, Turn-Based)을 누락 없이 포함하고 있는지 검토.

## 🚩 Success Criteria
- [ ] 부트 로더 한 페이지만으로 ODD Kit의 모든 운영 규칙과 설계를 100% 이해 가능.
- [ ] 에이전트가 "몰랐다"거나 "참조하지 못했다"는 핑계를 댈 수 없는 강력한 문맥 주입기 완성.
