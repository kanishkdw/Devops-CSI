# Notes – Exposing Kubernetes Services

## ClusterIP
- Default service type
- Accessible only within the cluster

## NodePort
- Exposes service on a port across all cluster nodes
- Accessible via <NodeIP>:<NodePort>

## LoadBalancer
- Exposes service externally using cloud provider’s load balancer
- Works only on cloud (e.g., AKS, GKE, EKS)

---

## Verification
- `kubectl get svc` shows all services with their types and exposed ports.
