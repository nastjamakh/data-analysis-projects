#!/bin/bash
: "${PROJECT_NAME:=age-gap}"

docker exec -i -t  ${PROJECT_NAME} \
  poetry run dotenv run jupyter notebook \
  --ip="*" \
  --port=2139 \
  --NotebookApp.token=''  \
  --NotebookApp.custom_display_url=http://localhost:2139
