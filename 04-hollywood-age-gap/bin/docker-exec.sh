#!/bin/bash

: "${PROJECT_NAME:=age-gap}"

docker exec -i -t  -e `echo "${@:1}"`
