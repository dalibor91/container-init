#!/bin/bash

cd ..

echo "Build image 'dumb-init'"
docker build -t dumb-init .
echo "Run container 'dumb-init'"
docker run -d --name dumb-init dumb-init

echo "Show processlist - should be apache there listed"
docker exec -it dumb-init ps aux
