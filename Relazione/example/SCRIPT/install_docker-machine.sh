#!/bin/bash
# Questo script permette di installare docker-machine un tool aggiuttivo per la piattaforma docker
# Official link
# https://github.com/docker/machine/releases/
# https://docs.docker.com/machine/overview/
#

curl -L https://github.com/docker/machine/releases/download/v0.10.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
  chmod +x /tmp/docker-machine &&
  
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

exit 0;
  
  