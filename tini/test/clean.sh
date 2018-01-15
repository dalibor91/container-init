#!/bin/bash

echo "Remove container 'tini'"
docker rm -f tini
echo "Remove image 'tini'"
docker rmi -f tini
