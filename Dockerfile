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
RUN /root/steamcmd/steamcmd.sh +force_install_dir "/root/dontstarvetogether_dedicated_server" +login anonymous +app_update 343050 validate +quit

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

COPY updata&start.sh /root/updata&start.sh
RUN chmod u+x /root/updata&start.sh

WORKDIR /usr/lib
RUN ln -s libcurl.so.4 libcurl-gnutls.so.4

WORKDIR /root/steamcmd/
CMD ["/root/start.sh"]
