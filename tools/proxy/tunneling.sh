#!/bin/bash

IPs=(17777 17778 17015 27020)
USER="diode"
ADDR="0x6ac8aa0f249b31c45c76cbe36f122e6e3c80d61d"

for i in "${IPs[@]}"
do
        ssh -N -f -L 0.0.0.0:$i:127.0.0.1:$i -o "ProxyCommand=nc -X 5 -x 127.0.0.1:1080 %h %p" $USER@$ADDR.diode
done
