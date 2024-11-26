#!/bin/bash

touch /var/log/vpn/sstp.log
sstpc --user "$USERNAME" --password "$PASSWORD" --tls-ext "$SSTP_SERVER" \
      noauth nodefaultroute usepeerdns\
      --log-level 1 --log-stderr >> /var/log/vpn/sstp.log 2>&1 & sleep 15

touch /var/log/squid/access.log
chown -R proxy:proxy /var/log/squid

service squid start

tail -f /dev/null
