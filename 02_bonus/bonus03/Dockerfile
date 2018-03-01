FROM node:latest

COPY package.json /tmp/

RUN apt-get update && apt-get -y install curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN cd /tmp && yarn

RUN mkdir -p /app && cd /app && ln -s /tmp/node_modules

WORKDIR /app
COPY . /app

VOLUME [ "/app" ]

EXPOSE 3001

CMD [ "node" , "app.js" ]

# 
# build docker image with:
# 		docker build -t yarn_docker_server path/to/dockerfile
# 
# then start the dockerised image with:
# 		docker run -it --rm -p 3001:3001 yarn_docker_server
# 
