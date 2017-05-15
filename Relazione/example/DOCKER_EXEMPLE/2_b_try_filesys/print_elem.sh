#!/bin/bash
echo -e "INIZIO\n"
echo -e "#### primo comando eseguito: ls -al ./build1\n\
build ####\n";
ls -al ./build1 ;
echo -e "#### primo psecondo eseguito: ls -al /build/ciao \n\
ciao ####\n";
ls -al ./build2/ciao ;
echo -e "#### primo terzo eseguito: ls -al  ####\n";
echo -e "#########\n\
cosa dovrei vedere tutti le cartelle in root\
quelle che mi interessano sono: \n\
-build \n\
-build1 \n\
build2/ciao \n\
script2\n\
################\n";
ls -al ./
echo -e "FINE\n"
exit
