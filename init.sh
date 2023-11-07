#!/bin/bash

# Build Docker image
docker build -t django-webapp .

docker volume create db

# Create Docker container
#docker run -it -p 8000:8000 django-webapp
docker run -d -p 8000:8000 -v db:/app django-webapp

# Display container information
docker ps -a
