#!/bin/bash
# Questo script ha il compito di automatizzare la fase di aggiunta di un nodo come worker
# o anche in modalità di manager al set appena creato sfruttando i tocken di output.
#
# Ho scoperto da  poco  che esiste un flag --quite da applicalre al comando docker swarm init 
# per far si che come outpu restituisca solamente il tocken.
# in tal caso il mio script assume un utilità marginale per il fatto che basterebbe salvare output
# in una variabile e ridirezionarlo sopr all' elemento selezionato
#		#!/bin/sh    
#		# sha bang fondamentale negli script bash (outline di curiosiità su cosa serva. Indica il path di dove la shell corrente andrà a cercare l'eseguibile della shell in cui and
#		# ad eseguire il comandi dello script)
# 		# @author LorenzoValentini <lorenzo.valentini5@studio.unibo.it>
#		PORT=2377
#		docker swarm init --quit>$TOC
#    	echo -en "#!/bin/bash\n docker join --tocken $TOC $1:$PORT">$OUT_FILE
#	 	exit 0;
# Tutto senza l'ausilio di alcun ciclo for  per l'analisi dell'output del controllo precedente.
#

if [ $USER == 'root' ]
then
OUT_FILE=add_worker
OUT_FILE_M=add_master
INIT_START=init.start
FILE=./init.start

    echo "You are logged as root"
    if [ $# -eq '1' ]   #controllo se i parmetri a riga di comando è maggiore ugiale a due
    then
        echo "I have one argument required the first is [IPaddress]"
        docker swarm init --advertise-addr $1 >$INIT_STAR
    elif [ $# -ge '2' ]
    then
        echo "I have two arguments required the first is [IPaddress] the second is the in second var char array i saved "
        docker swarm init --advertise-addr $1 >$INIT_START
    else
        echo "I use the  default info of  system."
        docker swarm init>$INIT_START>stdout
        docker swarm join-token manager>>$INIT_START
    fi
    
    i=1
    while read LINE; do
        #echo "This is a line $i: $LINE"
        if [ $i -eq '5' ]
        then
            #echo "ciao";
            TOCKEN=$LINE
        fi
        if [ $i -eq '11' ]
        then
            #echo "ciao";
            TOCKEN_M=$LINE
        fi
        i=$(($i + 1))
    done < $FILE
#echo $i
    if  [ $i -ge 7 ]
    then
        echo "#!/bin/bash">$OUT_FILE
        echo $TOCKEN>>$OUT_FILE
        echo -en "You lunch the script called \"$OUT_FILE\"\nIn this mode: ./$OUT_FILE\n"
        echo "#!/bin/bash">$OUT_FILE_M
        echo $TOCKEN_M>>$OUT_FILE_M
        echo -en "You lunch the script called \"$OUT_FILE_M\"\nIn this mode: ./$OUT_FILE_M\n"
        rm --force $INIT_START
    else
        echo -en "Wrong execution \"docker swarm init...\"\n"
    fi
    
else
    echo "Please, you must be logged in administrator mode!!\n";
fi
exit 0
