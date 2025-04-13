#!/usr/bin/env sh

function run_as_postgres() {
	local cmd="${@}"
	su - postgres -c "${cmd}"
}

function exec_sql() {
	local req="${1}"
	run_as_postgres "psql -c \"${req};\""
}

function init_postgres() {
	chown postgres:postgres "${PGDATA}"
    chmod 0700 "${PGDATA}"

    run_as_postgres "initdb --wal-segsize=1 -D ${PGDATA}"

    echo "listen_addresses = 'localhost'" > "${PGDATA}/postgresql.conf"
    echo "max_connections = 16" >> "${PGDATA}/postgresql.conf"
    echo "wal_level = minimal" >> "${PGDATA}/postgresql.conf"
    echo "max_wal_senders = 0" >> "${PGDATA}/postgresql.conf"
    echo "fsync = off" >> "${PGDATA}/postgresql.conf"
    echo "synchronous_commit = off" >> "${PGDATA}/postgresql.conf"
    echo "shared_buffers = 128MB" >> "${PGDATA}/postgresql.conf"
    echo "min_wal_size = 2MB" >> "${PGDATA}/postgresql.conf"
    echo "max_wal_size = 16MB" >> "${PGDATA}/postgresql.conf"

	echo "local all postgres trust" > "${PGDATA}/pg_hba.conf"
    echo "local sameuser all trust" >> "${PGDATA}/pg_hba.conf"
}

function init_db() {
	run_as_postgres "pg_ctl start -D ${PGDATA}"
	exec_sql "revoke connect on database postgres from public"
	exec_sql "revoke connect on database template0 from public"
	exec_sql "revoke connect on database template1 from public"
	run_as_postgres "pg_ctl stop -D ${PGDATA}"
}

if [ ! -f "${PGDATA}/PG_VERSION" ]; then
	echo "postgres not found, initializing..."
	init_postgres
	init_db
fi

echo "postgres is ready"
run_as_postgres "postgres -D ${PGDATA}"
