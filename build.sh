#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
export PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/bin:$PATH
ROOT=`dirname $0`
cd $ROOT
ROOT=`pwd`
export CLASSPATH=$ROOT/testng-6.8/testng-6.8.jar 
if [ -d $ROOT/apache-ant-1.9.2/bin ]; then
  export PATH=$ROOT/apache-ant-1.9.2/bin:$PATH
fi
ant -Davatar-js.home=$ROOT/avatar-js -Dsource.home=$ROOT/node-v0.10.26 -Dlibuv.home=$ROOT/libuv -Dhttp-parser.home=$ROOT/http-parser -f $ROOT/avatar-js/build.xml

