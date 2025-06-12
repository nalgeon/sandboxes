FROM dockershelf/latex:basic

RUN apt-get update && \
    apt-get install -y dvisvgm && \
    rm -rf /var/lib/apt/lists/*

COPY convert.sh /usr/local/bin/convert.sh
RUN chmod +x /usr/local/bin/convert.sh

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox
