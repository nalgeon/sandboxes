.PHONY: build

STORAGE_OPT := $(if $(storage),--storage-opt=size=$(storage))

build:
	@[ -n "$(name)" ] || (echo "Syntax: make build name=<image-name>" >&2; exit 1)
	@echo "Building image codapi/$(name)"
	@docker build --file images/$(name)/Dockerfile --tag codapi/$(name):latest images/$(name)/
	@echo "✓ codapi/$(name)"

clickhouse-start:
	@echo "Starting ClickHouse..."
	@docker run --detach --rm --name=clickhouse \
		--cpus=1 --memory=512m $(STORAGE_OPT) \
		--network=codapi --pids-limit=1024 \
		--cap-drop=mknod --cap-drop=net_bind_service --cap-drop=net_raw \
		--ulimit=nofile=262144:262144 \
		codapi/clickhouse
	@echo "✓ clickhouse"

mariadb-start:
	@echo "Starting MariaDB..."
	docker run --detach --rm --name=mariadb \
		--cpus=1 --memory=384m $(STORAGE_OPT) \
		--network=codapi --pids-limit=64 \
		--cap-drop=mknod --cap-drop=net_bind_service --cap-drop=net_raw \
		--ulimit=nofile=1024 \
		codapi/mariadb
	@echo "✓ mariadb"

mongodb-start:
	@echo "Starting MongoDB..."
	@docker run --detach --rm --name=mongodb \
		--cpus=1 --memory=256m $(STORAGE_OPT) \
		--network=codapi --pids-limit=64 \
		--cap-drop=mknod --cap-drop=net_bind_service --cap-drop=net_raw \
		--ulimit=nofile=1024 \
		codapi/mongodb
	@echo "✓ mongodb"

mssql-start:
	@[ -n "${MSSQL_SA_PASSWORD}" ] || (echo "Required env variable: MSSQL_SA_PASSWORD" >&2; exit 1)
	@[ -n "${CODAPI_PASSWORD}" ] || (echo "Required env variable: CODAPI_PASSWORD" >&2; exit 1)
	@echo "Starting SQL Server..."
	@docker run --detach --rm --name=mssql \
		--cpus=1 --memory=1024m $(STORAGE_OPT) \
		--network=codapi --pids-limit=1024 \
		--cap-drop=mknod --cap-drop=net_raw \
		--ulimit=nofile=1024 \
		--env="MSSQL_SA_PASSWORD=${MSSQL_SA_PASSWORD}" \
		--env="CODAPI_PASSWORD=${CODAPI_PASSWORD}" \
		codapi/mssql
	@echo "✓ mssql"

mysql-start:
	@echo "Starting MySQL..."
	@docker run --detach --rm --name=mysql \
		--cpus=1 --memory=512m $(STORAGE_OPT) \
		--network=codapi --pids-limit=64 \
		--cap-drop=mknod --cap-drop=net_bind_service --cap-drop=net_raw \
		--ulimit=nofile=1024 \
		codapi/mysql
	@echo "✓ mysql"

postgres-start:
	@echo "Starting PostgreSQL..."
	@docker run --detach --rm --name=postgres \
		--cpus=1 --memory=256m $(STORAGE_OPT) \
		--network=none --pids-limit=64 \
		--cap-drop=mknod --cap-drop=net_bind_service --cap-drop=net_raw \
		--ulimit=nofile=1024 \
		--read-only \
		--tmpfs=/run/postgresql:rw,noexec,nosuid,size=64k \
		--tmpfs=/var/lib/postgresql/data:rw,noexec,nosuid,size=64m \
		codapi/postgres
	@echo "✓ postgres"
