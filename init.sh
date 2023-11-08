#!/bin/bash

# Build Docker image
docker build -t tamarnidam-webapp:latest .

docker volume create db

# Create Docker container
#docker run -it -p 8000:8000 django-webapp
docker run -d -p 8000:8000 -v db:/app tamarnidam-webapp:latest

# Display container information
docker ps -a
