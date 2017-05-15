#iSTRIZIONI PER TESTING#
https://docs.docker.com/engine/userguide/eng-image/baseimages/
STEP 1:
build image. 

cd <go in the courrent directory path>

sudo docker build -t <nome_immagine>:<tag_release_specifica> .

*you don't forget the " . " is necessary.

STEP 2:
luch the image.

sudo docker run -t -i <nome_immagine>:<tag_release_specifica>