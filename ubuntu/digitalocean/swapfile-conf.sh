#!/usr/bin/env bash

set -e

# article: https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04

fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

swapon -s
free -m

cat /proc/sys/vm/swappiness
sysctl vm.swappiness=10
cat /proc/sys/vm/swappiness

cat <<EOF
manual steps:
-------------
# vim /etc/fstab
write: /swapfile   none    swap    sw    0   0

# vim /etc/sysctl.conf
set: vm.swappiness=10
EOF
