FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y \ 
	git \
	cmake \
	libfftw3-dev \
	libconfig-dev \
	libasound2-dev
	
WORKDIR /root

RUN git clone https://github.com/introlab/odas

RUN cd odas && mkdir build && cd build && cmake ../
RUN cd odas/build && make

EXPOSE 9000 9001

WORKDIR /root/odas
