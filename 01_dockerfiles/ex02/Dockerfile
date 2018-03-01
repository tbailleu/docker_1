FROM ruby

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nodejs
RUN gem update && gem install bundler && gem install rails

ONBUILD COPY . /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD RUN bundler install && rails db:migrate && rails db:seed

# 
# build docker image with:
# 		docker build -t dc_ex02 path/to/dockerfile
# 
# then start the dockerised image with:
# 		docker run -it --rm dc_ex02
# 
