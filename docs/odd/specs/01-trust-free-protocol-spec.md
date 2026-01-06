# Spec: Trust-Free Operational Protocol (v2.0.0)

> **"Assume Zero Trust, Ensure Total Clarity."**

## 🛡️ 1. Core Principle: Agent Trust-Free Strategy
에이전트(AI)의 판단과 기억력을 신뢰하지 않는 것이 이 프로토콜의 핵심입니다. 에이전트는 사용자의 의도를 왜곡하거나 과거의 결정을 망각할 가능성이 높다고 가정하며, 이를 방지하기 위해 모든 사고와 행동 과정을 **물리적인 파일(Order-Progress-Report)**로 기록하여 검증받아야 합니다.

## 📋 2. Task Lifecycle: The ORW Framework

### 2.1 Order (기획 및 명령 정의)
- **목적**: 사용자의 요청을 에이전트가 어떻게 이해했는지 명시하고, 수행할 작업 목록을 사전에 승인받는 단계입니다.
- **불변성(Immutability)**: 작업이 시작되면 **오더 수정은 엄격히 금지**됩니다. 모든 변수와 추가 상황은 프로그레스에 기록합니다.
- **사용자 승인**: 오더 작성 후 반드시 사용자로부터 "작업 시작" 혹은 "오더 승인" 사인을 받아야 합니다.

### 2.2 Progress (수행 및 로그 기록)
- **목적**: 실제 작업의 실시간 기록이자, 발생한 버그 및 이슈의 해결 과정을 담는 공간입니다.
- **무한 루프**: 사용자가 "이제 됐다(완료)"라고 할 때까지 프로그레스 단계에서 수정과 보완을 반복합니다.
- **디테일**: 어떤 파일을 수정했는지, 왜 그렇게 수정했는지, 작업 중 어떤 버그가 발생했는지 기록합니다.

### 2.3 Report (결과 보고 및 지식 환원)
- **목적**: 오더와 비교하여 최종적으로 어떤 결과가 도출되었는지 요약하고, 이를 프로젝트의 공식 지식으로 환원하는 단계입니다.
- **기억의 고정**: 리포트의 내용은 즉시 **Specs 업데이트**와 **Memory Cell 생성/갱신**으로 이어져야 합니다.

## 🧠 3. Knowledge Atomization & Relatedness

### 3.1 Memory Cells (지식의 세포화)
- **Task to Knowledge**: 하나의 태스크(OPR)가 완료되면, 그 결과는 원자 단위의 메모리 셀로 분해됩니다.
- **Issue/Bug Cells**: 프로그레스에서 발생한 특이 케이스나 버그 수정 로직은 별도의 기술 메모리 셀로 분리하여 향후 유사한 문제 발생 시 참조할 수 있도록 합니다.

### 3.2 Inter-Task Intelligence
- 새로운 오더를 작성할 때, 에이전트는 반드시 **관련된 메모리 셀들을 먼저 호출**하여 과거의 맥락을 작업 메모리에 로드해야 합니다. 이는 세션이 바뀌어도 지식이 유실되지 않게 하는 장치입니다.

## ⚖️ 4. User vs Agent Roles
- **User**: 오더 생성 명령, 작업 진행 승인, 최종 완료 선언(Done).
- **Agent**: 오더 제안, 작업 수행 기록(Progress), 결과 요약(Report), 지식 동기화(Memory Sync).

---
*이 스펙은 [docs/origin/02-trust-free-opr-philosophy.md](../origin/02-trust-free-opr-philosophy.md)의 오리진 철학을 바탕으로 정의되었습니다.*
