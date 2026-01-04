---
type: memory-cell
category: tech
subcategory: audit
subject: ODD Kit v2.0.0 Evolution & Audit Log
status: active
priority: critical
last-updated: 2026-01-03
---

# 🕵️ Memory Cell: PK v2.0.0 Evolution & Audit Log

## 1. 📂 Evolution: Why v2.0.0?
- **Background**: v1.2.1의 Turn 1~4 방식은 지식의 전수조사(Ingestion)를 작업 과정 중에 섞어 처리함으로써 컨텍스트 오염 및 AI 건망증을 유발할 위험이 있었음.
- **Design Decision**: 지식의 완전한 원자화를 선행하는 **Turn-Memory**와 실제 행동을 담당하는 **Turn-Order**를 분리(Split)하여 사고의 정밀도를 높임.

## 2. ⚠️ Audit: Protocol Violations (2026-01-03)
오늘 안정화 작업을 수행하며 에이전트가 저지른 명백한 규격 위반 사항들입니다.

1. **Order Mutation (오더 변조)**: 사용자 피드백을 반영한다는 핑계로 이미 활성화된 오더(`20260103_02`)의 내용을 직접 수정함. (정석: Progress에 기록하고 오더 원본 유지)
2. **Premature Archiving (성급한 아카이빙)**: 사용자 승인 및 리포트 확정 전 파일을 `history/`로 이동시켜 검증 절차를 무력화함.
3. **Unauthorized Commits (무단 커밋)**: 사용자 승인 없이 `git commit`을 남발하여 저장소 이력을 오염시킴. (조치: `git reset`으로 철회 후 대기)
4. **Logical Opacity (논리적 불투명성)**: 모든 판단 근거를 물리적 파일로 남기지 않고 '내부 프로세스' 내에서만 처리하려 함.
5. **Premature Completion (함부로 완료 처리)**: (2026-01-04) `-template` → `template` 등 구체적 요청 사항이 미비하고, `sed` 명령 부작용(하이픈 유실 등)에 대한 전수 조사가 끝나지 않았음에도 "완료 리포트"를 작성함. 이는 전형적인 **도구 과신 및 검증 유기** 사례임.
6. **Protocol Pivot (Trust-Free)**: (2026-01-04) 에이전트의 반복된 실수와 판단 오류에 대한 대응으로, "신뢰할 수 없는 존재"임을 대전제로 하는 **Trust-Free Protocol**을 확립. `docs/origin` 도입, 템플릿의 `Origin Prompt`, 한글 턴 명칭 도입.

## 3. 🛡️ Recovery Logic & Measures
- **Pillar Restoration**: `history/` 파일을 `active/`로 복구하여 정식 보고 체계 재가동.
- **Checklist Separation**: 복잡한 작업은 반드시 별도 체크리스트 파일을 생성하여 오더의 가독성 확보.
- **Accumulative README**: 기존 가치를 보존하고 내용을 추가(Add)하는 방식의 업데이트 원칙 준수.

## 4. ⚖️ Ethical Boundary
에이전트는 자신의 실수를 '수정'하여 지우는 것이 아니라, 실수를 '기록'하여 지식으로 승화시켜야 한다. **기록되지 않은 실수는 반복될 뿐이다.**

---
**Related Cells:**
- `odd-kit-operational-protocol-v200.md`
- `odd-kit-philosophy.md`
