#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=mysql
title=MySQL
cpus=1
memory=512m
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
    --network=$network --pids-limit=64 \
    --cap-drop=mknod --cap-drop=net_bind_service --cap-drop=net_raw \
    --ulimit=nofile=1024 \
    codapi/$name
echo "Done"

# Wait for the server to start.
until docker exec $name mysqladmin ping --silent; do
    sleep 1
done
version=$(docker exec $name mysql -e 'SELECT VERSION()' | tail -n 1)

cat << EOF
$title server:
- name = $name
- version = $version
- cpus = $cpus
- memory = $memory
- storage = ${STORAGE:-(none)}
- network = $network
EOF
