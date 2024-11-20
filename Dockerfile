FROM ubuntu

RUN apt-get update && apt-get install -y\
    squid \
    sstp-client \
    iptables \
    iproute2 \
    net-tools \
    curl

