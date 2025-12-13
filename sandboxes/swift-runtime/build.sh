#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name=swift-runtime
title="Swift runtime"

echo "Building $title image..."
docker build --file ./Dockerfile --tag codapi/$name:latest .
echo "Done"

cat << EOF
$title image: codapi/$name:latest
Make sure to also build the swift sandbox.
EOF
