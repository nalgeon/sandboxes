#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=postgres
title=PostgreSQL

echo "Building $title image..."
docker build --file ./Dockerfile --tag codapi/$name:dev .
echo "Done"

cat << EOF
$title image: codapi/$name:dev

Call setup.sh to finish setting up the sandbox.
EOF
