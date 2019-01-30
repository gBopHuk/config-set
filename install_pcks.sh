#!/bin/sh

[ $(which curl) ] || { echo "install curl" && exit 1; }
curl -s https://raw.githubusercontent.com/Etersoft/eepm/master/packed/epm.sh | bash /dev/stdin ei --auto

# install packages
epm i tmux mc 
