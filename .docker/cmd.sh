#!/bin/sh
mkdir -p /var/log/vsftpd
touch /var/log/vsftpd.log
/bin/ln -sf /dev/stdout /var/log/vsftpd.log

exec /usr/sbin/vsftpd -opasv_min_port=$MIN_PORT -opasv_max_port=$MAX_PORT $ADDR_OPT /etc/vsftpd/vsftpd.conf
