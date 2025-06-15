# Assignment 2 – Question 3: Azure Container Registry and Container Deployment

## Objective

Create an Azure Container Registry (ACR), push a Docker image to it, and deploy a container from that image using Azure CLI and Docker in Ubuntu WSL.

---

## Steps Performed

1. Created a resource group
2. Registered necessary resource providers
3. Created Azure Container Registry (ACR)
4. Pulled and tagged the `hello-world` Docker image
5. Logged into ACR via Docker and pushed the image
6. Created a container instance from ACR image using Azure CLI
7. Verified deployment and logs

---

## Run Instructions

```bash
chmod +x setup-acr-container.sh
./setup-acr-container.sh

