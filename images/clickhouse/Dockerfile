FROM clickhouse:25.3

RUN useradd --create-home --home /sandbox sandbox
COPY config.xml /etc/clickhouse-server/config.d/codapi.xml
COPY users.xml /etc/clickhouse-server/users.d/codapi.xml
COPY *.sh /etc/clickhouse-client
COPY init.sql /docker-entrypoint-initdb.d/

USER sandbox
WORKDIR /sandbox
