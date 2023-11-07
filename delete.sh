#!/bin/bash

# Stop and remove the container
docker stop $(docker ps -aqf "name=django-webapp")
docker rm $(docker ps -aqf "name=django-webapp")

# Remove the image
docker rmi django-webapp

# Display remaining containers and images
docker ps -a
docker images
