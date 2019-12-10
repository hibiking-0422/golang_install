curl -L -O https://dl.google.com/go/go1.12.5.linux-amd64.tar.g

sudo tar -C /usr/local -xf go1.12.5.linux-amd64.tar.gz

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile

sudo yum install -y git mercurial subversion

echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bash_profile