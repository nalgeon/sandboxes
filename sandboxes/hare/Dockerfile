FROM alpine:3.23

RUN apk add --no-cache hare
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh /sandbox
