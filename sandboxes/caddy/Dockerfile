FROM alpine:3.21

RUN apk add --no-cache curl jq
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community caddy
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox .curlrc /sandbox

ENV XDG_DATA_HOME=/tmp
ENV XDG_CONFIG_HOME=/tmp
