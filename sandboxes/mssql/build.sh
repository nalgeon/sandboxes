#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=mssql
title="SQL Server"

echo "Building $title server image..."
docker build --file ./server/Dockerfile --tag codapi/$name:latest ./server
echo "Done"

echo "Building $title client image..."
docker build --file ./client/Dockerfile --tag codapi/$name-client:latest ./client
echo "Done"

cat << EOF
$title images:
- codapi/$name:latest
- codapi/$name-client:latest

Call setup.sh to finish setting up the sandbox.
EOF
