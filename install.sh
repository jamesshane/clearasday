#!/bin/bash

#clear linux
cd ~
sudo passwd j && \
sudo swupd update && \
sudo swupd bundle-add or-core-search && \
sudo swupd bundle-add os-utils-gui && \
sudo swupd bundle-add dev-utils-gui && \
sudo swupd bundle-add  desktop-awesome && \
sudo install-vbox-lga && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && \
sed -i 's/font/powerline/g' ~/.bashrc && \
sudo swupd bundle-add containers-basic && \
sudo usermod -aG docker j
sudo timedatectl set-timezone America/Denver
