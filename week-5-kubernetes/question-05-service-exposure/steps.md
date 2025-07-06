# Week 5 – Question 05: Expose Services in Kubernetes

## Objective
Expose services using:
- NodePort
- ClusterIP
- LoadBalancer

---

## Steps

### 1. Create Deployment
```bash
kubectl create deployment nginx-deployment --image=nginx
