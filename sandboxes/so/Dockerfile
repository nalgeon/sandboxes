FROM golang:1.26-alpine
RUN apk add --no-cache gcc musl-dev

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox run.sh translate.sh /sandbox
COPY --chown=sandbox go.mod main.go /sandbox/src

RUN <<EOF
export GOCACHE=/tmp/go-cache
mkdir -p /tmp/go-cache /tmp/sandbox
cd /tmp/sandbox
cp /sandbox/src/* ./
go install solod.dev/cmd/so@latest
go mod tidy && go get && go run .
rm -f main.go
mv /tmp/go-cache /sandbox/go-cache
mv /tmp/sandbox/go.* /sandbox
EOF
