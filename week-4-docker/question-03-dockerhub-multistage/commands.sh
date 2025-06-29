#!/bin/bash

# Build multi-stage Docker image
docker build -t kanishkdw/multistage-demo .

# Login to DockerHub
docker login

# Push image to DockerHub
docker push kanishkdw/multistage-demo

# Run container
docker run -d -p 80:80 kanishkdw/multistage-demo
