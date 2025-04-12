FROM alpine:3.21

RUN apk add --no-cache php84
RUN ln -s /usr/bin/php84 /usr/bin/php
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
