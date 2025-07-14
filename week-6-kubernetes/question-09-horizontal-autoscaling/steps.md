## Steps to Configure Horizontal Scaling in AKS

1. **Create Deployment**
   - Created an `nginx-deployment` with resource limits and requests.

2. **Apply Deployment**
   ```bash
   kubectl apply -f deployment.yaml




Create Horizontal Pod Autoscaler- 
kubectl autoscale deployment nginx-deployment --cpu-percent=50 --min=1 --max=5


Verify HPA
kubectl get hpa

Generate Load

Created a load-generator pod with BusyBox and ran a looped wget to stress the service.

Observe Scaling

Use kubectl get hpa and kubectl get pods to monitor pod count increase.
