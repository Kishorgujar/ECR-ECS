#!/bin/bash
set -e

# Pull the Docker Image from ECR/Docker
docker pull 796973514691.dkr.ecr.ap-south-1.amazonaws.com/mydemo

# Run Container 
docker run -d -p 5000:5000 796973514691.dkr.ecr.ap-south-1.amazonaws.com/mydemo
