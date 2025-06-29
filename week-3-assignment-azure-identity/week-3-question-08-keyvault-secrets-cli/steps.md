# Week 3 - Question 08: Azure Key Vault - Secrets Management

## Goal
- Create an Azure Key Vault
- Store a secret (e.g., DB password)
- Set Access Policy for current user or app
- Retrieve the secret using Azure CLI

---

## Step-by-Step Instructions

### Step 1: Create Key Vault
```bash
az keyvault create --name DevopsKeyVault --resource-group DevopsRG --location eastus
