#!/bin/sh

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./

export HOME=/tmp/sandbox
dart compile exe main.dart -o main
./main
