#!/bin/sh

cd ..
cd ..
cd Programs
cd vim
cd src
make distclean 
cd ..
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            #--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr \
	    --enable-xterm_clipboard

make VIMRUNTIMEDIR=/usr/local/share/vim/vim81 -j 8
sudo make install

#--enable-fail-if-missing \
#--enable-python3interp \
#--with-python3-config-dir=/usr/lib/python3.5/config-3.4m-x86_64-linux-gnu \
#sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev     libgtk2.0-dev libatk1.0-dev libbonoboui2-dev     libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev     python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git
