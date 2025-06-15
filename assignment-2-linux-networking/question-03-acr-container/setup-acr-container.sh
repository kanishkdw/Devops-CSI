#!/bin/bash

# Set variables
RESOURCE_GROUP="myResourceGroup"
ACR_NAME="myregistrykanishk"
IMAGE_NAME="hello-world"
TAG="v1"
CONTAINER_NAME="helloacrc"
DNS_LABEL="helloacrcdemo"
LOCATION="eastus"

# Create resource group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Register resource providers
az provider register --namespace Microsoft.ContainerRegistry
az provider register --namespace Microsoft.ContainerInstance

# Create ACR
az acr create --resource-group $RESOURCE_GROUP --name $ACR_NAME --sku Basic --admin-enabled true

# Login to ACR via Docker
az acr login --name $ACR_NAME
docker pull $IMAGE_NAME
docker tag $IMAGE_NAME $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG

# Push image to ACR
docker login $ACR_NAME.azurecr.io -u $ACR_NAME -p $(az acr credential show --name $ACR_NAME --query "passwords[0].value" -o tsv)
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG

# Create container from ACR image
az container create \
  --resource-group $RESOURCE_GROUP \
  --name $CONTAINER_NAME \
  --image $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG \
  --cpu 1 --memory 1 \
  --os-type Linux \
  --registry-login-server $ACR_NAME.azurecr.io \
  --registry-username $ACR_NAME \
  --registry-password $(az acr credential show --name $ACR_NAME --query "passwords[0].value" -o tsv) \
  --dns-name-label $DNS_LABEL \
  --ports 80
