# Base image
FROM ubuntu:20.04

# Set non-interactive frontend
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt update && apt install -y curl

# Set working directory
WORKDIR /app

# Add default command
CMD ["echo", "Hello from my custom Docker image!"]
