FROM alpine:3.23

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main clang21 llvm21
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing odin
RUN ln -sf /usr/bin/clang-21 /usr/bin/clang
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
