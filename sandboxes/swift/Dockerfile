FROM swift:6.2-bookworm

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh /sandbox
COPY --chown=sandbox hello.swift /sandbox/src/main.swift
RUN swift run main.swift && rm -f main.swift
