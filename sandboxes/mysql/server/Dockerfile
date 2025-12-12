FROM mysql:9.5

COPY *.sh /etc/mysql/
COPY init.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ALLOW_EMPTY_PASSWORD=1
ENV MYSQL_INITDB_SKIP_TZINFO=1
