#!/bin/bash

<<commentout
$ bash <(curl -s https://raw.githubusercontent.com/hibiking-0422/golang_install/master/golang_install.sh)
commentout

#update
sudo yum -y update

#git install
sudo yum -y install git

#golang install
wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz

#解凍
tar -xzf go1.13.5.linux-amd64.tar.gz

#/usr/local/srcに移動
sudo mv go /usr/local/src

#path通す
echo 'export GOROOT="/usr/local/src/go"' >> ~/.bash_profile
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.bash_profile
