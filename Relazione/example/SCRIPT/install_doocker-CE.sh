#!/bin/bash
#Questo script permette di installare decker CE sopra alla propria macchina linux Ubuntu che facci parte delle distro o derivati
# * OS requirements
# * To install Docker, you need the 64-bit version of one of these Ubuntu versions:
# * Yakkety 16.10
# * Xenial 16.04 (LTS)
# * Trusty 14.04 (LTS)
# https://docs.docker.com/engine/installation/linux/ubuntu/
# https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository
#

sudo apt-get -y install apt-transport-https ca-certificates curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get -y install docker-ce

exit 0;