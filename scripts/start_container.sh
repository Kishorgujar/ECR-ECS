#!/bin/bash

# Set variables
REGION="ap-south-1"
ACCOUNT_ID="796973514691"
REPOSITORY_NAME="mydemo"
CONTAINER_NAME="mycontainer"

# Authenticate to ECR using the AWS CLI with non-interactive login
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com

# Pull the Docker image from ECR (using the "latest" tag)
docker pull $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPOSITORY_NAME:latest

# Remove any existing container with the same name, and suppress errors if it doesn't exist
docker rm -f $CONTAINER_NAME || true

# Run the Docker container (optional, customize as needed)
docker run -d --name $CONTAINER_NAME $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$REPOSITORY_NAME:latest
