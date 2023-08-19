watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs

.PHONY: build
build:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

generate:
	./generate.sh