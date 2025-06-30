# DockerHub Login
docker login

# Tag local image for DockerHub
docker tag custom-nginx yourdockerhubusername/custom-nginx:latest

# Push to DockerHub
docker push yourdockerhubusername/custom-nginx:latest

# Pull from DockerHub
docker pull yourdockerhubusername/custom-nginx:latest

# Azure Login
az login

# Create Azure Resource Group
az group create --name DevopsRG --location eastus

# Create Azure Container Registry
az acr create --resource-group DevopsRG --name YourACRName --sku Basic

# Login to ACR
az acr login --name YourACRName

# Tag local image for ACR
docker tag custom-nginx YourACRName.azurecr.io/custom-nginx:v1

# Push to ACR
docker push YourACRName.azurecr.io/custom-nginx:v1

# Pull from ACR
docker pull YourACRName.azurecr.io/custom-nginx:v1
