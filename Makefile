build: debian ubuntu

IMAGE_NAME = docker-man
DEBIAN_TAG = debian
UBUNTU_TAG = ubuntu

.PHONY: debian
debian:
	./bin/build.sh $(IMAGE_NAME) $(DEBIAN_TAG)

.PHONY: ubuntu
ubuntu:
	./bin/build.sh $(IMAGE_NAME) $(UBUNTU_TAG)

.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down
