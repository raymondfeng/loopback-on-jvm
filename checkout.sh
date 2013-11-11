#!/bin/bash
ROOT=`dirname $0`
cd $ROOT
ROOT=`pwd`
# Download node v0.10.21
if [ ! -d node-v0.10.21 ]; then
  echo 'Downloading node.js...'
  curl -sL http://nodejs.org/dist/v0.10.21/node-v0.10.21.tar.gz| tar zx
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
  TARGET=$2
  echo Checking out $PROJ...
  if [ -d $TARGET/.git ]; then
    cd $ROOT/$TARGET
    git pull
  else
    git clone git://java.net/avatar-js~$PROJ $TARGET
  fi
  cd $ROOT
}

sync src avatar-js
sync libuv-java libuv
sync http-parser-java http-parser

echo 'Checking out strongloop/sls-sample-app...'
if [ -d sls-sample-app/.git ]; then
  cd $ROOT/sls-sample-app
  git pull
  cd $ROOT
else
  git clone git@github.com:strongloop/sls-sample-app.git sls-sample-app
fi

