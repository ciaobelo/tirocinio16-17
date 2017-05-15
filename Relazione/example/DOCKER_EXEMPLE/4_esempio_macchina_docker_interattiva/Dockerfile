FROM ubuntu:16.04

RUN \
    apt-get update && apt-get install -y --no-install-recommends apt-utils &&\
    apt-get install -y -q apt-transport-https ca-certificates &&\
    apt-get install -y -q dirmngr

RUN \
#sys update
    apt-get update &&\
#download curl    
    apt-get -y install curl &&\
    apt-get autoclean

# ...put your own build instructions here...
#RUN \
#    apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"
  
RUN \
#second sys update
    apt-get update --fix-missing &&\
    apt-get update &&\
    apt-get install -y -q apparmor
RUN \
    curl -fsSL https://get.docker.com/ | sh &&\
    apt-get -y install --install-suggests curl net-tools

CMD ["/bin/bash"]
