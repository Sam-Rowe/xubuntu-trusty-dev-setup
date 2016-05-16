#!/bin/bash

function install_nvm {
  
sudo -u $SUDO_USER bash <<'EOF'

	if [ ! -d ~/.nvm ]; then
		# We have wget on trusty out of the box (but not curl)
		wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
	fi

EOF
  
}

