#!/bin/sh

mkdir -p /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./

ghc -v0 main.hs
./main
