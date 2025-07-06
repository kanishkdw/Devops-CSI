
---

#### ⚙️ `commands.sh` (for bash commands)

```bash
#!/bin/bash

# Create deployment
kubectl create deployment nginx-deployment --image=nginx

# Expose using ClusterIP (default)
kubectl expose deployment nginx-deployment --port=80 --target-port=80 --name=nginx-clusterip

# Expose using NodePort
kubectl expose deployment nginx-deployment --type=NodePort --port=80 --target-port=80 --name=nginx-nodeport

# Expose using LoadBalancer
kubectl expose deployment nginx-deployment --type=LoadBalancer --port=80 --target-port=80 --name=nginx-lb

# List services
kubectl get services
