FROM nalgeon/redka:0.6.0

COPY query.sh /usr/local/bin/query.sh
RUN chmod +x /usr/local/bin/query.sh

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox

ENTRYPOINT []
