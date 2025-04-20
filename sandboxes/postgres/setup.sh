#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=postgres
title=PostgreSQL
cpus=1
memory=256m
storage_opt="${STORAGE:+--storage-opt=size=$STORAGE}"
network=none

echo "Starting $title server..."
docker run --detach \
    --name=$name \
    --restart=unless-stopped \
    --cpus=$cpus --memory=$memory $storage_opt \
    --network=$network --pids-limit=64 \
    --cap-drop=mknod --cap-drop=net_bind_service --cap-drop=net_raw \
    --ulimit=nofile=1024 \
    --read-only \
    --tmpfs=/run/postgresql:rw,noexec,nosuid,size=64k \
    --tmpfs=/var/lib/postgresql/data:rw,noexec,nosuid,size=64m \
    codapi/$name
echo "Done"

# Wait for the server to start.
while ! docker exec $name psql -U postgres -c 'SELECT 1' >/dev/null 2>&1; do
    sleep 1
done
version=$(docker exec $name postgres --version | tail -n 1)

cat << EOF
$title server:
- name = $name
- version = $version
- cpus = $cpus
- memory = $memory
- storage = ${STORAGE:-(none)}
- network = $network
EOF
