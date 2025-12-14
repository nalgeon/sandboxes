#!/bin/sh

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./
swiftc main.swift -o main
./main
