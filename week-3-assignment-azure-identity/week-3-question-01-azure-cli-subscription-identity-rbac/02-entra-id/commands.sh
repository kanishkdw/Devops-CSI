#!/bin/bash

# Get current Azure Entra (tenant) ID
az account show --query tenantId --output tsv > tenant-info.txt
