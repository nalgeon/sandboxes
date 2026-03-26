#!/bin/sh

cp -a /sandbox/go-cache /tmp/go-cache
export GOCACHE=/tmp/go-cache

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/go.* ./
cp /sandbox/src/* ./
so translate -o generated .
echo "-- main.h --"
cat generated/main.h
echo ""
echo "-- main.c --"
cat generated/main.c
