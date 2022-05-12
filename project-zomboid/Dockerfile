FROM ubuntu:20.04
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386 libcurl3-gnutls
RUN apt-get install -y libsdl2-2.0-0:i386
RUN apt-get install -y wget

RUN mkdir -p /root/steamcmd/
WORKDIR /root/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz

COPY update_zomboid.txt update_zomboid.txt
RUN /root/steamcmd/steamcmd.sh +runscript /root/steamcmd/update_zomboid.txt

RUN apt-get install -y byobu net-tools

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

WORKDIR /usr/lib
RUN ln -s libcurl.so.4 libcurl-gnutls.so.4

WORKDIR /root/steamcmd/
CMD ["bash -c \"while true; do     echo '===';     sleep 1000000; done\""]


# 8766 UDP
# 16261 UDP

# 16262 - 16272 TCP
# 注意：從版本 41.65 開始，這些額外的端口可能不再需要。