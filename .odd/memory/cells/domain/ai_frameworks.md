---
type: summary
category: domain
version: "v1.1.1"
last_updated: "2026-01-03"
relatedness: 0.75
---

# ⚖️ AI Framework Comparison Summary

## 1. 개요 (Overview)
ODD와 업계의 타 AI 에이전트 협업 라이브러리/프레임워크 간의 차이점과 보완적 활용 방안을 분석합니다.

## 2. 프레임워크별 특성 비교
| 특징 | ODD (Order-Driven) | Google Spec Kit | Claude Skills |
| :--- | :--- | :--- | :--- |
| **핵심 목적** | 세션 간 지식 관리 및 기록 | 엄격한 설계 명세 관리 | AI의 실행 능력(Tool) 캡슐화 |
| **강점** | 컨텍스트 망각 방지 (Memory) | 상세한 구현 가이드 (Blueprint) | 도구 활용 자동화 (Automation) |
| **유연성** | 높음 (Markdown 기반) | 중간 (JSON-linked MD) | 낮음 (특정 플랫폼 의존) |

## 3. 시너지 활용 모델
프로젝트의 성숙도와 요구 사항에 따라 각 프레임워크를 다음과 같이 결합하여 사용할 수 있습니다:
1. **설계 단계 (Spec Kit)**: 대규모 시스템 설계 시 `spec-kit`을 사용하여 상호 운용성 및 상세 명세 확보.
2. **관리 및 협업 단계 (ODD)**: 일상적인 개발 작업과 지식 누적에는 `ODD`를 주력 시스템으로 활용.
3. **자동화 단계 (Skills)**: 반복적인 작업(예: 인프라 배포, 데이터 마이그레이션)은 `Skills`로 정의하여 자동화 수행.

## 4. ODD의 차별적 지위
ODD는 특정 기술 스택이나 클라우드 벤더에 종속되지 않는 **"지식 관리 인프라"**로서의 성격을 띠며, AI 원어민적 개발(AI-Native Development) 환경을 구축하는 기초가 됩니다.
