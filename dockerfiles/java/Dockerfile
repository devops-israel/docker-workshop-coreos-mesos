FROM ubuntu:14.04

RUN \
    DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends openjdk-7-jre-headless curl ca-certificates -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/*
