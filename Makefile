.PHONY: build
build:
	docker build -t summerplay/godot:3.2.3-headless -f headless.Dockerfile .
	docker tag summerplay/godot:3.2.3-headless summerplay/godot:headless
	docker build -t summerplay/godot:3.2.3-server -f server.Dockerfile .
	docker tag summerplay/godot:3.2.3-server summerplay/godot:server

.PHONY: push
push:
	docker push summerplay/godot:3.2.3-headless
	docker push summerplay/godot:headless
	docker push summerplay/godot:3.2.3-server
	docker push summerplay/godot:server

.PHONY: all
all: build push
