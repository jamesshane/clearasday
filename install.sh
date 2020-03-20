#!/bin/bash

#clear linux
cd ~
sudo passwd j && \
sudo swupd update && \
sudo swupd bundle-add os-core-search && \
sudo swupd bundle-add os-utils-gui && \
sudo swupd bundle-add dev-utils-gui && \
sudo swupd bundle-add  desktop-awesome && \
sudo install-vbox-lga && \
sudo swupd bundle-add containers-basic && \
sudo usermod -aG docker j && \
sudo timedatectl set-timezone America/Denver && \
sudo swupd bundle-add lightdm 
cp -r /usr/share/xdg/awesome/ ~/.config/
sed -i 's/Mod4/Mod1/g' ~/.config/awesome/rc.lua
sed -i 's/xterm/xfce4-terminal/g' ~/.config/awesome/rc.lua

