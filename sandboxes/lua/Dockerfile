FROM alpine:3.23

RUN apk add --no-cache lua5.4
RUN ln -s /usr/bin/lua5.4 /usr/bin/lua
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
