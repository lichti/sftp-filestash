#!/bin/bash
set -e
 
printf "\n\033[0;44m---> Starting the SSH server.\033[0m\n"

chown 0:0 /data 
chmod go+rx /data

mkdir /data/uploads || tail /dev/null
chown -R 2000:users /data/uploads || tail /dev/null

#service ssh start
#service ssh status

mkdir -p -m0755 /var/run/sshd
mkdir -p -m0755 /run/sshd

/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config

#exec "$@"
