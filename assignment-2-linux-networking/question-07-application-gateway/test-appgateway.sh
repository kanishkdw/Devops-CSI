#!/bin/bash

# Get Public IP of Application Gateway
APPGW_IP=$(az network public-ip show \
  --resource-group myResourceGroup \
  --name appGatewayPublicIP \
  --query "ipAddress" -o tsv)

echo "Application Gateway Public IP: $APPGW_IP"

# Test HTTP response
echo "Testing Application Gateway..."
curl -I http://$APPGW_IP
