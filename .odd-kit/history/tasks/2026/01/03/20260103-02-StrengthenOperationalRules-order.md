---
id: "20260103_02_StrengthenOperationalRules"
odd-version: "v1.1.0"
type: "refactor"
status: "draft"
priority: "high"
created-at: "2026-01-03"
summary: "오더 생성 후 승인 대기 강제 및 사후 관리 프로세스 강화"
context:
  - ".odd/reference/rules/odd-system.md"
  - ".odd/ODD-KIT-PROMPT.md"
---

# 📋 Order: 운영 규칙 강화 및 턴(Turn) 기반 제어 시스템 구축

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. 에이전트가 오더 작성 직후 사용자의 명시적 승인 없이 즉시 수행으로 넘어가는 현상을 막기 위해 기술적/논리적 '턴(Turn)' 개념 도입이 필요함.
2. 각 작업 단계가 단일 응답 내에서 섞이지 않도록 물리적 경계를 설정해야 함.

### 🎯 Goal
- `odd-system.md`에 **'턴 기반 운영 프로세스 (Turn-based Operation)'** 명문화.
- **Turn 1 (Analysis & Order)**, **Turn 2 (Execution)**, **Turn 3 (Archive & Reference)** 구조 확립.
- 작업 완료 후 아카이빙 및 레퍼런스 업데이트를 자동화된 루틴으로 포함.

## 2. Todo List (할 일)

### A. 턴(Turn) 구조 정의 및 규칙 개정 (`odd-system.md`)
- [ ] '5. 턴 기반 실행 원칙 (Turn-Based Control)' 섹션 추가.
- [ ] Turn 1: 오더 수립 및 승인 대기 (도구 사용 제한).
- [ ] Turn 2: 승인 후 실제 작업 수행 및 로그 기록.
- [ ] Turn 3: 리포트 작성, 레퍼런스 업데이트 및 아카이빙.

### B. 프로세스 내재화 (`ODD-KIT-PROMPT.md` 및 가이드)
- [ ] `Operational Flow`를 턴 순서에 맞게 재구조화.

## 3. Pre-condition (사전 조건)
- 이 오더는 파일 수정 직후 중단되어야 함.
- 사용자로부터 **"Turn 1 승인"** 또는 **"진행해"**라는 신호를 받은 후에만 Turn 2(실행) 단계로 진입함.
