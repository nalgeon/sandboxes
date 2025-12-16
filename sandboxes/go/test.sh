#!/bin/sh

cp -a /sandbox/go-cache /tmp/go-cache
export GOCACHE=/tmp/go-cache

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./

if [ "$1" = "-v" ]; then
    go test -v
else
    go test
fi
