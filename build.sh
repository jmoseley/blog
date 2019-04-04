set -xe

CLONE_DIR=$(pwd)

# TODO: Use static build to clone submodules
git clone https://github.com/luizdepra/hugo-coder.git themes/hugo-coder

yum install -y wget

# Install go
wget https://dl.google.com/go/go1.12.1.linux-amd64.tar.gz --quiet -O go.tar.gz
tar -C /usr/local -xzf go.tar.gz

# Set up paths
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go

mkdir -p $HOME/go/src

# Not sure why this doesn't happen during either 'go get' or 'go install'
go get github.com/wellington/go-libsass/libs

# Clone the project
cd $HOME/go/src
git clone https://github.com/gohugoio/hugo.git
cd hugo
# Install deps. Why doesn't 'go install' do this?
go get -d .
# Build hugo.
go install -i --tags extended

# Back to the dir with your project source
cd $CLONE_DIR

# Build project.
$GOPATH/bin/hugo
