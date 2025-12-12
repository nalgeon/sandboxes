FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine

COPY run.sh /usr/share/dotnet

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
