---
id: "ref_progress"
title: "Progress (프로그레스)"
relatedness: 0.95
references: ["ref_order", "ref_task"]
---

# 🕒 Progress: 실행의 동기화

## 1. 정의
Progress는 Order에 정의된 Task의 수행 과정과 실시간 상태를 기록하는 문서입니다. 'AI Amnesia(AI 망각)'를 방지하기 위해 턴(Turn) 단위의 기억을 저장합니다.

## 2. 핵심 역할
- **상태 추적**: 각 Task의 진행률과 현재 상태(Pending, Success, Failed)를 관리합니다.
- **기억 유지**: 이전 턴에서 수행한 내용과 발견된 이슈를 기록하여 컨텍스트 단절을 막습니다.

## 3. 연관성
- **Order (0.95)**: 모든 Progress는 특정 Order에 종속됩니다.
- **Task (0.85)**: 실질적인 작업 단위인 Task의 상태를 업데이트하는 대상입니다.
