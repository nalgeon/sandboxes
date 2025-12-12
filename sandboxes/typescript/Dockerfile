FROM alpine:3.23

RUN apk add --no-cache nodejs npm
RUN npm install -g esbuild
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
