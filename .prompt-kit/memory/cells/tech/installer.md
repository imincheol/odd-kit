---
type: concept
category: tech
version: "v1.2.1"
last_updated: "2026-01-03"
relatedness: 0.85
---

# 🛠️ Installer Mechanism

## 1. Self-Update
`install.sh`는 실행 시 GitHub Raw Content에서 최신 버전을 다운로드하여 `exec`로 프로세스를 교체합니다. 이는 로컬 스크립트가 구버전이어도 항상 최신 로직으로 설치/업데이트를 보장합니다.

## 2. Migration Protocol
기존 `.odd` 디렉토리가 발견되면 `PK_MIGRATION.md`를 가이드로 로드하여, 폴더명 변경 및 파일 마이그레이션을 유도합니다.
