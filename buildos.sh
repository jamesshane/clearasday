#!/bin/bash

cd ~
cd mydev/dockeros
cd docker-ubuntux
docker build -t jamesshane/ubuntux .
cd ../docker-firefox/
docker build -t jamesshane/firefox .
cd ../docker-vscode/vscode
docker build -t jamesshane/vscode .
cd ../docker-snapd/
docker build -t jamesshane/snapd .


