#!/bin/sh

source ./conf.sh

cd $SRC_ROOT_PATH
CURL_SRC=curl-7.28.1
tar zxvf $CURL_SRC.tar.gz
cd $CURL_SRC
make clean
./configure --prefix=$LIB_PATH --enable-http \
	--enable-ftp --enable-file --enable-ldap --enable-dict --enable-telnet \
	--enable-tftp --enable-manual --enable-libgcc \
	--enable-nonblocking --enable-thread --enable-verbose --enable-cookies
make
make install

cd ../
#rm -rf $CURL_SRC
