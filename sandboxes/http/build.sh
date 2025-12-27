#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

name="codapi/httpbin"
title="HTTPBin"

echo "Building $title image..."
docker build --file ./Dockerfile --tag $name:latest .
echo "Done"

cat << EOF
$title image: $name:latest
No additional setup is required.
EOF
