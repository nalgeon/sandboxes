FROM alpine:3.21

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main sqlite
RUN ln -s /usr/bin/sqlite3 /opt/sqlite3
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
