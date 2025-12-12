FROM clickhouse:25.11

COPY *.sh /etc/clickhouse-client

RUN adduser --home /sandbox --disabled-password sandbox
USER sandbox
WORKDIR /sandbox

ENTRYPOINT []
