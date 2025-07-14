
---

### ✅ 3. `notes.md`

```md
# Notes – Kubernetes Service Types

## 1. ClusterIP (Default)
- Internal service, not accessible outside the cluster.
- Use when communication is only needed between internal services.

✅ **Use Case:** Microservices backend communication.

---

## 2. NodePort
- Exposes the service on a static port (30000–32767) on each Node IP.
- Allows access from outside the cluster using `<NodeIP>:<NodePort>`.

✅ **Use Case:** Quick local testing, browser access in Minikube.

---

## 3. LoadBalancer
- Provisions an external IP and routes traffic to the service.
- Requires a cloud provider or `minikube tunnel` to work locally.

✅ **Use Case:** Publicly accessible web applications.

---

## Best Practices:
- Use **ClusterIP** for internal communication.
- Use **LoadBalancer** for production deployments.
- **Avoid exposing sensitive apps** using NodePort directly.
