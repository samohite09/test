#!/bin/bash

set -e

# Stop and remove the existing Docker container (if any)
docker stop nginx || true
docker rm nginx || true

# Run the Docker container
docker run -d --name nginx -p 80:80 130891196576.dkr.ecr.us-east-1.amazonaws.com/nginx:latest
