FROM blang/latex:ubuntu

COPY convert.sh /usr/local/bin/convert.sh

RUN adduser --home /sandbox --disabled-password sandbox \
    && chown -R sandbox /sandbox \
    && chmod +x /usr/local/bin/convert.sh

USER sandbox
WORKDIR /sandbox
VOLUME ["/sandbox"]