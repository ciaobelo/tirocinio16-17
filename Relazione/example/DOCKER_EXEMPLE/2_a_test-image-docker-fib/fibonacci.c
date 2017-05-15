#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define TYPE_VAR uint64_t

void fibona(char *i_val);
TYPE_VAR fib(TYPE_VAR F, char car);
/*
 F_{1}=1,
 F_{2}=1
 F_{n}=F_{n-1}+F_{n-2}} F_{n}=F_{{n-1}}+F_{{n-2}} (per ogni n>2)
Gli elementi {\displaystyle F_{n}} F_{n} sono anche detti numeri di Fibonacci.
*/
TYPE_VAR fib(TYPE_VAR F, char car) {
    if(F>2) {
        //printf("apro la ricorsione con f=%d e ff=%d\n",F-1,F-2);        
        return fib(F-1, 'a') + fib(F-2, 'b');
    }else{
        //printf("fine F= %d %c\n",F,car);
        return 1;
    }
}

void fibona(char *i_val) { /*input_value mi rappresenta il valore dell'array*/
    int val= atoi(i_val);
    printf("valore valore su cui si calcola fibonacci F = %d\n",val);
    printf("ris %lu\n", fib(val, '.'));
}

int main(int argc, char *argv[]) {
	if(argc > 1) {
		printf("modalità input dal utente\n");
    fibona(argv[argc-1]);
	}else{
    char array[4]={'1','0','0','\0'};
		printf("modalità promisqua\n");	
    fibona(array);	
	}
return (0);
}
