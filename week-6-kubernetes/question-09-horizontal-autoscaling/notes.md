# Horizontal Pod Autoscaling (HPA) in AKS

- Automatically adjusts the number of pods in a deployment based on CPU usage.
- Requires metrics-server to be enabled.
- Ensures better resource utilization and cost-efficiency.

## Key Concepts:
- `kubectl autoscale` creates the HorizontalPodAutoscaler.
- `min`, `max`, and `target CPU %` define the scaling behavior.
- Use `kubectl get hpa` to monitor current scaling state.

Tested by generating continuous load using a busybox pod.
