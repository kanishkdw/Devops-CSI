# Deploy the pod with probes
kubectl apply -f probe-demo.yaml

# View pod status
kubectl get pods

# Describe the pod to verify probe config
kubectl describe pod <pod-name>

# Clean up
kubectl delete -f probe-demo.yaml

