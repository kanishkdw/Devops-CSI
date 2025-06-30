#!/bin/bash

# Step 1: Create a volume
docker volume create my-data-volume

# Step 2: Run a container and mount the volume
docker run -d --name nginx-vol-container -v my-data-volume:/usr/share/nginx/html nginx

# Step 3: Inspect volume
docker volume inspect my-data-volume

# Step 4: Copy custom HTML file into the container volume
echo "<h1>Hello from Docker Volume!</h1>" > index.html
docker cp index.html nginx-vol-container:/usr/share/nginx/html/index.html

# Step 5: Test in browser (get container IP)
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' nginx-vol-container

# Clean up
# docker stop nginx-vol-container
# docker rm nginx-vol-container
# docker volume rm my-data-volume
