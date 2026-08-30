# app

작업 규약은 아래 파일을 따릅니다. 팀원 일부가 Codex를 쓰기 때문에 **같은 파일을 공유합니다.**
규칙의 원본은 backend 리포의 `AGENTS.md`입니다 — 고칠 일이 있으면 거기서 고치고
`make sync-conventions`로 이쪽에 복사하세요.

@AGENTS.md

## Claude Code 전용 메모

- 커밋 전에 브랜치를 확인합니다. `main`이면 먼저 `git switch -c <type>/<이슈번호>-<요약>`.
- 커밋 메시지 type은 "동작이 바뀌었나"로 고릅니다. 간단한 버그 수정도 `fix`이지 `chore`가 아닙니다.
- API 응답 형태가 안 맞으면 **backend/docs/api.md를 먼저 확인**합니다. 임의로 맞추지 않습니다.
- **public 리포입니다.** `google-services.json`, 키스토어를 스테이징하지 마세요.
- 생성 파일(`*.g.dart`, `*.freezed.dart`)은 커밋하지 않습니다.
