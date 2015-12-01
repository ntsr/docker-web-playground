#!/bin/bash

if [ $# -ne 2 ]; then
  echo "invalid arguments." 1>&2
  echo "Usage: start.sh [CONTAINER_NAME] [PORT]" 1>&2
  exit 1
fi

CONTAINER_NAME=$1
PORT=$2

docker run  \
    -d  \
    --name ${CONTAINER_NAME}  \
    -p ${PORT}:80  \
    -v $(cd $(dirname $0) && pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
    -v $(cd $(dirname $0) && pwd)/contents:/usr/share/nginx/html:ro   \
    --restart always \
    nginx:latest
