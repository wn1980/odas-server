FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y \ 
	git \
	cmake \
	libfftw3-dev \
	libconfig-dev \
	libasound2-dev
	
EXPOSE 9000 9001

WORKDIR /root/workspace
