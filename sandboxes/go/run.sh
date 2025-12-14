#!/bin/sh

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./
go build -o main
./main
