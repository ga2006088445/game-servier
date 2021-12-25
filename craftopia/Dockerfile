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
# https://steamdb.info/search/?a=app&q=craftopia&type=-1&category=0
RUN /root/steamcmd/steamcmd.sh +force_install_dir "/root/craftopia_server" +login anonymous +app_update 1670340 validate +quit

RUN apt-get install -y byobu net-tools

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

COPY "updata&start.sh" "/root/updata&start.sh"
RUN chmod u+x "/root/updata&start.sh"

WORKDIR /usr/lib
RUN ln -s libcurl.so.4 libcurl-gnutls.so.4

WORKDIR /root/steamcmd/
CMD ["/root/start.sh"]
