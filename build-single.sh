#!/bin/bash

# cd directfb.git
#./configure --prefix=/home/developer/usr CFLAGS="-g -O0" CXXFLAGS="-g -O0" CPPFLAGS="-I/home/developer/usr/include"
#./configure --prefix="$HOME/usr" --enable-debug --enable-trace --enable-zlib --enable-jpeg --with-smooth-scaling --with-tests CPPFLAGS="-I$HOME/usr/include" LDFLAGS="-L$HOME/usr/lib"
./configure --prefix="$HOME/usr/single-directfb" --enable-debug --enable-debug-support --enable-extra-warnings --enable-trace --enable-zlib --enable-jpeg --with-smooth-scaling --with-tests CPPFLAGS="-I$HOME/usr/include" LDFLAGS="-L$HOME/usr/lib"
