FROM docker:latest

MAINTAINER Paul Pop <paulpop88@gmail.com>

ARG COMPOSE_VERSION

RUN apk add --quiet py-pip && \
    pip install --quiet "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}" && \
    rm -rf /var/cache/apk/*
