# hash:sha256:dcbc0912cec5399ff8734627bb2927357635be592545a61c26b71f101bf5382f
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        g++=4:11.2.0-1ubuntu1 \
        libboost-all-dev=1.74.0.3ubuntu7 \
        make=4.3-4.1build1 \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -U --no-cache-dir \
    code-ocean-aux-tools==1.1.0

RUN pip3 install -U --no-cache-dir \
    biopython==1.81 \
    numpy==1.25.2 \
    scipy==1.11.2

COPY postInstall /
RUN /postInstall
