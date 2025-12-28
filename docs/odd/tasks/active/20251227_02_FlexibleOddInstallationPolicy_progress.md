# Progress: ODD v1.0.0 COA(Context-Order-Archive) 체계 구축 및 최종 배포

## 📍 진행 상황 (Current Status)
- **상태**: v1.0.0 COA 아키텍처 정립 및 템플릿 개편 완료 (Final Polish)
- **최종 업데이트**: 2025-12-28

## 🛠️ 작업 로그 (Work Log)

### 2025-12-28: COA 아키텍처로의 도약 (v1.0.0 정식버전)
- [x] **용어 혁신**: `Library` -> `Context`, `Book` -> `Logic/Protocols` 명칭 변경 완료
- [x] **페르소나 진화**: `Librarian` -> `Auditor`(감찰관)로 역할 재정의
- [x] **Context 4대 서가 확립**: General(개요), History(역사), Protocols(규약), Logic(논리) 구조화
- [x] **시스템 프로토콜 명문화**: `context/protocols/odd-system.md`를 통해 시스템 철학 및 운영 표준 정의
- [x] **설치 엔진 최적화**: `install.sh`의 경로 유연화 및 설정 저장 로직 완성
- [x] **ROOT README 개정**: COA 다이어그램 및 신규 아키텍처 설명 반영

## 📝 설계 세부 사항 (Design Details)

### 1. 환경 변수 스펙 (`.env` 인자)
- `ODD_PROJECT_NAME`: 프로젝트 식별자 (예: `fe`, `be`, `core`)
- `ODD_DIR`: ODD 루트 폴더 경로 (기본값: `.odd` 또는 `.odd-${ODD_PROJECT_NAME}`)
- `SPECS_DIR`: 스펙 문서 경로 (기본값: `docs/specs`)
- `INSTALL_TEMPLATES`: 템플릿 설치 여부 (`true`/`false`)
- `ODD_VERSION`: 현재 설치된 ODD 버전

### 2. 파일 명명 규칙
- 폴더: `.odd-${ODD_PROJECT_NAME}`
- 아틀라스: `atlas-${ODD_PROJECT_NAME}.md`
- 설치 스크립트: `install-${ODD_PROJECT_NAME}.sh`
- 로드맵: `roadmap-${ODD_PROJECT_NAME}.md` (선택 사항)

### 3. 인터랙티브 설치 흐름
1. 프로젝트 이름 입력 (생략 시 기본 ODD 사용)
2. ODD 설치 경로 확인 (기본값 제공 후 수정 가능)
3. Specs 설치 경로 확인 (기본값 제공 후 수정 가능)
4. 템플릿 설치 여부 확인 (기존 문서가 있는 경우 건너뛰기 권장)
5. 설정값을 `.env`에 저장
6. 파일 다운로드 및 구조 생성

## 📌 다음 단계 (Next Steps)
- [ ] `odd-template/setup/install.sh` 고도화 작업 시작
- [ ] 동적 파일명을 지원하도록 `ATLAS_TEMPLATE.md` 수정 가이드 작성
