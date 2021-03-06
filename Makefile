DOCKER_REPO=zeroows/elixir-alpine
DOCKER_TAG=latest
DOCKER_IMAGE=$(DOCKER_REPO):$(DOCKER_TAG)

all: build

build:
	@docker build -t "$(DOCKER_IMAGE)" .

run:
	@docker run --rm -t -i $(DOCKER_IMAGE) || true

clean:
	@docker rmi $(DOCKER_IMAGE)

.PHONY: all build clean run
