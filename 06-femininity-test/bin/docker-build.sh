#!/bin/bash
: "${PROJECT_NAME:=mars-venus}"

docker build --no-cache -t $PROJECT_NAME:latest .
