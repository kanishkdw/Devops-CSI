# Week 6 - Question 4: Managing Kubernetes with Azure Kubernetes Service (AKS)

## ✅ Steps to Create and Manage AKS Cluster via Azure Portal

1. Go to [Azure Portal](https://portal.azure.com)
2. Navigate to "Kubernetes services" → Click "+ Add"
3. Select:
   - Resource Group
   - AKS Cluster Name
   - Region
   - Node Size (Standard_B2s)
   - Node Count (e.g., 1 or 2)
4. Configure authentication (enable local accounts or integrate with Entra ID)
5. Enable monitoring (Azure Monitor + Log Analytics)
6. Click **Review + Create** → **Create**

---

## ✅ Connect to the AKS Cluster

```bash
az aks get-credentials --resource-group <resource-group-name> --name <aks-cluster-name>
