#!/bin/bash

# Example CLI commands – not executed practically

# Create Recovery Services Vault
# az backup vault create --resource-group DevopsRG --name DevopsVault --location EastUS

# Set backup policy
# az backup policy set --vault-name DevopsVault --name DailyPolicy --schedule "03:00"

# Enable backup for VM
# az backup protection enable-for-vm --vault-name DevopsVault --resource-group DevopsRG --vm DevopsVM --policy-name DailyPolicy

# Alert Rule creation (example)
# az monitor metrics alert create --name "HighCPUAlert" --resource-group DevopsRG --scopes /subscriptions/<sub_id>/resourceGroups/DevopsRG/providers/Microsoft.Compute/virtualMachines/DevopsVM --condition "avg Percentage CPU > 80" --window-size 5m --evaluation-frequency 1m --action /subscriptions/<sub_id>/resourceGroups/DevopsRG/providers/microsoft.insights/actionGroups/emailGroup
