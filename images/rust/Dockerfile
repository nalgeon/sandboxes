FROM alpine:3.21

RUN apk add --no-cache rust cargo
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
