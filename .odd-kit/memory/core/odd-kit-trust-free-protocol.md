---
type: core-protocol
revision: "v2.0.0"
priority: critical
last-updated: 2026-01-04
---

# 🛡️ Core Protocol: Trust-Free OPR Cycle

## 1. 개요
에이전트의 지능과 기억력을 신뢰하지 않는 '불신 기반(Trust-Free)' 운영 체계를 확립합니다. 모든 지식은 물리적 파일로 실재해야 합니다.

## 2. No Order, No Action
- 승인된 오더(Order) 없이는 어떠한 코드나 문서 작업도 하지 않습니다.
- 오더 제안 단계에서 에이전트의 이해도를 검증받고 승인을 득해야 합니다.

## 3. Order Immutability (오더 불변성)
- 한 번 시작된 오더는 수정하지 않습니다. 모든 변경 사항, 추가 요청, 버그 수정은 **Progress** 기록에 기록됩니다.
- 오더 시작 시점의 계획과 최종 결과(Report) 사이의 차이(Gap)를 분석하는 것이 명세화의 핵심입니다.

## 4. Infinite Progress (무한 프로그레스)
- 사용자가 "됐다(OK/Complete)"라고 선언할 때까지 작업은 프로그레스 단계에 머무릅니다.
- 에이전트 스스로의 판단에 따른 임의 종료는 금지됩니다.

## 5. Knowledge Return (지식 환원)
- 작업의 완료는 단순히 코드를 고치는 것이 아니라, 해당 과정에서 얻은 지식을 **Specs(명세)**와 **Memory Cells(기억 세포)**에 환원하는 것을 의미합니다.
- 프로그레스의 버그 수정 이력 등은 별도의 이슈/이볼루션 로그 메모리 셀로 분리하여 보관합니다.

---
*Verified by Origin: [docs/origin/02-trust-free-opr-philosophy.md](../../../docs/origin/02-trust-free-opr-philosophy.md)*
