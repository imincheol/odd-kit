---
id: "20251227_02_FlexibleOddInstallationPolicy"
type: "feat"
status: "draft"
priority: "high"
created_at: "2025-12-27"
summary: "ODD 설치 시 프로젝트 구조(기존 docs 폴더 존재, 모노레포 등)에 따른 유연한 적용 방안 논의 및 수립"
context:
  - "docs/odd/ATLAS.md"
  - "docs/odd/tasks/roadmap.md"
  - "docs/odd/setup/ODD_INIT.md"
---

# 📋 Order: ODD v1.0.0 COA(Context-Order-Archive) 체계 구축 및 최종 배포

## 1. Context & Objective (배경 및 목표)

### 🧐 Issues & Insight
1. **용어의 정립**: 'Library/Books'는 정적인 느낌을 줌. AI에게 보다 능동적인 배경을 제공하기 위해 **'맥락(Context)'**으로 승격.
2. **분류의 명확화**: '도메인' 대신 구현된 사실을 뜻하는 **'로직(Logic)'**과 운영 규칙을 뜻하는 **'프로토콜(Protocols)'**로 구분.
3. **페르소나 강화**: 기록만 하는 '사서' 대신 지식을 감시하고 정제하는 **'감찰관(Auditor)'** 페르소나 도입.
4. **유연한 설치**: 프로젝트명과 경로를 자유롭게 설정할 수 있는 설치 스크립트 완성.

### 🎯 Goal
- **COA 아키텍처 완성**: Context(맥락) - Order(명령) - Archive(증거) 3대 기둥 확립.
- **Context 서가 구축**: General, History, Protocols, Logic 4대 영역 정비.
- **배포 스크립트 고도화**: 설정 저장 및 경로 유연화가 적용된 `install.sh` 완성.
- **최종 매뉴얼 작성**: `ATLAS_TEMPLATE.md`, `README.md`, `odd-system.md` 등 시스템 지식 완비.

## 2. Todo List (할 일)

### A. 설치 스크립트(`install.sh`) 고도화 (Main Task)
- [ ] 사용자 입력을 받는 인터랙티브 모드 구현 (프로젝트명, 경로 선택 등).
- [ ] 입력받은 환경 설정을 `.odd-[name]/.env`에 저장하고 로드하는 기능.
- [ ] 파일 생성 시 프로젝트명 접미사 적용 로직 (`atlas-[name].md` 등).
- [ ] 기존 문서 존재 시 템플릿 설치 건너뛰기 옵션 구현.

### B. 템플릿 및 설정 파일 정비
- [ ] `.env` 파일에 저장될 환경 변수 정의 (`ODD_PROJECT_NAME`, `ODD_DIR`, `SPECS_DIR`, `INSTALL_TEMPLATES` 등).
- [ ] `ATLAS_TEMPLATE.md` 내에서 경로 참조가 동적으로 이루어지도록 가이드라인 수정.

### C. 검증 및 테스트
- [ ] 신규 프로젝트에서의 멀티 ODD 설치 테스트 (FE/BE 분산 설치).
- [ ] 기존 프로젝트에서의 업데이트 시 설정 유지 테스트.
