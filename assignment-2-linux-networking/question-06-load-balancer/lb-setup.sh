#!/bin/bash

az network vnet create --resource-group myResourceGroup --name lbVnet --address-prefix 10.10.0.0/16 --subnet-name lbSubnet --subnet-prefix 10.10.1.0/24
az network nsg create --resource-group myResourceGroup --name lbNSG
az network nsg rule create --resource-group myResourceGroup --nsg-name lbNSG --name AllowHTTP --protocol Tcp --direction Inbound --priority 1000 --source-address-prefixes '*' --source-port-ranges '*' --destination-address-prefixes '*' --destination-port-ranges 80 --access Allow
# ... continue full script here ...
