#!/bin/bash

if [ $# -eq 2 ]; then
  CONTAINER_NAME=$1
  PORT=$2
else
  CONTAINER_NAME="web-playground"
  PORT=8000
fi

echo "CONTAINER_NAME=${CONTAINER_NAME}" 1>&2
echo "PORT=${PORT}" 1>&2

$(cd $(dirname $0) && pwd)/stop.sh ${CONTAINER_NAME}
$(cd $(dirname $0) && pwd)/start.sh ${CONTAINER_NAME} ${PORT}
