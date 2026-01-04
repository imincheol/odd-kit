---
id: "order_20260103_09_InstallerSelfUpdate"
title: "Implement Installer Self-Update Mechanism"
status: "in_progress"
priority: "high"
assignee: "odd-agent"
created-at: "2026-01-03T18:30:00"
---

# 📋 Order: 설치 스크립트 자가 업데이트(Self-Update) 기능 구현

## 1. 배경
사용자가 로컬에 저장된 `install.sh`를 실행할 때, 해당 파일이 구버전일 경우 구버전 로직으로 설치/업데이트가 진행되는 문제가 있다.
실행 시점에 항상 원격의 최신 `install.sh`를 받아와서 실행하여, 언제나 최신 로직(ODD Kit 최신 스펙)이 적용되도록 보장해야 한다.

## 2. 목표
- `odd-kit-template/setup/install.sh`에 **Self-Update & Re-execution** 로직 추가.
- 실행 시 무조건 GitHub Raw Content를 받아와서, 새로운 프로세스로 실행(`exec`)하도록 변경.
- URL 경로 수정: `odd-template` -> `odd-kit-template`.

## 3. 작업 계획
1. `install.sh` 상단에 업데이트 로직 추가.
2. `README.md`의 설치 명령어 URL도 `odd-kit-template`으로 수정.
