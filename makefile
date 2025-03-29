.PHONY: build run

build:
	./gradlew clean build

run: build
	./gradlew runMockServer
