#!/bin/bash

function install_google_chrome {
  
  REPO_CHECK=$(dpkg-query -W --showformat='${Status}\n' google-chrome-stable | grep "install ok installed")
  
  if [ "" == "$REPO_CHECK" ]; then
    
    if [ ! -f /etc/apt/sources.list.d/google.list ]; then #consider nothing is configured
      wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
      sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    fi
    
    apt-get -qq update
    apt_install google-chrome-stable
  fi
  
}

