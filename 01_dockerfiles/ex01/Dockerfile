FROM debian

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget bzip2 -y

EXPOSE 9987/udp 10011 30033 41144

RUN useradd teamspeak
WORKDIR /home/teamspeak

RUN wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
RUN tar -xvf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

COPY ts3server.ini /home/teamspeak/teamspeak3-server_linux_amd64/ts3server.ini

USER teamspeak

ENTRYPOINT [ "sh" , "ts3server_minimal_runscript.sh", "inifile=ts3server.ini" ]

# 
# build docker image with:
# 		docker build -t dc_ex01 path/to/dockerfile
# 
# then start the dockerised image with:
# 		docker run -it --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 -p 41144:41144 dc_ex01
# 
