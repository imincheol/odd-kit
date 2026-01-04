---
id: "order_20260103_12_Turn4_MacroUpdate"
title: "Turn 4: Macro-Update (Archive to Memory)"
status: "queued"
priority: "high"
assignee: "odd-agent"
created-at: "2026-01-03T18:48:00"
---

# 📋 Order: Turn 4 매크로 업데이트 (기억 동기화)

## 1. 배경
다수의 작업이 완료되어 아카이빙(`history/`)되었으나, `memory/`에는 아직 반영되지 않았다.

## 2. 목표
- `history/`의 최근 변경 사항을 읽어 `memory/cells/`를 업데이트한다.
- 누락된 맥락을 연결(Relatedness)한다.
