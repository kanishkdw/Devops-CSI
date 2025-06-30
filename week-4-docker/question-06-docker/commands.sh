#!/bin/bash
# Create a custom bridge network
docker network create --driver bridge custom-bridge

# Run two containers on this custom network
docker run -dit --name container1 --network custom-bridge nginx
docker run -dit --name container2 --network custom-bridge alpine sh

# Test connectivity between containers
docker exec -it container2 ping -c 4 container1
