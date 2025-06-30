#!/bin/bash

# Step 1: Create folders and files
mkdir -p html app
echo "<h1>Hello from Nginx container!</h1>" > html/index.html
echo "console.log('Hello from Node app');" > app/index.js

# Step 2: Run Docker Compose
docker-compose up -d

# Step 3: View running services
docker-compose ps

# Step 4: Stop and remove containers
# docker-compose down
