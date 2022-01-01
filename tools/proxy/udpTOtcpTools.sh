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
        echo "$UDP TO $TCP"
        sudo nc -l -u -p $UDP < /tmp/fifo/$UDP | nc localhost $TCP > /tmp/fifo/$UDP &
done
