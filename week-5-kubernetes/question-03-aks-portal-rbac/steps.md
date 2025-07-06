# Week 5 - Question 3: Deploy AKS Cluster using Azure Portal and Setup RBAC

## Step-by-Step Instructions:

### 🎯 Part A: Deploy AKS from Azure Portal
1. Go to [Azure Portal](https://portal.azure.com).
2. Search for **"Kubernetes services"** → Click **"Create"**.
3. Fill in the basics:
   - Subscription: (Select your subscription)
   - Resource Group: `DevopsRG`
   - Cluster name: `devops-aks-cluster`
   - Region: `East US`
   - Kubernetes version: (default or latest)
   - Node size: Standard_B2s (or as needed)
   - Node count: 1 (for demo/testing)

4. Click **Next** through all tabs, then **Review + Create** and launch the cluster.

---

### 📈 Part B: Access AKS Dashboard
1. Open **Cloud Shell** or use your local terminal (with `az`, `kubectl` installed).
2. Run:
   ```bash
   az aks get-credentials --resource-group DevopsRG --name devops-aks-cluster
   kubectl proxy
