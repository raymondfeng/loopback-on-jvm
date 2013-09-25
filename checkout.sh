#!/bin/bash
ROOT=`dirname $0`
cd $ROOT
ROOT=`pwd`
# Download node v0.10.18
if [ ! -d node-v0.10.18 ]; then
  echo 'Downloading node.js...'
  curl -sL http://nodejs.org/dist/v0.10.18/node-v0.10.18.tar.gz| tar zx
fi

if [ ! -d apache-ant-1.9.2 ]; then
  echo 'Downloading ant...'
  curl -sL http://www.apache.org/dist/ant/binaries/apache-ant-1.9.2-bin.tar.gz| tar zx
fi

if [ ! -d testng-6.8 ]; then
  echo 'Downloading testng...'
  curl -s http://testng.org/testng-6.8.zip -o testing-6.8.zip && unzip testing-6.8.zip
fi

# Clone or pull from the avatar-js repos
function sync {
  PROJ=$1
  echo Syncing $PROJ...
  if [ -d $PROJ/.git ]; then
    cd $ROOT/$PROJ
    git pull
  else
    git clone git://java.net/avatar-js~$PROJ $PROJ
  fi
  cd $ROOT
}

sync avatar-js
sync libuv
sync http-parser

