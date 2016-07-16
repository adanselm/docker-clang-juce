FROM debian:jessie
MAINTAINER Adrien Anselme <adrien@springbeats.com>

RUN apt-get update \
 && apt-get install -y --no-install-recommends cmake binutils make \
    pkg-config perl-modules libdigest-md5-file-perl python git llvm clang \
    libfreetype6-dev libx11-dev libxinerama-dev libxrandr-dev libxcursor-dev \
    mesa-common-dev libasound2-dev freeglut3-dev libxcomposite-dev libcurl4-gnutls-dev \
 && apt-get -y autoremove \
 && apt-get -y clean \
 && update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100 \
 && update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100

ENTRYPOINT	[ "bash" ]
