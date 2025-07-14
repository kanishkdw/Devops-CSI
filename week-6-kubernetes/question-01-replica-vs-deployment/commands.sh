
---

### 📄 **File: `commands.sh`**
```bash
#!/bin/bash

# Apply YAML files
kubectl apply -f replicationcontroller.yaml
kubectl apply -f replicaset.yaml
kubectl apply -f deployment.yaml

# Get resource status
kubectl get pods
kubectl get rs
kubectl get rc
kubectl get deployments

# Cleanup
kubectl delete -f replicationcontroller.yaml
kubectl delete -f replicaset.yaml
kubectl delete -f deployment.yaml
