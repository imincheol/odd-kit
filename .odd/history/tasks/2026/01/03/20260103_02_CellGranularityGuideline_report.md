---
id: "20260103_02_CellGranularityGuideline"
odd_version: "v1.1.1"
type: "report"
status: "completed"
created_at: "2026-01-03"
linked_order: "20260103_02_CellGranularityGuideline_order.md"
---

# 🏁 Report: Memory Cell 입자도 가이드라인 구축

## 1. Summary (요약)
- **Result**: Success
- **Key Changes**:
    - **입자도 가이드라인 작성**: Memory Cell의 이상적인 크기와 분리 기준을 명확히 정의
    - **Cell 생성 프로토콜 수립**: Turn 3 단계에서 AI가 따라야 할 구체적인 워크플로우 제공
    - **시스템 전반 통합**: ODD_PROMPT, README, memory/README에 가이드라인 참조 추가

## 2. Artifacts (산출물)
- `.odd/memory/core/cell_granularity_guideline.md` - 입자도 가이드라인 (정량/정성 기준, 분리 신호, 체크리스트)
- `.odd/memory/rules/cell_creation_protocol.md` - Cell 생성 프로토콜 (워크플로우, 시나리오, 자동화 템플릿)
- `.odd/ODD_PROMPT.md` - Turn 3에 입자도 체크 추가
- `.odd/memory/README.md` - Memory Cell 용어 통일 및 가이드라인 링크
- `README.md` - 유용한 팁에 세포화 원칙 추가

## 3. Problem Solved (해결된 문제)
**원래 문제**: 다른 프로젝트에서 ODD를 사용했을 때 레퍼런스가 2개밖에 생성되지 않음.

**근본 원인**: AI가 지식을 요약할 때 "얼마나 작게 쪼개야 하는가"에 대한 명확한 기준이 없어 자의적으로 판단.

**해결 방안**:
1. **정량적 기준**: 300~800줄 권장, 1000줄 초과 시 분리 필수
2. **정성적 기준**: 단일 책임, 독립성, 재사용성
3. **분리 신호**: 5가지 신호 중 2개 이상 해당 시 분리
4. **자동화**: Turn 3 체크리스트를 통한 자동 판단 유도

## 4. Expected Impact (기대 효과)
- **실제 프로젝트에서 수십 개의 세밀한 Cell 자동 생성**
- AI가 필요한 지식만 정밀하게 로드 가능 (토큰 절약)
- 지식의 유기적 연결 (연관성 네트워크)
- "2개밖에 안 생기는" 문제 완전 해결

## 5. Lessons Learned (교훈 & 회고)
- **명확한 기준의 중요성**: 추상적인 "원자화" 개념만으로는 부족, 구체적인 숫자와 체크리스트 필요.
- **실전 예시의 효과**: Good/Bad 예시를 통해 AI가 직관적으로 이해 가능.
- **프로토콜화**: Turn 3 단계를 프로토콜로 정의하여 일관성 확보.

## 6. Updates to Context (지식 현행화)
- [x] `.odd/ODD_PROMPT.md` - Turn 3에 입자도 체크 추가
- [x] `.odd/memory/README.md` - Memory Cell 용어 및 가이드라인 링크
- [x] `README.md` - 세포화 원칙 팁 추가
- [x] `.odd/memory/core/cell_granularity_guideline.md` - 신규 생성
- [x] `.odd/memory/rules/cell_creation_protocol.md` - 신규 생성
