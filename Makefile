USERNAME := koreni
REGISTRY := hub.docker.com
DOCKER_BUILD_OPTIONS := --pull --no-cache

# .PHONY: all
# all: build push

# Сборка Docker-образа
.PHONY: build
build:
    @echo print
    #@docker build $(DOCKER_BUILD_OPTIONS) -t $(USERNAME)/$(IMAGE_NAME):$(TAG) -f $(DOCKERFILE_PATH) .

# Отправка Docker-образа в реестр Docker
# .PHONY: push
# push:
#     @docker tag $(USERNAME)/$(IMAGE_NAME):$(TAG) $(REGISTRY)/$(USERNAME)/$(IMAGE_NAME):$(TAG)
#     @docker push $(REGISTRY)/$(USERNAME)/$(IMAGE_NAME):$(TAG)
