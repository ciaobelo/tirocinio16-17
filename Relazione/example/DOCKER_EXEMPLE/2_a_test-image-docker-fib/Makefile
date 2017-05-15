CFLAG=-std=gnu99 -Wpedantic -Wall -Wmain --pedantic

EXE=fibonacci.exe
O=fibonacci.o
C=fibonacci.c

all: ${EXE}

${EXE}: ${O}
	gcc ${CFLAG} -o ${EXE} ${O}

${O}: ${C}
	gcc -c ${CFLAG} ${C}

.PHONY: cleanall clean p a

p:
	gcc -E ${CFLAG} ${C}

a:
	gcc -S ${CFLAG} ${C}

cleanall:
	-rm *.o *.exe *core *~ *.out

clean:
	-rm *.o *~ *.out
