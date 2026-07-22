#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=go
title=Go

echo "Building $title image..."
docker build --file ./Dockerfile --tag codapi/$name:dev .
echo "Done"

cat << EOF
$title image: codapi/$name:dev
No additional setup is required.
EOF
