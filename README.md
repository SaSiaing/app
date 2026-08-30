# app

가족 가계부 Flutter 앱.

API 서버는 [SaSiaing/backend](https://github.com/SaSiaing/backend) 입니다.
두 리포를 한 창에서 열려면 부모 디렉터리의 `sasiaing.code-workspace` 를 여세요.

## 로컬 실행

```
make get       # flutter pub get + git hook 활성화
flutter run
```

`make get`을 **반드시 한 번은 돌려야 합니다.** git hook은 클론마다 수동 활성화가 필요하고,
`make get`이 그걸 대신해 줍니다. (`make hooks`만 따로 돌려도 됩니다)

## API 계약

**[backend/docs/api.md](https://github.com/SaSiaing/backend/blob/main/docs/api.md) 가 원본입니다.**
응답 형태가 안 맞으면 코드를 맞추기 전에 저 문서를 먼저 확인하세요.
바꿔야 하면 backend 리포에 PR을 보내고 팀에 알린 뒤 이쪽을 고칩니다.

## 작업 규약

[AGENTS.md](AGENTS.md) 에 있습니다. backend 리포와 **동일한 내용**입니다.
규칙을 고칠 때는 backend에서 고치고 `make sync-conventions`로 이쪽에 복사합니다.

- `main`에 직접 커밋·push 하지 않습니다. `<type>/<이슈번호>-<요약>` 브랜치를 팝니다
- dev / stage 브랜치는 만들지 않습니다 (MVP 기간)
- 커밋: `<type>(<scope>): <설명> (#이슈)` — type은 **"동작이 바뀌었나"**로 고릅니다

## Codex 팀 설정

- `AGENTS.md` — 제품 원칙, 코드 규칙, 브랜치·커밋 규약. Codex가 자동으로 읽습니다.
- `.codex/config.toml` — workspace-write 샌드박스, 요청 기반 승인, 세션 시작 브랜치 확인.
- `.codex/rules/` — GitHub의 읽기 전용 명령 허용 목록.
- `.githooks/` — `main` 직접 커밋·push와 잘못된 커밋 메시지를 실제로 차단합니다.

처음 열 때 프로젝트를 **trusted**로 승인하고 `/hooks`에서 프로젝트 훅을 검토·승인하세요.
`make get`을 한 번 실행하면 Git 훅까지 활성화됩니다.
