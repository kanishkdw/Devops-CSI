#!/bin/bash

# Set variables
RESOURCE_GROUP="myResourceGroup"
LOCATION="eastus"
APPGW_NAME="myAppGateway"
VNET_NAME="appGatewayVNet"
SUBNET_NAME="appGatewaySubnet"
PUBLIC_IP_NAME="appGatewayPublicIP"

# Create Public IP
az network public-ip create \
  --resource-group $RESOURCE_GROUP \
  --name $PUBLIC_IP_NAME \
  --sku Standard \
  --allocation-method Static

# Create VNet and Subnet
az network vnet create \
  --resource-group $RESOURCE_GROUP \
  --name $VNET_NAME \
  --address-prefix 10.7.0.0/16 \
  --subnet-name $SUBNET_NAME \
  --subnet-prefix 10.7.1.0/24

# Create Application Gateway
az network application-gateway create \
  --name $APPGW_NAME \
  --location $LOCATION \
  --resource-group $RESOURCE_GROUP \
  --capacity 2 \
  --sku Standard_v2 \
  --frontend-port 80 \
  --http-settings-cookie-based-affinity Disabled \
  --http-settings-port 80 \
  --http-settings-protocol Http \
  --public-ip-address $PUBLIC_IP_NAME \
  --vnet-name $VNET_NAME \
  --subnet $SUBNET_NAME \
  --priority 100
