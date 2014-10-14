#!/usr/bin/env bash

sudo add-apt-repository ppa:ermshiperete/monodevelop
sudo apt-get update
sudo apt-get install monodevelop-current

if [ -f /opt/monodevelop/bin/monodevelop-launcher.sh ]
then
    [ -h /usr/local/bin/monodevelop-latest ] && (sudo rm /usr/local/bin/monodevelop-latest)
    sudo ln -s /opt/monodevelop/bin/monodevelop-launcher.sh /usr/local/bin/monodevelop-latest
fi
