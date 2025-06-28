#!/bin/sh
set -e

# Start Redis server in the background.
redis-server --save "" --appendonly no >/dev/null 2>&1 &
REDIS_PID=$!

# Wait for the server to be ready.
until $(redis-cli PING >/dev/null 2>&1); do
  sleep 0.1
done

# Execute commands from the provided file.
redis-cli < commands.cli

# Gracefully shut down the server.
redis-cli SHUTDOWN NOSAVE
wait $REDIS_PID
