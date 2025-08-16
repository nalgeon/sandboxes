FROM golang:1.25-bookworm

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox/src

COPY --chown=sandbox go.mod main.go main_test.go /sandbox/src
RUN go mod tidy && go run main.go && go test
RUN rm -f main.go main_test.go
