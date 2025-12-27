#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=httpbin
title=HTTPBin
cpus=1
memory=64m
storage_opt="${STORAGE:+--storage-opt=size=$STORAGE}"
network=codapi

echo "Creating network..."
docker network create --internal $network >/dev/null 2>&1 || true
echo "Done"

echo "Starting $title server..."
docker run --detach \
    --name=$name \
    --hostname=$name \
    --restart=unless-stopped \
    --cpus=$cpus --memory=$memory $storage_opt \
    --network=$network --expose=80 --publish=127.0.0.1:4201:80 \
    --network-alias=httpbingo.org \
    --pids-limit=64 \
    --read-only \
    --cap-drop=all \
    --ulimit=nofile=96 \
    codapi/$name
docker network connect bridge httpbin
echo "Done"

cat << EOF
$title server:
- name = $name
- cpus = $cpus
- memory = $memory
- storage = ${STORAGE:-(none)}
- network = $network
EOF
