FROM alpine:3.21

RUN apk add --no-cache curl gnupg

RUN <<EOF
# download packages
curl -O https://download.microsoft.com/download/b/9/f/b9f3cce4-3925-46d4-9f46-da08869c6486/msodbcsql18_18.0.1.1-1_amd64.apk
curl -O https://download.microsoft.com/download/b/9/f/b9f3cce4-3925-46d4-9f46-da08869c6486/mssql-tools18_18.0.1.1-1_amd64.apk

# install packages
apk add --no-cache --allow-untrusted msodbcsql18_18.0.1.1-1_amd64.apk
apk add --no-cache --allow-untrusted mssql-tools18_18.0.1.1-1_amd64.apk
rm -f msodbcsql18_18.0.1.1-1_amd64.apk mssql-tools18_18.0.1.1-1_amd64.apk
EOF

COPY *.sh /opt/mssql/

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox

ARG CODAPI_PASSWORD=codapi
ENV CODAPI_PASSWORD $CODAPI_PASSWORD
