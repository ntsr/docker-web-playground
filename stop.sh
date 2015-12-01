#!/bin/bash

if [ $# -ne 1 ]; then
  echo "invalid arguments." 1>&2
  echo "Usage: stop.sh [CONTAINER_NAME]" 1>&2
  exit 1
fi

CONTAINER_NAME=$1

docker stop ${CONTAINER_NAME}
docker rm ${CONTAINER_NAME}

