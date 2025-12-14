#!/bin/sh

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./

if [ "$1" = "-v" ]; then
    go test -v
else
    go test
fi
