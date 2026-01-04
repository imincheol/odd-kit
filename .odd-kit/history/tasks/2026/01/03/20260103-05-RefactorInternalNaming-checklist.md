---
id: "checklist_20260103_05_RefactorInternalNaming"
order_id: "order_20260103_05_RefactorInternalNaming"
status: "active"
---

# ✅ Checklist: 명칭 재정립 (ODD Kit Refactoring)

## 1. 파일 시스템 변경 (Physical Layer)
- [x] 루트 디렉토리명 변경 (`.odd` -> `.odd-kit`)
- [x] 부트 로더 파일명 변경 (`ODD-KIT-PROMPT.md` -> `PROMPT_KIT-odd-starter.md`)
- [x] 템플릿 부트 로더 변경 (`ODD-KIT-PROMPT_TEMPLATE` -> `PROMPT_KIT_TEMPLATE`)

## 2. 코드 및 설정 수정 (Code Layer)
- [x] `install.sh`: 변수명 (`ODD_` -> `ODD-KIT-`) 및 경로 전면 수정
- [x] `README.md`: 메타포(Body/Mind/Memory) 추가 및 경로 수정
- [ ] `PROMPT_KIT-odd-starter.md`: 내부 텍스트 수정 (ODD -> ODD Kit 컨셉 반영)
- [ ] `PROMPT_KIT_TEMPLATE.md`: 템플릿 내부 텍스트 수정

## 3. 템플릿 파일 전수 조사 (Template Layer)
- [ ] `odd-system.md`: "체크리스트 생성 규칙" 추가 및 명칭 수정
- [ ] `roadmap-template.md`: 버전 및 명칭 확인
- [ ] `install.sh`: 오타 및 누락 검증 (Dry Run)

## 4. 마무리 (Finalize)
- [ ] 잔여 `.odd` 폴더 삭제 확인
- [ ] Git Commit & Push
