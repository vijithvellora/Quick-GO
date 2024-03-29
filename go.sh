#!/usr/bin/env bash

cd /tmp &&
sudo apt-get update  &&
sudo apt-get -y upgrade  &&
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz &&
sudo tar -xvf go1.20.linux-amd64.tar.gz &&
sudo mv go /usr/local &&
export GOROOT=/usr/local/go &&
cd $HOME && mkdir go &&
export GOPATH=$HOME/go &&
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH &&
echo "export PATH=$GOPATH/bin:$GOROOT/bin:$PATH" >> ~/.profile &&
source ~/.profile &&
go version
