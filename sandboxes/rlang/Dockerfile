FROM debian:12-slim

RUN apt-get update && \
    apt-get install -y libcurl4-openssl-dev libnode-dev libssl-dev libxml2-dev \
    r-base r-recommended r-cran-tidyverse r-cran-svglite && \
    rm -rf /var/lib/apt/lists/*

RUN <<EOF
R -e "install.packages('remotes', dependencies=TRUE, repos='http://cran.rstudio.com/')"
R -e "remotes::install_cran('easystats')"
R -e "remotes::install_cran('gt')"
R -e "remotes::install_cran('tidymodels')"
EOF

RUN adduser --home /sandbox --disabled-password sandbox

USER sandbox
WORKDIR /sandbox

ENV XDG_CACHE_HOME=/tmp
