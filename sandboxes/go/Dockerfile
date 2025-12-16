FROM golang:1.25-bookworm

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh test.sh /sandbox
COPY --chown=sandbox go.mod main.go main_test.go /sandbox/src

RUN <<EOF
export GOCACHE=/tmp/go-cache
mkdir -p /tmp/go-cache /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./
go mod tidy && go run main.go && go test
rm -f main.go main_test.go
mv /tmp/go-cache /sandbox/go-cache
EOF
