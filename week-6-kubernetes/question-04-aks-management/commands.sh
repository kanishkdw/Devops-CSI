
---

### 📄 `commands.sh`

```bash
# Get AKS credentials
az aks get-credentials --resource-group DevopsRG --name DevopsAKS

# Verify connection
kubectl get nodes

# Scale AKS Cluster to 3 nodes
az aks scale --resource-group DevopsRG --name DevopsAKS --node-count 3

# Upgrade AKS Cluster (replace version as per availability)
az aks upgrade --resource-group DevopsRG --name DevopsAKS --kubernetes-version 1.28.3

# Delete AKS Cluster
az aks delete --resource-group DevopsRG --name DevopsAKS --yes --no-wait
