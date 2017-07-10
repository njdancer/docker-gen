FROM alpine:latest
MAINTAINER Jason Wilder <mail@jasonwilder.com>

RUN apk -U add openssl

ENV VERSION 0.7.3
ENV DOCKER_HOST unix:///tmp/docker.sock

COPY ./dist/alpine-linux/amd64/docker-gen /usr/local/bin

ENTRYPOINT ["/usr/local/bin/docker-gen"]
