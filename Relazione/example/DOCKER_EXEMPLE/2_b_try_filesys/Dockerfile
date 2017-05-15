
FROM node:alpine

ENV DEST_PATH=/build

ENV DEPENDENCE_FILE=print_elem.sh

ADD ./ex2 .${DEST_PATH}

ADD ./ex2/ ./build1

ADD ./ ./build2/ciao

COPY ["./print_elem.sh", "./"]

ADD ["./print_elem.sh", "./script2"]

RUN \
    chmod 777 $DEPENDENCE_FILE &&\
    mv print_elem.sh /bin/

CMD ["/bin/bash","print_elem.sh"]

