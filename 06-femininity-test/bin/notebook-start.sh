#!/bin/bash
: "${PROJECT_NAME:=mars-venus}"

docker exec -i -t  ${PROJECT_NAME} \
  poetry run dotenv run jupyter notebook \
  --ip="*" \
  --port=2129 \
  --NotebookApp.token=''  \
  --NotebookApp.custom_display_url=http://localhost:2129
