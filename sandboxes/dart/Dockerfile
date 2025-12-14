FROM dart:3.10

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh /sandbox
