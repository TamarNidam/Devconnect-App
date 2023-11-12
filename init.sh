#!/bin/bash

# Build Docker image
docker build -t tamarnidam-webapp:1.0 .

#docker volume create db

# Create Docker container
docker run -d -p 8000:8000 -v db:/app tamarnidam-webapp:1.0

# Display container information
docker ps -a
