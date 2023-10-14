IMAGE_NAME = "docker-man"

build: debian

DEBIAN_TAG = "debian"
DEBIAN_IMAGE = $(IMAGE_NAME):$(DEBIAN_TAG)
DEBIAN_DOCKERFILE = debian/Dockerfile

.PHONY: debian
debian:
	docker build --tag $(DEBIAN_IMAGE) -f $(DEBIAN_DOCKERFILE) .

.PHONY: docker-hadolint-debian
docker-hadolint-debian:
	docker run --rm -i -v $(PWD)/.hadolint.yml:/.config/hadolint.yml hadolint/hadolint:v2.12.0-debian hadolint --config /.config/hadolint.yml - < $(DEBIAN_DOCKERFILE)
