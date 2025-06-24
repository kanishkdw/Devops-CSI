#!/bin/bash

# Variables
KEYVAULT_NAME="devopsKeyVault123"
RESOURCE_GROUP="devopsResourceGroup"
LOCATION="eastus"

# Create a resource group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create a Key Vault
az keyvault create --name $KEYVAULT_NAME --resource-group $RESOURCE_GROUP --location $LOCATION

# Add a secret to the Key Vault
az keyvault secret set --vault-name $KEYVAULT_NAME --name "mySecretKey" --value "SuperSecret123"

# Retrieve the secret
az keyvault secret show --vault-name $KEYVAULT_NAME --name "mySecretKey"

