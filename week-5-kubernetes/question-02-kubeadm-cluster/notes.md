
---

### ✅ `notes.md`
```md
# Notes – Kubernetes with Kubeadm

- Kubeadm is used for bootstrapping Kubernetes clusters.
- More realistic and production-like than Minikube.
- Requires manual VM provisioning and network setup.
- Supports HA clusters with multiple control planes.
- You can install container runtime like containerd or Docker.

Basic Troubleshooting:
- Use `kubeadm reset` to clean broken setup
- Check `kubelet` status if node is not ready
