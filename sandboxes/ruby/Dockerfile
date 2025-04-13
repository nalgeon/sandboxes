FROM ruby:3.4-alpine

RUN apk add --no-cache build-base sqlite
RUN gem install sqlite3
RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
