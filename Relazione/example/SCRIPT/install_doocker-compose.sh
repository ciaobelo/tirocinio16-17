#!/bin/bash
# You can to have more information of this tool it's following the link below.
# https://docs.docker.com/compose/overview/#compose-documentation
# https://docs.docker.com/compose/overview/
#
# This scrit made with intention to create the automatic installer for docker-compose on ubuntu distro

curl -L -y "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version



exit 0;


