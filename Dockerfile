FROM ubuntu:20.04
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386
RUN apt-get install libsdl2-2.0-0:i386

RUN mkdir -p ~/steamcmd/
RUN cd ~/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz
COPY run_dedicated_servers.sh ~/run_dedicated_servers.sh
RUN chmod u+x ~/run_dedicated_servers.sh

COPY start.sh ~/start.sh
COPY dedicated_server_mods_setup.lua ~/dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua

CMD ["~/start.sh"]