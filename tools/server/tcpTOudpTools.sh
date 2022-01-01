#!/bin/bash

IPs_TCP=(17777 17778 17015)
IPs_UDP=(7777 7778 27015)

mkdir -p /tmp/fifo
rm /tmp/fifo/*

for i in "${!IPs_TCP[@]}"
do
        TCP=${IPs_TCP[$i]}
        UDP=${IPs_UDP[$i]}
        mkfifo /tmp/fifo/$UDP
        echo "$TCP TO $UDP"
        nc -l -p $TCP < /tmp/fifo/$UDP | nc -u 192.168.1.1 $UDP > /tmp/fifo/$UDP &
done
