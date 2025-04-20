#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=python
title=Python

echo "Building $title image..."
docker build --file ./Dockerfile --tag codapi/$name:latest .
echo "Done"

cat << EOF
$title image: codapi/$name:latest
No additional setup is required.
EOF
