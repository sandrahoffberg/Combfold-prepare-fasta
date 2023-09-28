# hash:sha256:b3b0c3a1fb5c06e9e33cefca729f0a08faf56631658622ffe2f2511a9e78367a
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

RUN pip3 install -U --no-cache-dir \
    biopython==1.81 \
    numpy==1.25.2 \
    scipy==1.11.2

COPY postInstall /
RUN /postInstall
