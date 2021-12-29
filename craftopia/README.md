起容器的電腦 (需要ssh server):
diode publish -public 22:22

中間轉接 (gcp 不需要資源):
    diode gateway -httpd_port 8080 -httpsd_port 443
    ssh -L YYYY:127.0.0.1:XXXX -o "ProxyCommand=nc -X 5 -x 127.0.0.1:1080 %h %p" bevis@ADDDDDDDDDDDDDDR.diode
    PS: XXXX為容器電腦需要被轉接出去的port,   YYYY 為gcp伺服器上被用來轉接的port, ADDDDDDDDDDDDDDR 為容器主機起diode的地址