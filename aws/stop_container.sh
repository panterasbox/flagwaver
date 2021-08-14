#!/bin/bash

CONTAINER=`docker ps -a -q --filter name=pbbanner --format="{{.ID}}"`

if [ -z $CONTAINER ]
then echo No container running.
else docker rm $(docker stop $CONTAINER)
fi
