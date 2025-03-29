.PHONY: build run

build:
	./gradlew clean build

run:
	./gradlew runMockServer
