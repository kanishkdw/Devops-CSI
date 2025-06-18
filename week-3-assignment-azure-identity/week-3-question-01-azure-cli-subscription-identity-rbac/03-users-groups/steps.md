## Step: Create Test User in Entra ID using Azure CLI

### Command Used:
```bash
az ad user create \
  --display-name "Test User" \
  --password 'StrongP@ssw0rd!' \
  --user-principal-name testuser1@mujmanipal.onmicrosoft.com
