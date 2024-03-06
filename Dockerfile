# syntax=docker/dockerfile:1

FROM ubuntu:20.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget binutils gcc libc6-dev libgomp1 linux-libc-dev make \
    python-is-python2 python2.7-dev zlib1g-dev libdvbcsa1 python-dateutil dpkg \
    && apt-get install -y opencaster
# RUN wget http://ftp.de.debian.org/debian/pool/main/o/opencaster/opencaster_3.2.2+dfsg-1.1+b1_amd64.deb
# RUN apt-get install -y --no-install-recommends binutils gcc libc6-dev libgomp1 linux-libc-dev make python-dev zlib1g-dev python-dateutil
# RUN dpkg -i opencaster_3.2.2+dfsg-1.1+b1_amd64.deb