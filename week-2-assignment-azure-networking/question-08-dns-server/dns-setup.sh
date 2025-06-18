#!/bin/bash

# Set DNS name for public IP (replace 'kanishkwebvm' if needed)
az network public-ip update \
  --resource-group myResourceGroup \
  --name WebVMPublicIP \
  --dns-name kanishkwebvm
