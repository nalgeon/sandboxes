#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=postgres
title=PostgreSQL

echo "Building $title image..."
docker build --file ./Dockerfile --tag codapi/$name:latest .
echo "Done"

cat << EOF
$title image: codapi/$name:latest

Call setup.sh to finish setting up the sandbox.
EOF
