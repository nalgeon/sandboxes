FROM alpine:3.21

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing openjdk23
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
