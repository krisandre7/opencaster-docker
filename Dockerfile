# syntax=docker/dockerfile:1

FROM ubuntu:20.04

WORKDIR /opencaster-ide
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget binutils gcc libc6-dev libgomp1 linux-libc-dev make python-is-python2 \
    python2.7-dev zlib1g-dev libdvbcsa1 python-dateutil dpkg opencaster \
    git