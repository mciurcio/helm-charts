FROM ubuntu:noble

LABEL maintainer="CPS1 Tecnologia LTDA"
LABEL name="cps1/base-template"

RUN apt-get update && apt-get -y upgrade && apt-get install -y \
    curl \
    wget \
    git \
    ca-certificates \
    iputils-ping \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

RUN useradd user -s /bin/bash -m -u 10001

CMD ["/bin/bash"]
