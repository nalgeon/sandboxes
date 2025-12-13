FROM amazoncorretto:21-alpine

RUN apk add --no-cache bash curl unzip

ARG VERSION=2.2.21
RUN <<EOF
curl -Lf "https://github.com/JetBrains/kotlin/releases/download/v$VERSION/kotlin-compiler-$VERSION.zip" -o kotlin.zip
unzip -d /usr/local/ kotlin.zip
rm kotlin.zip
chmod -R +x /usr/local/kotlinc/bin/
ln -s /usr/local/kotlinc/bin/kotlin /bin/kotlin
ln -s /usr/local/kotlinc/bin/kotlinc /bin/kotlinc
EOF

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox

ENV PATH=$PATH:/usr/local/kotlinc/bin/
