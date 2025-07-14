# Create a taint on a node
kubectl taint nodes <node-name> key=value:NoSchedule

# Check taints on the node
kubectl describe node <node-name> | grep Taint

# Create a pod with toleration
kubectl apply -f tolerant-pod.yaml

# Verify the pod is scheduled to the tainted node
kubectl get pods -o wide
