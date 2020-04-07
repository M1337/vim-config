#!/bin/sh
sudo apt-get install build-essential curl git python-setuptools ruby;
sudo apt-get install build-essential libevent-dev libncurses-dev;

#tmux2.9
wget -O tmux-2.9.tar.gz https://github.com/tmux/tmux/releases/download/2.9/tmux-2.9.tar.gz;
tar -zvxf tmux-2.9.tar.gz;
cd tmux-2.9/

./configure;
make;
sudo make install;
tmux -V;

gem install tmuxinator
