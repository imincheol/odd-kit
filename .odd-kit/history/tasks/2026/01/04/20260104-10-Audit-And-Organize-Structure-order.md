# Order: 20260104-10-Audit-And-Organize-Structure

## 🎯 Goal
전체 폴더 구조와 파일들을 확인하고, ODD Kit v2.0.0 규격에 맞게 구조를 재조정하며, 각 폴더별로 정리 작업을 수행하기 위한 체크리스트를 작성한다.

## 📝 Context
- 프로젝트가 Prompt Kit에서 ODD Kit v2.0.0으로 리브랜딩된 상태이다.
- 엔진 디렉토리(`.odd-kit`), 템플릿 디렉토리(`odd-kit-prompt-template`), 문서 디렉토리(`docs/specs`) 간의 정합성을 확인해야 한다.
- 레거시 파일이나 잘못된 위치에 있는 파일들을 정리해야 한다.

## 🏁 Checklist
- [x] ODD Kit v2.0.0 규격과 현재 구조 비교 분석
- [x] 비정상적인 위치의 파일 및 레거시 파일 식별
- [x] 항목별 정리용 체크리스트 생성
- [x] 구조 재조정 (이름 변경: odd-kit-prompt-template -> odd-kit-template)
- [x] 오리진 스펙 기록 (`docs/origin/01-project-structure-philosophy.md`)
- [x] **Trust-Free Protocol 정리**: `docs/origin/02.md` 내용을 바탕으로 에이전트 불신 기반의 오더-프로그레스-리포트 체계 스펙화
- [x] **Specs 폴더 flattening**: `docs/specs/` 내의 하위 폴더를 제거하고 파일 단위로 재정리
- [x] **`docs/origin/` 정제**: 사용자의 원본 요청만 남기고, 가공된 문서는 `specs/`로 이동
- [x] 최종 구조 확정 및 보고 (사용자 승인 필수)
