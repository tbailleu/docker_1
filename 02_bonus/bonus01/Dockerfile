FROM    debian

ENV     TERM=xterm

RUN     apt-get update -yqq && apt-get install -yqq git cmake nano
RUN     git clone https://github.com/tbailleu/fillit.git project

WORKDIR project

RUN     make
RUN     find . | grep -v -E "^.(/fillit||/testmaps(/.*)?)$" | xargs rm -rf

CMD     ["bash"]

# 
# build docker image with:
# 		docker build -t 42_docker_fillit path/to/dockerfile
# 
# then start the dockerised image with:
# 		docker run -it --rm 42_docker_fillit
# 
