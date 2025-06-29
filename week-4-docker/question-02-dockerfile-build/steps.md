## Steps to Install Docker and Build an Image

1. **Install Docker**  
   - Update apt and install Docker using:
     ```bash
     sudo apt update
     sudo apt install docker.io -y
     ```

2. **Verify Docker Installation**  
   - Check Docker version:
     ```bash
     docker --version
     ```

3. **Run Test Container**  
   - Run hello-world container to verify setup:
     ```bash
     docker run hello-world
     ```

4. **Create a Dockerfile**  
   - Define a simple Dockerfile that uses Ubuntu and installs curl.

5. **Build Docker Image**  
   ```bash
   docker build -t my-custom-image .
