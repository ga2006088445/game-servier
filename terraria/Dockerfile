FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y wget unzip

WORKDIR /root/
RUN wget https://terraria.org/api/download/mobile-dedicated-server/MobileTerrariaServer.zip
RUN unzip MobileTerrariaServer.zip
RUN unzip Linux_MobileServer*.zip
RUN rm *.zip

WORKDIR /root/ServerLinux
RUN chmod u+x TerrariaServer*
RUN /root/.config/TerrariaServer/serverconfig.txt

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

WORKDIR /root/
CMD ["/root/start.sh"]
