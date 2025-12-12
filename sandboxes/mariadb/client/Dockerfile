FROM alpine:3.23

RUN apk add --no-cache mariadb-client
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
