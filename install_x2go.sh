#!/bin/bash

function install_x2go {
  
  #from https://www.howtoforge.com/tutorial/x2go-server-ubuntu-14-04
  REPO_CHECK=$(dpkg-query -W --showformat='${Status}\n' x2goserver | grep "install ok installed")
  if [ "" == "$REPO_CHECK" ]; then
    
    add-apt-repository -y ppa:x2go/stable
    apt_quiet_update
    apt_install x2goserver
    apt_install x2goserver-xsession
    
    #client
    apt_install x2goclient
    
  fi
}

