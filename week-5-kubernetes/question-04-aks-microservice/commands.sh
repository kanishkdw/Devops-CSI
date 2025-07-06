## 📄 2. `commands.sh`
```bash
# Connect to AKS
az aks get-credentials --resource-group DevopsRG --name devops-aks-cluster

# Apply Deployment and Service
kubectl apply -f nodeapp-deployment.yaml
kubectl apply -f nodeapp-service.yaml

# Get External IP
kubectl get svc nodeapp-service
