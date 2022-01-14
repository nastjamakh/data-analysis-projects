#!/bin/bash
: "${PROJECT_NAME:=age-gap}"

docker build -t $PROJECT_NAME:latest .
