FROM alpine:3.24

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main \
    clang22 llvm22 lld binutils musl-dev
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing odin
RUN ln -sf /usr/bin/clang-22 /usr/bin/clang
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
