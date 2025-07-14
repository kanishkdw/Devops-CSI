# Liveness and Readiness Probes in Kubernetes (AKS)

## Liveness Probe
- Checks if the app is alive.
- If it fails, the container is restarted.
- Useful for recovering from deadlocks.

## Readiness Probe
- Checks if the app is ready to serve traffic.
- If it fails, pod is removed from service endpoints (not restarted).

## Common Probe Types
- HTTP
- TCP Socket
- Exec command

AKS supports all standard Kubernetes probe configurations.
