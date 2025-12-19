# Order Driven Development (ODD)

이 프로젝트는 **Order Driven Development**를 따릅니다.
모든 작업은 **분석(Strategy) → 지시(Order) → 실행(Progress) → 보고(Report)** 과정을 엄격히 준수합니다.

## 📂 Status by Files

작업 상태는 `docs/order/tasks/YYYY/MM/DD/` 내의 파일 조합으로 식별합니다.

1. **Pending**: `_order.json`만 존재. (승인 전/작업 전)
2. **In Progress**: `_order.json` + `_progress.json` 존재. (작업 중, 피드백 루프)
3. **Done**: `_order.json` + `_report.json` 존재. (최종 완료, Progress 삭제됨)

## 🚀 Workflow Rules

1. **Phase 0. Strategy**: 복잡한 요청은 AI가 먼저 Order 구조(분할/병합)를 제안하고 승인받습니다.
2. **Phase 1. Order**: `_templates/order.json`을 사용하여 Order를 생성하고, 4단계(기획/디자인/마크업/구현) 리뷰를 작성합니다.
3. **Phase 2. Execution**: `progress.json`을 생성하여 작업 로그를 기록하며, 스펙 문서부터 수정한 뒤 코드를 작성합니다.
4. **Phase 3. Completion**: 결과 승인 시 `report.json`을 남기고 `progress.json`을 삭제합니다.
