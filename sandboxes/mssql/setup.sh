#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

if [ -z "${MSSQL_SA_PASSWORD}" ]; then
    echo "Required env variable: MSSQL_SA_PASSWORD"
    exit 1
fi
if [ -z "${CODAPI_PASSWORD}" ]; then
    echo "Required env variable: CODAPI_PASSWORD"
    exit 1
fi

name=mssql
title="SQL Server"
cpus=1
memory=1024m
storage_opt="${STORAGE:+--storage-opt=size=$STORAGE}"
network=codapi

echo "Creating network..."
docker network create --internal $network >/dev/null 2>&1 || true
echo "Done"

echo "Starting $title server..."
docker run --detach \
    --name=$name \
    --restart=unless-stopped \
    --cpus=$cpus --memory=$memory $storage_opt \
    --network=$network --pids-limit=1024 \
    --cap-drop=mknod --cap-drop=net_raw \
    --ulimit=nofile=1024 \
    --env="MSSQL_SA_PASSWORD=${MSSQL_SA_PASSWORD}" \
    --env="CODAPI_PASSWORD=${CODAPI_PASSWORD}" \
    codapi/$name
echo "Done"

# Wait for the server to start.
while ! docker exec $name /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "${MSSQL_SA_PASSWORD}" -Q 'SELECT 1' >/dev/null 2>&1; do
    sleep 1
done
version=$(docker exec $name /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "${MSSQL_SA_PASSWORD}" -Q 'SELECT @@VERSION' | tail -n 1)

cat << EOF
$title server:
- name = $name
- version = $version
- cpus = $cpus
- memory = $memory
- storage = ${STORAGE:-(none)}
- network = $network
EOF
