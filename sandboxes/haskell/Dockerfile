FROM haskell:9-slim

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh /sandbox
