IMAGE_NAME = "docker-man"

DEBIAN_TAG = "debian"
DEBIAN_IMAGE = $(IMAGE_NAME):$(DEBIAN_TAG)
DEBIAN_DOCKERFILE = debian/Dockerfile

.PHONY: debian
debian:
	docker build --tag $(DEBIAN_IMAGE) -f $(DEBIAN_DOCKERFILE) .
