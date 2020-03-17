#!/bin/bash

docker run --name firefox -e DISPLAY=$DISPLAY --device /dev/snd/controlC0 \
	  --device /dev/snd/pcmC0D0p --device /dev/snd/timer \
	  -v $HOME/Downloads:/home/appuser/Downloads \
	    -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:/tmp/.host_Xauthority:ro \
	      -dti jamesshane/firefox

docker run -dti --privileged \
	-v $HOME/mydev:/tmp/mydev \
	    -v /tmp/.X11-unix:/tmp/.X11-unix \
	        -e DISPLAY=unix$DISPLAY \
		    --device /dev/dri \
		        --name vscode \
			    --net host \
			        --hostname $(hostname) \
				    -e UID=$(id -u) \
				        -e GID=$(id -g) \
					    -e USERNAME=$(id -un) \
					        jamesshane/vscode
