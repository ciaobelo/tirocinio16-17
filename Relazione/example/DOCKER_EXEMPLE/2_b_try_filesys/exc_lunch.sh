#!/bin/bash

docker build -t alpine:structdir ./

pause

docker run alpine:structdir

exit
