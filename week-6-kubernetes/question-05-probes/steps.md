# Steps to Configure Liveness and Readiness Probes in AKS

1. Define a deployment YAML with `livenessProbe` and `readinessProbe`.
2. Deploy the manifest to the AKS cluster using `kubectl apply`.
3. Use `kubectl describe pod <pod>` to verify probe configuration.
4. Simulate failure and observe behavior:
   - Readiness failure will remove pod from service.
   - Liveness failure will restart the pod.

5. Clean up resources after testing.
