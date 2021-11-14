FROM ubuntu:20.04
# RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libstdc++6 libgcc1 libcurl4-gnutls-dev libcurl3-gnutls
RUN apt-get install -y libsdl2-2.0-0
RUN apt-get install -y wget

RUN mkdir -p /root/steamcmd/
WORKDIR /root/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz
# COPY run_dedicated_servers.sh /root/run_dedicated_servers.sh
# RUN chmod u+x /root/run_dedicated_servers.sh
# RUN /root/run_dedicated_servers.sh
RUN /root/steamcmd/steamcmd.sh +force_install_dir "/root/dontstarvetogether_dedicated_server" +login anonymous +app_update 343050 validate +quit

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

WORKDIR /usr/lib
RUN ln -s libcurl.so.4 libcurl-gnutls.so.4

WORKDIR /root/steamcmd/
CMD ["/root/start.sh"]