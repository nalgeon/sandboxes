FROM mccutchen/go-httpbin

# Uncomment for TLS
# COPY server.crt server.key /tmp
# ENV HTTPS_CERT_FILE="/tmp/server.crt"
# ENV HTTPS_KEY_FILE="/tmp/server.key"

ENV ALLOWED_REDIRECT_DOMAINS="example.com,example.net,example.org"
ENV MAX_BODY_SIZE=65536
ENV MAX_DURATION=5s
ENV PORT=80
