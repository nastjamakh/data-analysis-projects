#!/bin/bash

: "${PROJECT_NAME:=mars-venus}"

docker exec -i -t  -e `echo "${@:1}"`
