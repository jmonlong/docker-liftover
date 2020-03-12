FROM ubuntu:18.04

MAINTAINER jmonlong@ucsc.edu

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        unzip \
        less \
        libkrb5-dev \
        && rm -rf /var/lib/apt/lists/*

# liftOver binary
RUN wget --no-check-certificate https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/liftOver && \
        chmod +x liftOver && \
        mv liftOver /bin/

# download hg19 -> GRCh38 chain file
WORKDIR /home
RUN wget --no-check-certificate https://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

WORKDIR /data
