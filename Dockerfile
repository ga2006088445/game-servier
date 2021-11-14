FROM ubuntu:20.04
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libstdc++6:i386 libgcc1:i386 libcurl4-gnutls-dev:i386
RUN apt-get install -y libsdl2-2.0-0:i386
RUN apt-get install -y wget

RUN mkdir -p /root/steamcmd/
RUN cd /root/steamcmd/
RUN wget "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"
RUN tar -xvzf steamcmd_linux.tar.gz
COPY run_dedicated_servers.sh /root/run_dedicated_servers.sh
RUN chmod u+x /root/run_dedicated_servers.sh
RUN /root/run_dedicated_servers.sh

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

CMD ["/root/start.sh"]