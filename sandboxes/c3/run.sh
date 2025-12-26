#!/bin/sh
set -e

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./

c3c compile-run --quiet main.c3
