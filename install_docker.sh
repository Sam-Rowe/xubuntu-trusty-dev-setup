#!/bin/bash

function install_docker {
	
	if hash docker 2>/dev/null; then
        echo "Docker is already installed"
	else
		wget -qO- https://get.docker.com/ | sh
		usermod -aG docker $SUDO_USER
    fi
}

