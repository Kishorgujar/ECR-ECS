#!/bin/bash
set -e

# Stop the running container (If Any)
containerID=$(docker ps | awk '{print $1}')
docker rm -f $containerID
