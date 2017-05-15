Il Makefile l'ho inserito per compilare da fuori il file c in modo da provare il programma fuori dall'immagine docker in modo da automatizzare la procedura ;)

cd <path cartella corrente dove si trova il Makefile>

make

./fib.exe <il valore che vuoi calcolare>

es.... ./fib.exe 10


STEP 1.

sudo docker build -t <my_tag> .

STEP 2.

sudo docker run <my_tag> 