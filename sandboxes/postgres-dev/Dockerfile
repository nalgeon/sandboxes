FROM postgres:19beta3-alpine

RUN adduser --home /sandbox --disabled-password sandbox

COPY --chown=postgres:postgres \
    database-create.sql database-drop.sql postgresql.conf pg_hba.conf \
    /var/lib/postgresql/
COPY --chown=postgres:postgres init.sql /docker-entrypoint-initdb.d/

ENV PGDATA=/var/lib/postgresql/data
ENV POSTGRES_HOST_AUTH_METHOD=trust

WORKDIR /sandbox
