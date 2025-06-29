# Install Docker (for Ubuntu)
sudo apt update
sudo apt install docker.io -y

# Enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Check Docker version
docker --version

# Run hello-world container
docker run hello-world

# List Docker images
docker images

# List running containers
docker ps

# List all containers (even stopped)
docker ps -a

# Remove a container (replace <container_id>)
docker rm <container_id>

# Remove an image (replace <image_id>)
docker rmi <image_id>
