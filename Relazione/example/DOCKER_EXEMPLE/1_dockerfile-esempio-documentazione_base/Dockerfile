# Questo esempio molto basilare mostra come in poco tempo possiamo creare una versione personalizzata "docker/whalesay:latest"
# eseguendo un update e installando il programma fortunes fornito nel pacchetto aptitude.

FROM docker/whalesay:latest

RUN apt-get -y update &&\
	apt-get install -y fortunes

CMD /usr/games/fortune -a | cowsay
