.PHONY: hooks get analyze test format build-runner

## hooks: git hook 활성화 (클론 직후 1회)
hooks:
	@git config core.hooksPath .githooks
	@echo "git hooks 활성화됨 → .githooks"

get: hooks
	flutter pub get

analyze:
	flutter analyze

test:
	flutter test

format:
	dart format lib test

## build-runner: freezed / json_serializable 코드 생성
build-runner:
	dart run build_runner build --delete-conflicting-outputs
