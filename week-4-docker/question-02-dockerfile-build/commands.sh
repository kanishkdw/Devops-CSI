# Install Docker on Ubuntu
sudo apt update
sudo apt install docker.io -y

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Check Docker version
docker --version

# Pull a basic image
docker pull hello-world

# Run a container
docker run hello-world

# Create a Dockerfile (in the same directory)
nano Dockerfile

# Build Docker image from Dockerfile
docker build -t my-custom-image .

# Run a container from the custom image
docker run my-custom-image

