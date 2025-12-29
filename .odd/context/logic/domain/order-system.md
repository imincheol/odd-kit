# 🔄 The Order System (오더 시스템)

> **"No Order, No Work."**
> 승인된 주문만이 코드가 된다. 이것은 ODD의 제1원칙입니다.

## 1. Concept (개념)
오더 시스템은 AI와의 모호한 대화를 명확한 **작업 지시서(Order)**로 변환하여 협업의 정확도를 높이는 프로세스입니다.
구두 계약(Chat)이 아닌 서면 계약(Markdown)을 통해 작업의 **범위, 목표, 맥락**을 고정합니다.

## 2. The Artifacts (3대 문서)

### 📋 Order (명령서)
- **파일명**: `order.md`
- **역할**: "무엇을 할 것인가?" (맥락 참조 + 실행 명령)
- **필수 항목**:
    - `id`: 고유 식별자
    - `context`: 명령의 근거가 되는 `Context` 및 `Specs` 문서 링크 (필수)
    - `todo`: 실수를 방지하기 위한 세부 작업 목록
- **승인 절차**: `draft` 상태로 작성 -> User 승인 -> `status: active` 변경 -> 작업 시작.

### 🚀 Progress (진행 일지)
- **파일명**: `progress.md`
- **역할**: "어떻게 하고 있는가?" (작업 로그)
- **내용**:
    - 작업 착수 시점의 생각 (Plan)
    - 진행 중 발생한 문제 및 해결 과정 (Log)
    - 변경된 파일 목록 (Artifacts)
- **중요성**: AI 세션이 끊겨도 이 파일을 읽으면 작업을 이어서 할 수 있습니다.

### 🏁 Report (결과 보고서)
- **파일명**: `report.md`
- **역할**: "결과는 무엇인가?" (최종 산출물 + 회고)
- **후속 조치**: 작업이 끝나면 **감찰관(Auditor)**이 리포트와 증거를 분석하여 `Context`(Logic, History)를 정제하고 현행화합니다.

## 3. The Lifecycle (생명주기)
1.  **Context**: 관련 `Context` 및 `Specs` 정독.
2.  **Order**: `tasks/_template/order.md` 복사 및 작성.
3.  **Active**: User 승인 및 작업 수행.
4.  **Audit**: 작업 완료 후 결과 보고 및 `Context` 업데이트.
5.  **Archive**: 증거 자료를 `archive/tasks/`로 이동.
