#!/bin/bash

echo "Remove container 'dumb-init'"
docker rm -f dumb-init
echo "Remove image 'dumb-init'"
docker rmi -f dumb-init
