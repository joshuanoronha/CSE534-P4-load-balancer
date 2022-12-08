#!/bin/bash

sudo apt-get update


#p4c
git clone --recursive https://github.com/p4lang/p4c.git

sudo apt-get install -y cmake g++ git automake libtool libgc-dev bison flex libfl-dev libgmp-dev libboost-dev libboost-iostreams-dev libboost-graph-dev llvm pkg-config python python-scapy python-ipaddr python-ply tcpdump doxygen graphviz texlive-full

git clone https://github.com/protocolbuffers/protobuf.git
cd protobuf
git checkout v3.2.0
git submodule update --init --recursive
./autogen.sh
./configure
make
make check
sudo make install
sudo ldconfig

cd ~/p4c
mkdir build
cd build
cmake ..
make -j4
make -j4 check
sudo make install

cd
git clone https://github.com/p4lang/behavioral-model.git
cd behavioral-model
./install_deps.sh
./autogen.sh
./configure
make
sudo make install
sudo ldconfig