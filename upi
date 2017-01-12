#!/usr/bin/env bash

LIST=0
if [[ $1 = -l ]]
then
  LIST=1;
  shift;
fi


for image in `docker images | grep -v REPOSITORY | grep -v "<none>" | awk '{print $1":"$2}'`; do
  if (( LIST == 1 ))
  then
    echo "$image"
  else
    echo "Pulling $image..." && \
      docker pull $image;
    echo
  fi
done
