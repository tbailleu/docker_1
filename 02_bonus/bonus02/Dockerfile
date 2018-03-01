FROM	debian

ENV		DEBIAN_FRONTEND noninteractive

RUN		apt-get update -yqq && apt-get install -yqq software-properties-common
RUN		apt-add-repository --yes ppa:webupd8team/java && apt-get update -yqq

RUN		echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
		echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN		apt-get -yqq --allow-unauthenticated install curl oracle-java8-installer && apt-get clean

ADD		./script_mc_server.sh /start
RUN		chmod +x /start

EXPOSE	25565

VOLUME	["/data"]

CMD		["/start"]

# 
# build docker image with:
# 		docker build -t mc_docker_server path/to/dockerfile
# 
# then start the dockerised mc_server with CLI:
# 		docker run -it --rm -p 25565:25565 mc_docker_server
# 
# or in background whit:
# 		docker run -d --rm -p 25565:25565 mc_docker_server
# 
