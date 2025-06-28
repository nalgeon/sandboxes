FROM alpine:3.21

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community redis

COPY query.sh /usr/local/bin/query.sh
RUN chmod +x /usr/local/bin/query.sh

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
