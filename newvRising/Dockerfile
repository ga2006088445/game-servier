FROM ubuntu:20.04
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386 libcurl3-gnutls
RUN apt-get install -y libsdl2-2.0-0:i386
RUN apt-get install -y wget
RUN apt-get install -y --no-install-recommends lib32gcc-s1 screen xvfb winbind xauth
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/steamcmd/
WORKDIR /root/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz

COPY vRising.txt vRising.txt
RUN /root/steamcmd/steamcmd.sh +runscript /root/steamcmd/vRising.txt

RUN apt-get install -y byobu net-tools

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

WORKDIR /usr/lib
RUN ln -s libcurl.so.4 libcurl-gnutls.so.4

CMD ["/root/start.sh"]