ARG BASE_IMAGE=ciena/mininet:ubuntu-xenial
FROM ${BASE_IMAGE}

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-setuptools \
    hping3 \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install scapy requests
