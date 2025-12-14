FROM alpine:3.23

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community zig
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh test.sh /sandbox
COPY --chown=sandbox main.zig /sandbox/src

RUN <<EOF
export ZIG_GLOBAL_CACHE_DIR=/tmp/zig-cache
mkdir -p /tmp/zig-cache
zig build-exe -O ReleaseFast /sandbox/src/main.zig
zig test --test-no-exec /sandbox/src/main.zig
mv /tmp/zig-cache /sandbox/zig-cache
rm -f /sandbox/src/main.zig
EOF
