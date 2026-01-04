---
id: "order_20260103_10_DefineTurnSystem"
title: "Define 4-Turn Task Lifecycle Protocol"
status: "in_progress"
priority: "highest"
assignee: "odd-agent"
created-at: "2026-01-03T18:35:00"
---

# 📋 Order: 4-Turn 태스크 라이프사이클 정의

## 1. 배경
현재 태스크 완료 후 아카이빙(Archive) 및 메모리 반영이 일관성 없이 이루어지고 있다.
이를 해결하기 위해 작업의 시작부터 끝, 그리고 회고까지를 4단계의 턴(Turn)으로 명확히 규정해야 한다.

## 2. 목표
`odd-kit-system.md`에 다음 4-Turn Lifecycle을 정의한다.

- **Turn 1 (Planning)**: Order 생성 및 분류.
- **Turn 2 (Execution)**: Progress/Checklist 생성 및 작업 수행.
- **Turn 3 (Completion & Micro-Update)**: Report 작성 -> Archive(이동) -> Memory 반영(해당 건만).
- **Turn 4 (Macro-Update)**: 전체 History 기반의 Global Memory 동기화 (별도 수행).

## 3. 기대 효과
- 완료된 작업이 `active` 폴더에 방치되는 현상 방지.
- 작업 끝남과 동시에 '기억'이 최신화됨.
- Turn 4 분리를 통한 토큰 효율성 증대.
