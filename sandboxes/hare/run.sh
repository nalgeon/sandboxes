#!/bin/sh
set -e

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./

export HOME=/tmp/sandbox
hare run main.ha
