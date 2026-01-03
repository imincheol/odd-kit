---
id: "ref_relatedness_guideline"
title: "연관성(Relatedness) 및 언어의 거리 가이드라인"
relatedness: 1.0
tags: ["core", "protocol", "architecture"]
---

# 📖 연관성(Relatedness) 및 언어의 거리

## 1. 개요
ODD 시스템의 지식 원자화(Atomization)를 위해 문서 간의 관계를 수치화한 개념입니다. 이는 전통적인 '거리(Distance)' 개념(가까울수록 작음)을 역전시켜 '연관성(Relatedness)'(가까울수록 큼)으로 정의합니다.

## 2. 언어의 거리 (Language Distance) 차용
언어학에서의 '언어의 거리'는 두 언어가 얼마나 유사한지를 측정하는 척도입니다. ODD에서는 이를 지식 단위(Atomic Reference) 간의 **개념적 유사성**과 **참조 빈도**로 정의합니다.

- **개념적 중첩**: 두 문서가 다루는 도메인이 얼마나 겹치는가?
- **운영적 의존성**: 작업을 수행할 때 두 문서를 동시에 참조해야 하는 정도.

## 3. 연관성 점수 산정 기준 (0.0 ~ 1.0)

- **0.9 - 1.0 (Critical)**: 시스템적으로 직접 연결된 상호 보완적 관계 (예: Order - Progress)
- **0.7 - 0.8 (Strong)**: 기능적으로 밀접하게 연관되어 시너지를 내는 관계 (예: Task - History)
- **0.4 - 0.6 (Moderate)**: 동일한 시스템 하에 있으나 독립적인 기능을 수행하는 관계 (예: Reference - Prompt)
- **0.1 - 0.3 (Weak)**: 간접적인 영향만 주는 관계.
- **0.0 (None)**: 연관성이 없음.

## 4. 활용 방법
- AI 에이전트가 특정 작업을 수행할 때, 연관성 점수가 높은 문서를 우선적으로 컨텍스트(Context)에 주입합니다.
- 점수가 높을수록 `ODD_PROMPT.md`에서 강한 참조를 유지합니다.
