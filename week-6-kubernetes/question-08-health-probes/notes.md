# Notes – Configuring Health Probes in AKS

## Liveness & Readiness Probes
Health probes are crucial in Kubernetes to automatically detect unhealthy pods and take recovery actions.

### Liveness Probe
Checks if the application is alive (running). If it fails, Kubernetes restarts the container.

### Readiness Probe
Checks if the application is ready to serve traffic. If it fails, the pod is removed from service endpoints.

---

## Key Probe Types
- `httpGet`: Performs an HTTP GET request.
- `tcpSocket`: Performs a TCP check.
- `exec`: Runs a command in the container.

---

## AKS Specifics
- Probes must be defined in deployment YAML under the container spec.
- Azure AKS handles restarting or ignoring pods based on these probe values.

---

### Useful Commands
```bash
kubectl get pods
kubectl describe pod <pod-name>
kubectl apply -f health-probes.yaml
