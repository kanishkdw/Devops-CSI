# Steps – Configuring Health Probes in AKS

1. Created a folder `question-08-health-probes` under `week-6-kubernetes`.
2. Wrote YAML to define a pod with `liveness` and `readiness` probes using `httpGet`.
3. Applied the pod configuration:
   ```bash
   kubectl apply -f health-probes.yaml
