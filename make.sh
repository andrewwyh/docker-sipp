#!/bin/sh

apt-get update

apt-get install -y\
	build-essential \
	libpcap-dev \
	libncurses-dev \
	cmake \
	git \
	gzip \

git clone https://github.com/SIPp/sipp.git /sipp
cd /sipp 
cmake . -DUSE_PCAP=1
make
