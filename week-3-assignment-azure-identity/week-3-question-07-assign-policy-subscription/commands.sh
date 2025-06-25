# Create Recovery Services Vault
az backup vault create --name DevopsVault --resource-group DevopsRG --location eastus

# Enable backup for VM
az backup protection enable-for-vm \
  --vault-name DevopsVault \
  --resource-group DevopsRG \
  --vm DevopsVM \
  --policy-name DefaultPolicy

# Alert creation (outline; generally done via Portal)
az monitor metrics alert create \
  --name HighCPUAlert \
  --resource-group DevopsRG \
  --scopes "/subscriptions/<sub-id>/resourceGroups/DevopsRG/providers/Microsoft.Compute/virtualMachines/DevopsVM" \
  --condition "avg Percentage CPU > 80" \
  --window-size 5m --evaluation-frequency 1m \
  --action "/subscriptions/<sub-id>/resourceGroups/DevopsRG/providers/microsoft.insights/actionGroups/MyEmailGroup"
