FROM ubuntu

#ADD ["/usr/bin/make", "/bin/"]

#RUN \
    #apt-get autoclean &&\
    #apt-get update &&\
    #apt install make &&\
    #apt install gcc

ADD ["./", "./content"]

RUN cd content &&\
    #gcc -c -std=gnu99 -Wpedantic -Wall -Wmain --pedantic fibonacci.c &&\
    #gcc -std=gnu99 -Wpedantic -Wall -Wmain --pedantic -o fibonacci.exe fibonacci.o &&\
    chmod u+x fibonacci.exe &&\
    mv ./fibonacci.exe /bin/fib &&\
    rm *
CMD ["fib", "6"] 
