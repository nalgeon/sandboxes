#!/bin/sh
set -e

# Start Redka server in the background.
redka >/dev/null 2>&1 &
REDKA_PID=$!

# Wait for the server to be ready.
until $(redis-cli PING >/dev/null 2>&1); do
  sleep 0.1
done

# Execute commands from the provided file.
redis-cli < commands.cli

# Gracefully shut down the server.
kill $REDKA_PID
wait $REDKA_PID
