#!/bin/bash

# Build image using Dockerfile
docker build -t dockerfile-nginx .

# Run the container
docker run -d --name nginx-container nginx

# Modify container (example: install curl)
docker exec -it nginx-container apt update
docker exec -it nginx-container apt install curl -y

# Commit the container as a new image
docker commit nginx-container custom-nginx

# Run the custom image
docker run -d --name custom-nginx-container custom-nginx

# Push to Docker Hub (if logged in)
# docker tag custom-nginx yourusername/custom-nginx
# docker push yourusername/custom-nginx
