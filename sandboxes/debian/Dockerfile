FROM debian:12-slim

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
