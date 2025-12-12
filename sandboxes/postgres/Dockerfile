FROM alpine:3.23

RUN apk add --no-cache postgresql18
RUN adduser --home /sandbox --disabled-password sandbox

COPY --chown=postgres:postgres database-create.sql database-drop.sql /var/lib/postgresql/
COPY entrypoint.sh /run
RUN chmod +x /run/entrypoint.sh

ENV PGDATA=/var/lib/postgresql/data
ENTRYPOINT ["/run/entrypoint.sh"]
STOPSIGNAL SIGINT

WORKDIR /sandbox
