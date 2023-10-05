# hash:sha256:43b65d87429e54a15f4ee5af47dfeea200fed6851ebdad1e887762d572aba5f7
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates=20230311ubuntu0.22.04.1 \
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
