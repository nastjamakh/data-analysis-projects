#!/bin/bash
: "${PROJECT_NAME:=age-gap}"

if  docker ps | grep " $PROJECT_NAME$"; then
    echo "Container already started. Do nothing"
elif docker ps -a |grep " $PROJECT_NAME$" ; then
    docker start $PROJECT_NAME
else
  docker run -i -d \
            -v $HOME/.ssh:/home/jumbo/.ssh \
            -v `pwd`:/app/$PROJECT_NAME \
            --add-host=host.docker.internal:host-gateway \
            -p 3001:3001 \
            -p 2139:2139 \
            --name $PROJECT_NAME \
            -t $PROJECT_NAME:latest \
            /bin/bash
  docker exec -i -t $PROJECT_NAME poetry install
fi
