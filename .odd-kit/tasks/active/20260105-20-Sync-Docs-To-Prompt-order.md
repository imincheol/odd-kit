---
id: "20260105-20-Sync-Docs-To-Prompt-order"
odd-kit-version: "v2.0.0"
type: "docs"
status: "draft"
priority: "high"
created-at: "2026-01-05"
summary: "docs/specs와 docs/origin 내용이 ODD-KIT-PROMPT-TEMPLATE.md에 반영되었는지 체크 및 동기화"
---

# 📋 Order: Docs 내용 Prompt 반영 체크 및 동기화

## 0. Origin Prompt (The Source)
> **User Request (Raw)**:
> 그럼 docs 의 specs 와 origin 내용들이 prompt 에 반영되어 있는지 체크해봐

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
- **현재 상황**: 
  - `docs/specs/`: 8개 스펙 문서 존재
  - `docs/origin/`: 3개 오리진 철학 문서 존재
  - `odd-kit-template/odd/ODD-KIT-PROMPT-TEMPLATE.md`: 520줄 완전한 부트로더
  
- **체크 필요 사항**:
  - `docs/origin/02-trust-free-opr-philosophy.md`의 핵심 철학이 반영되었는지
  - `docs/specs/01-trust-free-protocol-spec.md`의 ORW 프로토콜이 반영되었는지
  - `docs/specs/03-operational-lifecycle-spec.md`의 Turn-Based System이 반영되었는지
  - 기타 스펙 문서들의 내용이 누락되지 않았는지

### 🎯 Goal (목표)
- **Primary**: docs 내용과 ODD-KIT-PROMPT-TEMPLATE.md 간 일관성 검증 및 누락 사항 동기화
- **Why**: 부트로더가 프로젝트의 모든 철학과 스펙을 완전히 반영해야 함

## 2. 🧠 Referenced Memory Cells (참조 메모리 셀)

- [ ] `docs/origin/02-trust-free-opr-philosophy.md`: Trust-Free 철학 원본
- [ ] `docs/specs/01-trust-free-protocol-spec.md`: ORW 프로토콜 스펙
- [ ] `docs/specs/03-operational-lifecycle-spec.md`: Turn-Based System 스펙
- [ ] `odd-kit-template/odd/ODD-KIT-PROMPT-TEMPLATE.md`: 현재 부트로더

## 3. Todo List (할 일)

### Phase 1: 현재 상태 분석
- [ ] docs/specs 전체 파일 목록 확인
- [ ] docs/origin 전체 파일 목록 확인
- [ ] ODD-KIT-PROMPT-TEMPLATE.md 현재 구조 분석

### Phase 2: 핵심 철학 반영 체크
- [ ] `docs/origin/02-trust-free-opr-philosophy.md` 핵심 내용 추출
  - "널 못 믿어서" - Trust-Free 철학
  - Order 불변성
  - Progress 무한 루프
  - Report 지식 환원
  - Memory Cell 연관성
- [ ] ODD-KIT-PROMPT-TEMPLATE.md에 반영 여부 확인
- [ ] 누락 사항 식별

### Phase 3: 스펙 문서 반영 체크
- [ ] `01-trust-free-protocol-spec.md` 체크
  - ORW Framework
  - Knowledge Atomization
  - User vs Agent Roles
- [ ] `03-operational-lifecycle-spec.md` 체크
  - Turn-0, Turn-Memory, Turn-Order
  - TM-0, TM-1, TM-2 상세
  - TO-1, TO-2 상세
- [ ] `07-role-spec.md` 체크
  - Architect, Worker, Librarian 페르소나
- [ ] 기타 스펙 문서 체크

### Phase 4: 누락 사항 동기화
- [ ] 누락된 핵심 내용 식별
- [ ] ODD-KIT-PROMPT-TEMPLATE.md에 추가
- [ ] 일관성 검증

### Phase 5: 문서화
- [ ] 반영 현황 리포트 작성
- [ ] 동기화 완료 확인

## 4. ✅ Success Criteria
- [ ] docs/origin과 docs/specs의 모든 핵심 내용이 ODD-KIT-PROMPT-TEMPLATE.md에 반영됨
- [ ] Trust-Free 철학의 핵심("널 못 믿어서")이 명확히 표현됨
- [ ] ORW 프로토콜의 모든 상세 내용이 포함됨
- [ ] Turn-Based System의 모든 단계가 상세히 설명됨
- [ ] Memory Cell 시스템이 완전히 문서화됨

---
## ⚖️ Approval
- [x] User Approved (2026-01-05 12:48 - Auto)

---

## Appendix A. 주요 체크 포인트

### docs/origin/02-trust-free-opr-philosophy.md 핵심
1. **Trust-Free 철학**: "널 못 믿어서" - AI를 신뢰하지 않음
2. **Order 불변성**: "오더를 시작하면 수정하지 말라고"
3. **Progress 무한 루프**: "내가 이제 됐다 라고 할때까지"
4. **Report 지식 환원**: "리포트의 내용은 즉시 Specs 업데이트와 Memory Cell 생성"
5. **Memory Cell 연관성**: "오더 자체도 메모리셀로 만들면 서로 연관성이 생길테고"

### docs/specs/01-trust-free-protocol-spec.md 핵심
1. **ORW Framework**: Order, Report, WorkingLog (현재는 Progress)
2. **Knowledge Atomization**: Memory Cells
3. **User vs Agent Roles**: 명확한 역할 구분

### docs/specs/03-operational-lifecycle-spec.md 핵심
1. **Turn-0**: Bootstrap
2. **Turn-Memory**: TM-0 (Archiving), TM-1 (Ingestion), TM-2 (Back-Sync)
3. **Turn-Order**: TO-1 (Active Phase), TO-2 (Micro-Update)
4. **운영 규칙**: 6가지 핵심 규칙

## Appendix B. 예상 누락 사항

- Trust-Free 철학의 감정적 표현 ("널 못 믿어서")
- Order 불변성의 강조
- Progress 무한 루프의 명확한 설명
- Memory Cell 간 연관성 시스템
- Turn-Memory의 상세 절차 (TM-0, TM-1, TM-2)
- 운영 규칙 6가지
