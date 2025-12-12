FROM alpine:3.23

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community php85
RUN ln -s /usr/bin/php85 /usr/bin/php
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
