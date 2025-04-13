FROM alpine:3.21

RUN apk add --no-cache curl curlie net-tools
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing hurl
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
