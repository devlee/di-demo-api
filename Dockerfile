FROM node

MAINTAINER devlee <devlee@outlook.com>

RUN apt-get update; \
    apt-get -y upgrade

RUN mkdir /home/git; \
    cd /home/git; \
    git clone https://github.com/devlee/di-demo-api.git -b master; \
    cd /home/git/di-demo-api; \
    git checkout master; \
    git pull; \
    npm install;

WORKDIR /home/git/di-demo-api

EXPOSE 6688