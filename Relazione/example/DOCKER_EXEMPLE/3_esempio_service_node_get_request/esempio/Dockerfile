#well formed
#Docker formatta in questo modo il dockerfile
#INSTRUCTION arguments -> ad ogni modo l'instruction viene scritta in #maiuscolo solo per facilitare la comprensione di comandi docker questo fa si 
#che si possano distinguere dagli argomenti passati agli stessi.

#clausola principale del Dockerfile si specifica dove reperire l'immagine di base che può essere scaricata dal docker hub oppure per sistemi unix usata un immagine della macchina sottostante (guarda documentazine dockerfile per maggiori info su quale sia il flag). 
#l'immagine di partenza da cui creare la nostra immagine personalizzata.

FROM node:alpine
#FROM scratch

# Set the environment variables (defaults where required)
#ENV SRC_PATH ${SRC_PATH:-./node-ex2}
#ENV DEST_PATH=/build/
ENV PORT=9111


COPY ./node-ex2 ./build

RUN \
    ls -alh ./build/views &&\ 
	npm install ./build

#EXPOSE ${PORT}
EXPOSE 9111
RUN echo -e "Expose port ${PORT}\n"
WORKDIR ./build
CMD ["node", "./app.js"]

#CMD ["/bin/bash"]
