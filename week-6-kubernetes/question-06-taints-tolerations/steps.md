# Week 6 - Q6: Taints and Tolerations in Kubernetes

## Step-by-Step

1. **Taint a node**  
   Use `kubectl taint` to prevent unscheduled pods from deploying.

2. **Verify taint**  
   Confirm with `kubectl describe node`.

3. **Create a pod with tolerations**  
   This pod will be allowed on the tainted node.

4. **Deploy and verify**  
   Run the pod using `kubectl apply` and check where it gets scheduled.

--
