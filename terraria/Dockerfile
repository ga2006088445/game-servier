FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y wget unzip byobu

WORKDIR /root/
RUN wget https://terraria.org/api/download/pc-dedicated-server/terraria-server-1432.zip
RUN unzip terraria-server-1432.zip
RUN mv /root/1432/Linux/ /root/
RUN rm -r /root/1432/
RUN rm *.zip

WORKDIR /root/Linux
RUN chmod u+x TerrariaServer*

COPY start.sh /root/start.sh
RUN chmod u+x /root/start.sh

CMD ["/root/start.sh"]
