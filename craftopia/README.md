起容器的電腦 (需要ssh server):
diode publish -public 22:22

中間轉接 (gcp 不需要資源):
    diode gateway
    ssh -L 9999:0.0.0.0:6587 -o "ProxyCommand=nc -X 5 -x 127.0.0.1:1080 %h %p" diode@0x6ac8aa0f249b31c45c76cbe36f122e6e3c80d61d.diode
    PS: XXXX為容器電腦需要被轉接出去的port,   YYYY 為gcp伺服器上被用來轉接的port, ADDDDDDDDDDDDDDR 為容器主機起diode的地址
