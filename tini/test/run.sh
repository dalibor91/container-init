#!/bin/bash

cd ..

echo "Build image 'tini'"
docker build -t tini .
echo "Run container 'tini'"
docker run -d --name tini tini

echo "Show processlist - should be apache there listed"
docker exec -it tini ps aux
