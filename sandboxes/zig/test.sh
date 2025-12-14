#!/bin/sh

cp -a /sandbox/zig-cache /tmp/zig-cache
export ZIG_GLOBAL_CACHE_DIR=/tmp/zig-cache

zig test main.zig
