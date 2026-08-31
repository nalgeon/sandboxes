FROM golang:1.26-trixie

RUN apt-get update && \
    apt-get install -y gcc && \
    rm -rf /var/lib/apt/lists/*

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh translate.sh /sandbox
COPY --chown=sandbox go.mod main.go /sandbox/src

RUN <<EOF
set -e
export GOCACHE=/tmp/go-cache
mkdir -p /tmp/go-cache /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./
go install solod.dev/cmd/so@4e55221ec78545a6abd3669b8521cc893091b47c
go get solod.dev@4e55221ec78545a6abd3669b8521cc893091b47c
go mod tidy && go get && go run .
rm -f main.go
mv /tmp/go-cache /sandbox/go-cache
mv /tmp/sandbox/go.* /sandbox
EOF

ENV CFLAGS="-O0 -g1 -pipe"
