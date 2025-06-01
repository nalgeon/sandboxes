FROM alpine:3.21

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main clang20 llvm20
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing odin
RUN ln -sf /usr/bin/clang-20 /usr/bin/clang
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
