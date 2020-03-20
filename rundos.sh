#!/bin/bash

echo -e "\nxhost +si:localuser:j\n" >> ~/.bashrc

xhost +si:localuser:j

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

docker run \
    --name=snap \
    -ti \
    --tmpfs /run \
    --tmpfs /run/lock \
    --tmpfs /tmp \
    --cap-add SYS_ADMIN \
    --device=/dev/fuse \
    --security-opt apparmor:unconfined \
    --security-opt seccomp:unconfined \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
    -v /lib/modules:/lib/modules:ro \
    -d jamesshane/snapd

echo -e "\nalias dff='docker start firefox'\nalias dvs='docker start vscode'\nalias dsnap='docker start snap && docker exec -ti snap bash'" >> ~/.bashrc

