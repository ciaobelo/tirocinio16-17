#!/bin/bash
# per lanciare e d esegguire sulla propria macchina un istanze di un container docker con installato un server web

docker run -i -p 127.0.0.1:9111:9111 matteo94/service:latest 

exit 0;


