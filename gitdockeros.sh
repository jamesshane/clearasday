#!/bin/bash

git config --global user.name "James Shane"
git config --global user.email "jamesshane@gmail.com"
git config --global credential.helper store

cd ~

mkdir -p mydev/dockeros
cd mydev/dockeros

git clone https://github.com/jamesshane/docker-vscode.git
git clone https://github.com/jamesshane/docker-firefox.git
git clone https://github.com/jamesshane/docker-ubuntux.git
git clone https://github.com/jamesshane/docker-ubuntuvnc.git
git clone https://github.com/jamesshane/docker-discord.git

