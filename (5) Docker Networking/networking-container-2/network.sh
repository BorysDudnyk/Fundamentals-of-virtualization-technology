#!/bin/sh

IP_ADDRESS_1=$IP_ADDRESS_1
IP_ADDRESS_2=$IP_ADDRESS_2

ip addr add $IP_ADDRESS_1/24 dev eth0
ip route add default via $IP_ADDRESS_2
