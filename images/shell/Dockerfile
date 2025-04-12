FROM alpine:3.21

RUN apk add --no-cache aha bash coreutils curl git grep ripgrep zsh
RUN adduser --home /sandbox --disabled-password sandbox

RUN cd /opt && \
    curl -OL https://github.com/rednafi/httpurr/archive/refs/tags/v0.1.2.tar.gz && \
    tar xvzf v0.1.2.tar.gz && \
    mv httpurr-0.1.2 httpurr

USER sandbox
WORKDIR /sandbox/src

RUN git config --global user.email "sandbox@example.com" && \
    git config --global user.name "sandbox" && \
    git config --global init.defaultBranch main

ENV GIT_AUTHOR_DATE="2024-03-14T15:00:00"
ENV GIT_COMMITTER_DATE="2024-03-14T15:00:00"
