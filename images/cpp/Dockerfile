FROM alpine:3.21

RUN apk add --no-cache g++
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
