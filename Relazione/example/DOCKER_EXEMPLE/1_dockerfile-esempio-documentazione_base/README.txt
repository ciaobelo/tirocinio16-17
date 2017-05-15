
STEP 1.

sudo docker build -t <my_tag> ./

STEP 2.

sudo docker run <my_tag>

Se volessimo caricare il nostro container nel dockerhub dovremmo inizialmente registrarci e creare un nuovo account.
Una volta creato l'account dovremmo creare un repo da remoto tramite terminale oppure dal browser iunti a quel punto dovremmo logarci

docker login

ci chiederà nomeaccount e la pass

poi siamo pronti per caricare e scaricare immagini sul repo

docker push

docker pull

infine una volta finito possiamo fare il logout. 