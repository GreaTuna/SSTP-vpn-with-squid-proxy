FROM ubuntu

RUN apt-get update && apt-get install -y\
    squid \
    sstp-client \
    iptables \
    iproute2 \
    net-tools \
    curl

RUN mkdir -p /home/scripts
COPY ./src/sstp_starter.sh /home/scripts/sstp_starter.sh
CMD ["tail", "-f", "/dev/null"]
