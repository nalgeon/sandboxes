FROM clickhouse:25.3

COPY *.sh /etc/clickhouse-client

RUN adduser --home /sandbox --disabled-password sandbox
USER sandbox
WORKDIR /sandbox

ENTRYPOINT []
