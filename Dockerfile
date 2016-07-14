# 1999 server
# VERSION 0.1

FROM ubuntu:14.04

MAINTAINER Hameedullah Khan <h@hameedullah.com>

RUN apt-get update && apt-get install -y nodejs npm nodejs-legacy git 
RUN git clone https://github.com/scripting/nodestorage.git /var/nodestorage
RUN cd /var/nodestorage && npm install 
ADD config.json /var/nodestorage/config.json

EXPOSE 1999
EXPOSE 2000

WORKDIR /var/nodestorage

CMD ["node", "storage.js"]
