FROM debian:12-slim

RUN apt-get update && \
    apt-get install -y build-essential curl unzip && \
    rm -rf /var/lib/apt/lists/*

ARG VERSION=0.4.10
ARG ARCH=linux

RUN <<EOF
curl -LO https://github.com/vlang/v/releases/download/$VERSION/v_$ARCH.zip
unzip v_*.zip
chmod +x v/v
mv v /opt
rm -f v_*.zip
EOF

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox

ENV PATH=$PATH:/opt/v
ENV VMODULES="/tmp/.vmodules"
