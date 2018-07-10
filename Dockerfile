ARG DOCKER_VERSION=latest
ARG COMPOSE_VERSION

FROM docker:${DOCKER_VERSION}

MAINTAINER Paul Pop <paulpop88@gmail.com>

RUN apk add --quiet py-pip && \
    pip install --quiet "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}" && \
    rm -rf /var/cache/apk/*
