FROM rtsp/mongosh

COPY query.sh /etc/mongodb/

RUN adduser --home /sandbox --disabled-password sandbox
USER sandbox
WORKDIR /sandbox
