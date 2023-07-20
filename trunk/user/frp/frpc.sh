#!/bin/sh
mac=''`cat /sys/class/net/eth2/address  | awk -F: '{print $1$2$3$4$5$6}'| tr '[a-z]''[A-Z]'`
echo "$mac"
sed -i "s/y1/echo "$mac"/g"  /etc/storage/frp_script.sh
