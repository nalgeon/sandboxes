FROM debian:12-slim

RUN apt-get update && \
    apt-get install -y curl unzip && \
    rm -rf /var/lib/apt/lists/*

ARG VERSION=1.2.2
ARG ARCH=amd64

RUN <<EOF
curl -LO https://github.com/duckdb/duckdb/releases/download/v$VERSION/duckdb_cli-linux-$ARCH.zip
unzip duckdb*.zip
chmod +x duckdb
mv duckdb /opt
rm -f duckdb*.zip
EOF

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
