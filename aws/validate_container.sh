#!/bin/bash

curl localhost:2090 -s -f -o /dev/null; 

if (( $? ))
then 
  echo "Health check failed.";
  exit $?
else
  echo "Health check passed.";
  docker container prune -f;
  docker image prune -af;
  exit 0
fi
