FROM debian:12-slim
SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y curl zip unzip && \
    rm -rf /var/lib/apt/lists/*

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox

RUN <<EOF
curl -s "https://get.sdkman.io?rcupdate=false" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java
sdk install kotlin
EOF

ENV JAVA_HOME="/sandbox/.sdkman/candidates/java/current"
ENV KOTLIN_HOME="/sandbox/.sdkman/candidates/kotlin/current"
