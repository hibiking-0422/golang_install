#!/bin/bash

<<commentout
$ bash <(curl -s https://raw.githubusercontent.com/hibiking-0422/golang_install/master/golang_install.sh)
commentout

#golang install
curl -L -O https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz

#解凍
sudo tar -C /usr/local -xf go1.13.5.linux-amd64.tar.gz

#path
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile

#goget install ,リポジトリのやつ
sudo yum install -y git mercurial subversion

#path
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bash_profile
