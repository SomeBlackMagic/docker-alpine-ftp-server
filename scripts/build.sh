#!/usr/bin/env bash
export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx version
#docker run --rm --privileged docker/binfmt:820fdd95a9972a5308930a2bdfb8573dd4447ad3
#docker buildx create --name mybuilder
#docker buildx use mybuilder
docker buildx inspect --bootstrap
docker buildx build . \
    --platform=linux/arm,linux/arm64,linux/amd64 \
    -t someblackmagic/docker-alpine-ftp-server \
    -f .docker/Dockerfile \



