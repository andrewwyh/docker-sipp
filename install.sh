#!/bin/sh

apt-get update

apt-get install -y \
libncursesw6 \
libpcap0.8

apt-get autoclean