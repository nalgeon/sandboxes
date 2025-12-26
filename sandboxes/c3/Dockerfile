FROM debian:12-slim

RUN apt-get update && \
    apt-get install -y curl gcc libxml2-dev unzip && \
    rm -rf /var/lib/apt/lists/*

RUN <<EOF
set -e
cd /opt
curl -LO https://github.com/c3lang/c3c/releases/latest/download/c3-linux.tar.gz
tar -xzf c3-linux.tar.gz
rm -f c3-linux.tar.gz
ln -s /opt/c3/c3c /usr/local/bin/c3c
EOF

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh /sandbox
ENV C3C_LIB=/opt/c3/lib
