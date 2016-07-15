# docker-1999
Dockerfile for 1999 server

Build your own container from the docker file, to build:

 $ docker build -t 1999server:dockerfile .
 
For help on docker build read the docker command documentation or use docker build --help

To run the container:

 $ docker run -d -p 1999:1999 -p 2000:2000 --name 199server 1999server:dockerfile
 
For help on docker run read the docker command documentation or use docker run --help
