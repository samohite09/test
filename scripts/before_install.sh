#!/bin/bash

set -e

# Install Docker (if not already installed)
sudo yum install -y docker
sudo service docker start

# Authenticate Docker with ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 130891196576.dkr.ecr.us-east-1.amazonaws.com

# Pull the Docker image from ECR
docker pull 130891196576.dkr.ecr.us-east-1.amazonaws.com/nginx:latest
