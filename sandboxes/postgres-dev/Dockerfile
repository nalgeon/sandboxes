FROM postgres:19beta3-alpine

RUN adduser --home /sandbox --disabled-password sandbox

COPY --chown=postgres:postgres \
    database-create.sql database-drop.sql postgresql.conf pg_hba.conf \
    /var/lib/postgresql/
COPY --chown=postgres:postgres init.sql /docker-entrypoint-initdb.d/

ENV PGDATA=/var/lib/postgresql/data
ENV POSTGRES_HOST_AUTH_METHOD=trust
ENV POSTGRES_INITDB_ARGS="--wal-segsize=1"

WORKDIR /sandbox
CMD ["postgres", \
    "-c", "config_file=/var/lib/postgresql/postgresql.conf", \
    "-c", "hba_file=/var/lib/postgresql/pg_hba.conf"]
