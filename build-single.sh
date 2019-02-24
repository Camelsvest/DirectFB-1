#!/bin/bash

# cd directfb.git
#./configure --prefix=/home/developer/usr CFLAGS="-g -O0" CXXFLAGS="-g -O0" CPPFLAGS="-I/home/developer/usr/include"
#./configure --prefix="$HOME/usr" --enable-debug --enable-trace --enable-zlib --enable-jpeg --with-smooth-scaling --with-tests CPPFLAGS="-I$HOME/usr/include" LDFLAGS="-L$HOME/usr/lib"
if [ $1 == "debug" -o $1 == "DEBUG" ]; then
	CONFIGURE_PARAMETERS="--enable-debug --enable-debug-support --enable-extra-warnings --enable-trace"
elif [ $1 == "release" -o $1 == "RELEASE" ]; then
  	CONFIGURE_PARAMETERS=
else
	echo "You don't set parameters, RELEASE will be as default configure setting"
  	CONFIGURE_PARAMETERS=
fi

./configure --prefix="$HOME/usr/single-directfb" $CONFIGURE_PARAMETERS --enable-zlib --enable-jpeg --with-smooth-scaling --with-tests CPPFLAGS="-I$HOME/usr/include" LDFLAGS="-L$HOME/usr/lib"
make -j8
make install

