FROM swift:6.2-bookworm

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox hello.swift /sandbox/src/main.swift
RUN swift run main.swift || true
RUN rm -f main.swift
