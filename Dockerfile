FROM ubuntu:20.04
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386
RUN apt-get install -y libsdl2-2.0-0:i386
RUN apt-get install -y wget

RUN mkdir -p ~/steamcmd/
RUN cd ~/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz
COPY run_dedicated_servers.sh ~/run_dedicated_servers.sh
# RUN chmod u+x ~/run_dedicated_servers.sh

COPY start.sh ~/start.sh

CMD ["~/start.sh"]